使用champ开源算法,实现宇树机器狗go2的ign-gazebo仿真和导航
===
分支 ign_robot_dog_Agibot 为智元机器狗仿真
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
- 配置环境变量
```
sudo nano ~/.bashrc
```
粘贴下列内容到文件末尾，保存并退出，然后执行`source ~/.bashrc`使配置生效
```
#ign模型路径
export IGN_GAZEBO_RESOURCE_PATH=ign_models  #相对路径
#export IGN_GAZEBO_RESOURCE_PATH=~/ign_models #绝对路径
```
- ign_gazebo节点 + 导航节点
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