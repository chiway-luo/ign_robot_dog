

使用champ开源算法,实现宇树机器狗go2的ign-gazebo仿真和导航
===
分支 ign_robot_dog_Agibot 为智元机器狗仿真
分支 ign_agibot_d1_SuZhouResearchInstituteUpperClothing 为加入苏研院定制上装效果(加入filter和3d_to_2d算法实现,并提供离线amcl实现)

已经修改launch文件按照依赖顺序启动
## 版本说明
- ubuntu 22.04
- ROS2 Humble
- ign_gazebo
- rviz2
## 仿真参数说明
若ign卡顿,请降低雷达参数
- 多线雷达
```
64线 水平采样点2048
垂直采样点64
水平视场角360度
```
- 深度相机
## 使用方式
- 安装依赖
```
sudo apt install ros-humble-gazebo-ros2-control
sudo apt install ros-humble-xacro
sudo apt install ros-humble-robot-localization
sudo apt install ros-humble-ros2-controllers
sudo apt install ros-humble-ros2-control
sudo apt install ros-humble-velodyne
sudo apt install ros-humble-velodyne-gazebo-plugins
sudo apt-get install ros-humble-velodyne-description
```
- 配置环境变量 (新版本取消了环境变量配置流程,写在了launch文件中，该步骤可以跳过)
```
sudo nano ~/.bashrc
```
粘贴下列内容到文件末尾，保存并退出，然后执行`source ~/.bashrc`使配置生效
```
#ign模型路径
export IGN_GAZEBO_RESOURCE_PATH=ign_models  #相对路径
#export IGN_GAZEBO_RESOURCE_PATH=~/ign_models #绝对路径
```

- ign_gazebo节点 + 导航节点 (使用2D Goal Pose 插件设置导航目标)
```
ros2 launch sim_ign_dog gazebo_sim_dog.launch.py 
```
- 控制节点(没必要启动)
```
ros2 run teleop_twist_keyboard teleop_twist_keyboard
```
![](.docs/image.png)
## 参考仓库
- [anujjain-dev/unitree-go2-ros2](https://github.com/anujjain-dev/unitree-go2-ros2.git)

- [chvmp/champ](https://github.com/chvmp/champ.git)

## 开发提示
- 基坐标系为 base
- 雷达话题 /scan

## 节点列表
### 列表
- IGN_GAZEBO_RESOURCE_PATH 环境变量
- ign_gazebo 仿真节点
- ros2_gz_bridge 桥接节点
- ros2_gz_sim 生成模型节点
- description 模型描述节点
- joint_state_broadcaster 关节状态广播节点
- legs_controller 关节控制节点
- champ_bringup champ算法启动文件(包含ekf)
- sim_navigation2 导航启动文件(包含cartographer)

### 依赖关系
```
IGN_GAZEBO_RESOURCE_PATH 环境变量
    └── description 模型描述节点 topic /description
        └── ign_gazebo 仿真节点 
            └── ros2_gz_sim 生成模型节点 node /ros_gz_sim_create
                └── ros2_gz_bridge 桥接节点 node /ros_gz_bridge
                    ├── jsb_spawner 控制器生成器
                    └── legs_spawner 关节控制器生成器
                        ├── champ_bringup champ算法启动文件(包含ekf)
                        └── sim_navigation2 导航启动文件(包含cartographer)
    
```
