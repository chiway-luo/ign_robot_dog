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
    调用cartographer实现slam建图
"""
def generate_launch_description():
    ld = LaunchDescription()

    #参数
    ld.add_action(
        DeclareLaunchArgument(
            'param_path',
            default_value=os.path.join(
                get_package_share_directory('slam_cartographer'),
                'params',
            )
        )
    )

    ld.add_action(
        DeclareLaunchArgument(
            'param_name',
            default_value='dog_3d.lua',
        )
    )

    ld.add_action(
        DeclareLaunchArgument(
            'tf_buffer_duration',
            default_value='30.0',
        )
    )

    # 启动节点1:子地图发布节点(cartographer_node)
    cartographer_node = Node(
        package='cartographer_ros',
        executable='cartographer_node',
        name='cartographer_node_sim',
        parameters=[
            {'use_sim_time': True},
            {'tf_buffer_duration': LaunchConfiguration('tf_buffer_duration')},
        ],
        #配置文件加载
        arguments=[
            #设置目录路径
            '-configuration_directory',LaunchConfiguration('param_path'),
            #设置目录文件
            '-configuration_basename',LaunchConfiguration('param_name'),
        ],
        remappings=[
            ('points2_1','/scan/points'),
            ('points2','/scan/points'),
        ]
    )
    ld.add_action(cartographer_node)


    # 启动节点2:地图拼接节点(cartographer_occupancy_grid_node)
    cartographer_occupancy_grid_node = Node(
        package='cartographer_ros',
        executable='cartographer_occupancy_grid_node',
        name='cartographer_occupancy_grid_node_sim',
        parameters=[
            {'use_sim_time': True},
            # {'resolution': 0.05} #分辨率 一个像素/0.05m
        ],

    )
    ld.add_action(cartographer_occupancy_grid_node)

    # cartographer_node = Node(
    #     package = 'cartographer_ros',
    #     executable = 'cartographer_node',
    #     parameters = [{'use_sim_time': LaunchConfiguration('use_sim_time')}],
    #     arguments = [
    #         '-configuration_directory', FindPackageShare('cartographer_ros').find('cartographer_ros') + '/configuration_files',
    #         '-configuration_basename', 'backpack_3d.lua'],
    #     remappings = [
    #         ('points2_1', 'horizontal_laser_3d'),
    #         ('points2_2', 'vertical_laser_3d')],
    #     output = 'screen'
    #     )

    # cartographer_occupancy_grid_node = Node(
    #     package = 'cartographer_ros',
    #     executable = 'cartographer_occupancy_grid_node',
    #     parameters = [
    #         {'use_sim_time': True},
    #         {'resolution': 0.05}],
    #     )


    return ld
