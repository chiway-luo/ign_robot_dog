#install(DIRECTORY config params launch DESTINATION share/${PROJECT_NAME}) #cmake配置
#<exec_depend>ros2launch</exec_depend> <!--package.xml配置-->
#from glob import glob #用于setup.py配置多个launch文件
#('share/' + package_name + '/launch', glob('launch/*launch.py')),
#('share/' + package_name + '/launch', glob('launch/*launch.xml')),
#('share/' + package_name + '/launch', glob('launch/*launch.yaml')),
#(os.path.join('share', package_name, 'launch'), glob('launch/*.launch.py')),

from launch import LaunchDescription
from launch_ros.actions import Node
import os
# 封装终端指令相关类--------------
# from launch.actions import ExecuteProcess
# from launch.substitutions import FindExecutable   #FindExecutable(name="ros2")
# 参数声明与获取-----------------
from launch.actions import DeclareLaunchArgument
from launch.substitutions import LaunchConfiguration
# from launch.conditions import IfCondition #判断是否执行
# from launch.conditions import UnlessCondition #取反
# from launch.substitutions import PythonExpression #运行时计算表达式
# 文件包含相关-------------------
from launch.actions import IncludeLaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
# 分组相关----------------------
# from launch_ros.actions import PushRosNamespace
# from launch.actions import GroupAction
# 事件相关----------------------
from launch.event_handlers import OnProcessExit
from launch.actions import RegisterEventHandler
# 获取功能包下share目录路径-------
from ament_index_python.packages import get_package_share_directory
# urdf文件处理相关--------------
# from launch_ros.parameter_descriptions import ParameterValue
# from launch.substitutions import Command
from launch.actions import TimerAction
from launch.actions import ExecuteProcess
from launch.actions import SetEnvironmentVariable
"""
    在gazebo中加载自定义的仿真环境和d1_dog模型，并启动ros2与gazebo的桥接，
    同时启动rviz2进行可视化，以及启动champ控制器进行机器狗的运动控制。
    启动导航功能(包含cartographer)
"""
def generate_launch_description():
    ld = LaunchDescription()

    # 启动顺序相关：通过延时/等待，避免 Gazebo/ros2_control 尚未就绪导致的偶发异常
    ld.add_action(DeclareLaunchArgument('spawn_entity_delay', default_value='2.0'))
    ld.add_action(DeclareLaunchArgument('controllers_delay', default_value='4.0'))
    ld.add_action(DeclareLaunchArgument('champ_delay', default_value='1.0'))
    ld.add_action(DeclareLaunchArgument('controller_manager_timeout', default_value='60.0'))
    spawn_entity_delay = LaunchConfiguration('spawn_entity_delay')
    controllers_delay = LaunchConfiguration('controllers_delay')
    champ_delay = LaunchConfiguration('champ_delay')
    controller_manager_timeout = LaunchConfiguration('controller_manager_timeout')

    #获取ros_gz_sim功能包路径
    ros_gz_sim_path = get_package_share_directory('ros_gz_sim')
    #获取当前功能包路径 
    this_package_path = get_package_share_directory('sim_ign_dog')

    ign_models_path = 'ign_models'
    ld.add_action(SetEnvironmentVariable('IGN_GAZEBO_RESOURCE_PATH', ign_models_path))

    """
    编辑.bashrc文件,添加环境变量 (在当前launch文件中已经设置了环境变量,无需当前操作)
        #ign模型路径
        export IGN_GAZEBO_RESOURCE_PATH=ign_models  #相对路径
        #export IGN_GAZEBO_RESOURCE_PATH=~/ign_models #绝对路径
    """
    gazebo_visualize_node = IncludeLaunchDescription(
        launch_description_source=PythonLaunchDescriptionSource(
            os.path.join(
                ros_gz_sim_path,
                'launch',
                'gz_sim.launch.py'
            )
        ),
        launch_arguments={# -v 是指日志等级 4 是最高等级的日志 -r 是指自动运行仿真
            # 'gz_args': f"-v 4 -r {os.path.join(demo_gazebo_sim_path,'world','house.sdf')}" #原始墙壁模型
            'gz_args': f"-r {os.path.join(this_package_path,'world','house_add.sdf')}" #添加家具的房子模型, -r 表示自动运行
            # 'gz_args': f"-v 4 -r {os.path.join(get_package_share_directory('demo_gazebo_sim'),'world','visualize_lidar.sdf')}"
        }.items()
    )
    ld.add_action(gazebo_visualize_node)

    #加载模型的launch文件
    dog_description_node = IncludeLaunchDescription(
        launch_description_source=PythonLaunchDescriptionSource(
            os.path.join(
                get_package_share_directory('edu_description'),
                'launch',
                'sim_display_launch.py'
            )
        )
    )
    ld.add_action(dog_description_node)

    #调用ros_gz_sim
    ros_gz_sim_node = Node(
        package='ros_gz_sim',
        executable='create',
        arguments=[
            '-name', 'd1_dog',
            '-topic', '/robot_description',
            '-x', '-4',
            # '-y', '0.0',
            '-z', '0.4', #防止生成模型时与地面嵌合
        ],
        output='screen'
    )
    ld.add_action(TimerAction(period=spawn_entity_delay, actions=[ros_gz_sim_node]))

    #建立仿真环境与ros2的桥接 
    #转换: 传感器与时钟（Gazebo -> ROS）。如需把 ROS 的 /cmd_vel 发到 Gazebo，请使用 ROS->GZ 方向。
    # ign_gazebo 使用的话题
    ros_bridge_node = Node(
        package='ros_gz_bridge',
        executable='parameter_bridge',
        arguments=[
            '/cmd_vel@geometry_msgs/msg/Twist]gz.msgs.Twist',#速度 ROS->GZ（如 Gazebo 侧有订阅）
            '/clock@rosgraph_msgs/msg/Clock[gz.msgs.Clock', #时钟 GZ->ROS (Gazebo世界时钟)
            '/model/d1_dog/odometry@nav_msgs/msg/Odometry[gz.msgs.Odometry', #里程计 GZ->ROS
            # '/model/d1_dog/pose@geometry_msgs/msg/TFMessage[gz.msgs.Pose_V', #位姿 GZ->ROS

            '/scan@sensor_msgs/msg/LaserScan[gz.msgs.LaserScan', #单线激光雷达 
            '/scan/points@sensor_msgs/msg/PointCloud2[gz.msgs.PointCloudPacked', #多线激光雷达 
            '/depth_camera@sensor_msgs/msg/Image[gz.msgs.Image', #深度相机图像
            '/depth_camera/points@sensor_msgs/msg/PointCloud2[gz.msgs.PointCloudPacked', #深度相机点云数据
            '/image_raw@sensor_msgs/msg/Image[gz.msgs.Image', #图像参数
            '/camera_info@sensor_msgs/msg/CameraInfo[gz.msgs.CameraInfo',#相机参数
        ],
        # parameters=[{"qos_overrides./model/d1_dog.subscriber.reliability": "reliable"}],
        remappings=[
            ('/model/d1_dog/odometry', '/odom/ign'),
            # ('/world/empty/clock', '/clock'),  # 重映射Gazebo时钟到ROS标准时钟话题
            # ('/model/d1_dog/pose', '/tf'),
        ]
    )
    ld.add_action(ros_bridge_node)

    #启动rviz2
    rviz2_node = Node(
        package='rviz2',
        executable='rviz2',
        arguments=['-d', os.path.join(this_package_path,'rviz','d1_nav2.rviz')],
        output='screen'
    )
    ld.add_action(rviz2_node)

    #因为 depth_camera/points 坐标系没发生改变 d1_dog/base_link/depth_camera 发布static 坐标系变换与 camera
    static_laser_tf = Node(
        package='tf2_ros',
        executable='static_transform_publisher',
        name='static_laser_tf',
        arguments=[
            '--frame-id', 'front_camera',
            '--child-frame-id', 'd1_dog/base_link/depth_camera',
            '--x', '0.0',
            '--y', '0.0',
            '--z', '0.0',
            '--roll', '0.0',
            '--pitch', '0.0',
            '--yaw', '0.0'
        ]
    )
    ld.add_action(static_laser_tf)

    #附加内容
    # If你的 controller_manager 实际在模型命名空间下（例如 /model/go2/controller_manager），启动时把这个参数改掉
    # ld.add_action(DeclareLaunchArgument('controller_manager', default_value='/controller_manager'))
    ld.add_action(DeclareLaunchArgument('controller_manager', default_value='/controller_manager'))
    controller_manager = LaunchConfiguration('controller_manager')
    # 控制器生成器：等待 controller_manager 服务可用，且按顺序启动（先 joint_state_broadcaster 再 legs_controller）
    jsb_spawner = Node(
        package='controller_manager',
        executable='spawner',
        name='jsb_spawner',
        arguments=[
            'joint_state_broadcaster',
            '--controller-manager', controller_manager,
            '--controller-manager-timeout', controller_manager_timeout,
        ],
        output='screen',
    )

    legs_spawner = Node(
        package='controller_manager',
        executable='spawner',
        name='legs_spawner',
        arguments=[
            'legs_controller',
            '--controller-manager', controller_manager,
            '--controller-manager-timeout', controller_manager_timeout,
        ],
        output='screen',
    )
    
    ld.add_action(
        RegisterEventHandler(
            OnProcessExit(
                target_action=jsb_spawner,
                on_exit=[legs_spawner],
            )
        )
    )
    
    ld.add_action(TimerAction(period=controllers_delay, actions=[jsb_spawner]))

    #启动cham
    config_pkg_share = os.path.join(get_package_share_directory('edu_config'))
    descr_pkg_share = os.path.join(get_package_share_directory('edu_description'))
    
    cham_bringup_launch = IncludeLaunchDescription(
        launch_description_source=PythonLaunchDescriptionSource(
            os.path.join(
                get_package_share_directory('champ_bringup'),
                'launch',
                'bringup.launch.py'
            )
        ),
        launch_arguments={
            # "description_path": default_model_path,
            # "joints_map_path": joints_config,
            # "links_map_path": links_config,
            # "gait_config_path": gait_config,
            # "use_sim_time": LaunchConfiguration("use_sim_time"),
            # "robot_name": LaunchConfiguration("robot_name"),
            # "gazebo": "true",
            # "lite": LaunchConfiguration("lite"),
            # "rviz": LaunchConfiguration("rviz"),
            # "joint_controller_topic": "joint_group_effort_controller/joint_trajectory",
            # "hardware_connected": "false",
            # "publish_foot_contacts": "false",
            # "close_loop_odom": "true",
            'use_sim_time': 'true',
            'description_path': os.path.join(descr_pkg_share,'urdf','edu.urdf'),
            'rviz': 'false',#仿真环境已经启动rviz了
            'gazebo': 'true',#在gazebo中运行
            'base_link_frame': 'base_link',#d1_dog模型为base_link
            'publish_odom_tf': 'false',#不发布odom到base的tf,由ekf负责
            'publish_foot_contacts': 'false',#仿真未提供 foot_contacts
            'use_foot_contacts': 'false',#仿真未提供 foot_contacts 时禁用
            'use_base_to_footprint_ekf': 'false',#禁用 base_to_footprint EKF
            'use_footprint_to_odom_ekf': 'true',#启用 footprint_to_odom EKF
            'joint_controller_topic': 'legs_controller/joint_trajectory',#关节控制话题 默认joint_group_effort_controller/joint_trajectory
            'gait_config_path': os.path.join(config_pkg_share,'config','gait','gait.yaml'),
            'joints_map_path': os.path.join(config_pkg_share,'config','joints','joints.yaml'),
            'links_map_path': os.path.join(config_pkg_share,'config','links','links.yaml'),

            "lite": 'true', #使用精简模式
            "hardware_connected": 'false', #不连接真实硬件
            "close_loop_odom": 'true', #使用闭环里程计
        }.items()
    )
    # CHAMP 依赖 /joint_states、/tf、以及控制器 action 接口等；提前启动可能触发偶发 exit code -11。
    # 因此把 CHAMP 的启动放到 controllers 加载完成之后。
    ld.add_action(
        RegisterEventHandler(
            OnProcessExit(
                target_action=legs_spawner,
                on_exit=[TimerAction(period=champ_delay, actions=[cham_bringup_launch])],
            )
        )
    )

    #发布base_link 到d1_dog/base_footprint的静态变换
    static_base_footprint_tf = Node(
        package='tf2_ros',
        executable='static_transform_publisher',
        name='static_base_footprint_tf',
        arguments=[
            '--frame-id', 'd1_dog/base_footprint',
            '--child-frame-id', 'base_link',
            '--x', '0.0',
            '--y', '0.0',
            '--z', '0.25',
            '--roll', '0.0',
            '--pitch', '0.0',
            '--yaw', '0.0'
        ]
    )
    ld.add_action(static_base_footprint_tf)

    #d1_dog/odom odom    d1_dog/base_footprint base_footprint

    d1_odom_to_odom_tf = Node(
        package='tf2_ros',
        executable='static_transform_publisher',
        name='d1_odom_to_odom_tf',
        arguments=[
            '--frame-id', 'odom',
            '--child-frame-id', 'd1_dog/odom',
            '--x', '0.0',
            '--y', '0.0',
            '--z', '0.0',
            '--roll', '0.0',
            '--pitch', '0.0',
            '--yaw', '0.0'
        ]
    )
    ld.add_action(d1_odom_to_odom_tf)

    d1_base_footprint_to_base_link_tf = Node(
        package='tf2_ros',
        executable='static_transform_publisher',
        name='d1_base_footprint_to_base_link_tf',
        arguments=[
            '--frame-id', 'd1_dog/base_footprint',
            '--child-frame-id', 'base_footprint',
            '--x', '0.0',
            '--y', '0.0',
            '--z', '0.0',
            '--roll', '0.0',
            '--pitch', '0.0',
            '--yaw', '0.0'
        ]
    )
    # ld.add_action(d1_base_footprint_to_base_link_tf)

    #################

    # 导航实现
    nav2_launch = IncludeLaunchDescription(
        launch_description_source=PythonLaunchDescriptionSource(
            os.path.join(
                get_package_share_directory('sim_navigation2'),
                'launch',
                'nav2_bringup.launch.py'
            )
        )
    )
    ld.add_action(nav2_launch)

    return ld

