edu_description 使用说明文档
========================

这是一个用于教育用途的机器人描述功能包，包含了四足机器人的URDF模型及相关资源文件。

## 功能包概述

edu_description功能包提供了四足机器人的三维模型描述文件，包括机器人的链接(link)和关节(joint)定义，可用于机器人仿真、可视化和运动学分析等应用。

## 文件结构

功能包包含以下目录和文件：
- launch/: 启动文件目录
  - display_launch.py: 机器人模型显示启动文件
- urdf/: URDF模型文件目录
  - edu.urdf: 机器人URDF描述文件
  - edu.csv: 机器人链接和关节参数数据表
- meshes/: 三维网格文件目录
  - 包含各机器人部件的STL格式网格文件

## 主要组件

### URDF模型
edu.urdf文件定义了完整的四足机器人模型，包括以下主要链接(Link)：
- base_link: 机器人主体
- FL_ABAD_LINK/FR_ABAD_LINK/RL_ABAD_LINK/RR_ABAD_LINK: 四个腿部的外展关节链接
- FL_HIP_LINK/FR_HIP_LINK/RL_HIP_LINK/RR_HIP_LINK: 四个腿部的髋关节链接
- FL_KNEE_LINK/FR_KNEE_LINK/RL_KNEE_LINK/RR_KNEE_LINK: 四个腿部的膝关节链接
- FL_FOOT_LINK/FR_FOOT_LINK/RL_FOOT_LINK/RR_FOOT_LINK: 四个足部链接

每个链接都定义了：
- 惯性参数(inertial)
- 视觉属性(visual)
- 碰撞属性(collision)

### 关节定义
机器人共有12个关节(Joint)：
- 8个旋转关节(revolute)用于腿部运动
- 4个固定关节(fixed)用于连接足部

关节限制参数已根据实际机器人规格设定。

## 使用方法

### 显示机器人模型
使用以下命令启动机器人模型：

```bash
ros2 launch edu_description display_launch.py
```

此命令将启动以下节点：
- robot_state_publisher: 发布机器人状态
- joint_state_publisher: 发布关节状态(可通过参数use_joint_state_publisher控制是否启用)

### 参数说明
- use_joint_state_publisher: 布尔值，默认为true，控制是否启动joint_state_publisher节点

## 依赖关系

该功能包依赖以下ROS2包：
- robot_state_publisher
- joint_state_publisher
- rviz2
- xacro
- ros2launch

## 模型特点

1. 完整的四足机器人结构，包含机身和四条腿
2. 每条腿有3个自由度：外展(abduction)、髋部(hip)和膝部(knee)
3. 包含精确的质量、惯性矩等物理参数
4. 提供详细的三维视觉模型
5. 设定合理的关节运动限制

## 注意事项

1. 网格文件使用STL格式存储在meshes目录中
2. URDF文件中使用package://edu_description/meshes/路径引用网格文件
3. 所有关节限制参数均以弧度为单位
4. 模型适用于ROS2环境下的Gazebo仿真和RViz可视化


## 故障排除

如遇到模型显示问题，请检查：
1. 所有依赖包是否正确安装
2. meshes目录中的STL文件是否存在
3. URDF文件中路径引用是否正确
4. ROS2环境是否正确配置