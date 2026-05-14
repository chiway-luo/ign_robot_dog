from launch import LaunchDescription
from launch_ros.actions import Node
from launch.substitutions import Command, LaunchConfiguration
from launch_ros.parameter_descriptions import ParameterValue
from ament_index_python.packages import get_package_share_directory
from launch.actions import DeclareLaunchArgument
from launch.conditions import IfCondition


import os


def generate_launch_description():
    #获取功能包路径 ultra_description_pkg
    ultra_description_pkg = get_package_share_directory("edu_description")
    #使用xacro读取urdf文件中内容
    urdf_path = os.path.join(ultra_description_pkg,"urdf","edu.urdf")
    model = DeclareLaunchArgument(name="model", default_value=urdf_path)
    # 发布机器人描述参数  robot_state_publisher：加载机器人urdf文件 
    
    # 加载机器人模型
    # 启动 robot_state_publisher 节点并以参数方式加载 urdf 文件
    robot_description = ParameterValue(Command(["xacro ",LaunchConfiguration("model")]))
    robot_state_publisher = Node(
        package="robot_state_publisher",
        executable="robot_state_publisher",
        parameters=[
            {"robot_description": robot_description},
            {"use_sim_time": True},
            {"publish_frequency": 200.0},   
        ]
    )


    return LaunchDescription([
        model,
        robot_state_publisher,
    ])


