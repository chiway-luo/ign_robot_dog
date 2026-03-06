from launch import LaunchDescription
from launch_ros.actions import Node
import os
from ament_index_python.packages import get_package_share_directory
from launch_ros.parameter_descriptions import ParameterValue
from launch.substitutions import Command,LaunchConfiguration
from launch.actions import DeclareLaunchArgument

"""
    用于启动gazebo仿真时的小车描述文件加载  去除joint_state_publisher节点
"""
def generate_launch_description():

    # MYCAR_MODEL = os.environ['MYCAR_MODEL']
    MYCAR_MODEL = 'go2_description_ign'

    mycar_description = get_package_share_directory("go2_description")
    default_model_path = os.path.join(mycar_description,"urdf",MYCAR_MODEL + ".urdf")
    model = DeclareLaunchArgument(name="model", default_value=default_model_path)

    # 加载机器人模型
    # 启动 robot_state_publisher 节点并以参数方式加载 urdf 文件
    robot_description = ParameterValue(Command(["xacro ",LaunchConfiguration("model")]))
    robot_state_publisher = Node(
        package="robot_state_publisher",
        executable="robot_state_publisher",
        name="robot_state_publisher",
        parameters=[
            {"robot_description": robot_description},
            {"use_sim_time": True},
            {"publish_frequency": 200.0}
        ]
    )

    #启动关节状态发布节点
    # joint_state_publisher = Node(
    #     package='joint_state_publisher',
    #     executable='joint_state_publisher',
    #     output='screen',
    #     parameters=[{'robot_description': robot_description}],
    # )
    
    return LaunchDescription([
        model,
        robot_state_publisher,
        # joint_state_publisher,
    ])