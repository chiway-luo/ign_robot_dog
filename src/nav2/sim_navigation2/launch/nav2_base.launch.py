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
# from launch.actions import IncludeLaunchDescription
# from launch.launch_description_sources import PythonLaunchDescriptionSource
# 分组相关----------------------
# from launch_ros.actions import PushRosNamespace
# from launch.actions import GroupAction
# 事件相关----------------------
# from launch.event_handlers import OnProcessStart, OnProcessExit
# from launch.actions import ExecuteProcess, RegisterEventHandler,LogInfo
# 获取功能包下share目录路径-------
from ament_index_python.packages import get_package_share_directory
# urdf文件处理相关--------------
# from launch_ros.parameter_descriptions import ParameterValue
# from launch.substitutions import Command
"""
    实现导航功能的基础launch文件,包含以下节点
    - amcl:定位节点
    - bt_navigator:行为树导航节点
    - behavior_server:行为树服务器节点
    - controller_server:控制器服务器节点
    - costmap_2d:代价地图节点
    - map_server:地图服务器节点
    - planner_server:规划器服务器节点
    # - recoveries_server:恢复服务器节点
    - smoother_server:路径平滑服务器节点
    - velocity_smmother:速度平滑节点

    - lifecycle_manager:生命周期管理节点
    

"""
def generate_launch_description():
    ld = LaunchDescription()
    #封装参数
    # ld.add_action(DeclareLaunchArgument('map', default_value=os.path.join(get_package_share_directory('sim_navigation2'), 'maps', 'map.yaml')))
    # amcl_yaml = os.path.join(get_package_share_directory('sim_navigation2'), 'params', 'amcl.yaml')
    bt_yaml = os.path.join(get_package_share_directory('sim_navigation2'), 'params', 'bt.yaml')
    bt_tree_pose_xml = os.path.join(get_package_share_directory('sim_navigation2'), 'bts', 'nav2_pose.xml')
    bt_tree_poses_xml = os.path.join(get_package_share_directory('sim_navigation2'), 'bts', 'nav2_poses.xml')
    control_server_yaml = os.path.join(get_package_share_directory('sim_navigation2'), 'params', 'control_server.yaml')
    global_costmap_yaml = os.path.join(get_package_share_directory('sim_navigation2'), 'params', 'global_costmap.yaml')
    local_costmap_yaml = os.path.join(get_package_share_directory('sim_navigation2'), 'params', 'local_costmap.yaml')
    map_server_yaml = os.path.join(get_package_share_directory('sim_navigation2'), 'params', 'map_server.yaml')
    planner_server_yaml = os.path.join(get_package_share_directory('sim_navigation2'), 'params', 'planner_server.yaml')
    smoother_server_yaml = os.path.join(get_package_share_directory('sim_navigation2'), 'params', 'smoother_server.yaml')
    velocity_smmother_yaml = os.path.join(get_package_share_directory('sim_navigation2'), 'params', 'velocity_smmother.yaml')
    behavior_server_yaml = os.path.join(get_package_share_directory('sim_navigation2'), 'params', 'behavior_server.yaml')
    waypoint_follower_yaml = os.path.join(get_package_share_directory('sim_navigation2'), 'params', 'waypoint_follower.yaml')


    ld.add_action(DeclareLaunchArgument('use_sim_time', default_value='true'))
    # ld.add_action(DeclareLaunchArgument('amcl_yaml', default_value=amcl_yaml))
    ld.add_action(DeclareLaunchArgument('bt_yaml', default_value=bt_yaml))
    ld.add_action(DeclareLaunchArgument('nav2_pose', default_value=bt_tree_pose_xml))
    ld.add_action(DeclareLaunchArgument('nav2_poses', default_value=bt_tree_poses_xml))
    ld.add_action(DeclareLaunchArgument('control_server_yaml', default_value=control_server_yaml))
    ld.add_action(DeclareLaunchArgument('global_costmap_yaml', default_value=global_costmap_yaml))
    ld.add_action(DeclareLaunchArgument('local_costmap_yaml', default_value=local_costmap_yaml))
    ld.add_action(DeclareLaunchArgument('map_server_yaml', default_value=map_server_yaml))
    ld.add_action(DeclareLaunchArgument('planner_server_yaml', default_value=planner_server_yaml))
    ld.add_action(DeclareLaunchArgument('smoother_server_yaml', default_value=smoother_server_yaml))
    ld.add_action(DeclareLaunchArgument('velocity_smmother_yaml', default_value=velocity_smmother_yaml))
    ld.add_action(DeclareLaunchArgument('behavior_server_yaml', default_value=behavior_server_yaml))
    ld.add_action(DeclareLaunchArgument('waypoint_follower_yaml', default_value=waypoint_follower_yaml))

    # 启动规划器节点
    planner_server_node = Node(
        package='nav2_planner',
        executable='planner_server',
        name='planner_server',
        parameters=[
            LaunchConfiguration('planner_server_yaml'),
            LaunchConfiguration('global_costmap_yaml'),
            {'use_sim_time': LaunchConfiguration('use_sim_time')},
        ],
    )
    ld.add_action(planner_server_node)

    # 启动运动控制节点
    control_server_node = Node(
        package='nav2_controller',
        executable='controller_server',
        name='controller_server',
        parameters=[
            LaunchConfiguration('control_server_yaml'),
            LaunchConfiguration('local_costmap_yaml'),
            {'use_sim_time': LaunchConfiguration('use_sim_time')},
        ],
        remappings=[
            ('cmd_vel', 'raw_cmd_vel')
        ]
    )
    ld.add_action(control_server_node)

    # 启动路径平滑节点
    smoother_server_node = Node(
        package='nav2_smoother',
        executable='smoother_server',
        name='smoother_server',
        parameters=[
            LaunchConfiguration('smoother_server_yaml'),
            {'use_sim_time': LaunchConfiguration('use_sim_time')},
        ],
    )
    ld.add_action(smoother_server_node)

    # 启用速度平滑节点
    velocity_smmother_node = Node(
        package='nav2_velocity_smoother',
        executable='velocity_smoother',
        name='velocity_smoother',
        parameters=[
            LaunchConfiguration('velocity_smmother_yaml'),
            {'use_sim_time': LaunchConfiguration('use_sim_time')},
        ],
        remappings=[
            ('/cmd_vel', '/raw_cmd_vel'),
            ('/cmd_vel_smoothed', '/cmd_vel'),
        ]
    )
    ld.add_action(velocity_smmother_node)

    # 启动恢复行为节点
    behavior_server_node = Node(
        package='nav2_behaviors',
        executable='behavior_server',
        name='behavior_server',
        parameters=[
            LaunchConfiguration('behavior_server_yaml'),
            {'use_sim_time': LaunchConfiguration('use_sim_time')},
        ],
    )
    ld.add_action(behavior_server_node)

    # 启用路点跟踪节点
    waypoint_follower_node = Node(
        package='nav2_waypoint_follower',
        executable='waypoint_follower',
        name='waypoint_follower',
        parameters=[
            LaunchConfiguration('waypoint_follower_yaml'),
            {'use_sim_time': LaunchConfiguration('use_sim_time')},
        ],
    )
    ld.add_action(waypoint_follower_node)

    # 启动行为树服务器
    bt_navigator_node = Node(
        package='nav2_bt_navigator',
        executable='bt_navigator',
        name='bt_navigator',
        parameters=[
            {'use_sim_time': LaunchConfiguration('use_sim_time')},
            #自定义行为树
            {'default_nav_to_pose_bt_xml': LaunchConfiguration('nav2_pose')},
            {'default_nav_through_poses_bt_xml': LaunchConfiguration('nav2_poses')},
            #加载yaml文件
            LaunchConfiguration('bt_yaml'),
        ]   
    )
    ld.add_action(bt_navigator_node)

    # 生命周期管理节点
    lifecycle_manager_node = Node(
        package='nav2_lifecycle_manager',
        executable='lifecycle_manager',
        name='dog_lifecycle_manager',
        parameters=[
            {'use_sim_time': LaunchConfiguration('use_sim_time')},
            {'autostart': True},
            {'node_names': [
                'planner_server', 
                'controller_server', 
                'smoother_server', 
                'velocity_smoother', 
                'behavior_server',
                'waypoint_follower', 
                'bt_navigator']
            },
        ],
    )
    ld.add_action(lifecycle_manager_node)


    return ld
