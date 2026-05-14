使用champ开源算法,实现智元机器狗d1的ign-gazebo仿真和语音识别导航
===
该分支基于 [ign_robot_dog/ign_robot_dog_Agibot](https://github.com/chiway-luo/ign_robot_dog.git) 分支,实现了智元机器狗d1的ign-gazebo仿真和语音识别导航功能,并且集成了champ开源算法,实现了更为智能的导航功能
## 使用方式
- 克隆本仓库
```bash
git clone https://github.com/chiway-luo/ign_robot_dog.git -b ***待定
```
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
- ign_gazebo节点 + 导航(包含cartographer)
```
ros2 launch sim_ign_dog d1_gazebo_sim_dog.launch.py 
```
> 考虑到稳定性启动的问题,按依赖启动耗时较长(预计10s),请耐心等待;如启动失败请调节urdf中的激光雷达线束数量
- [urdf 第1019行](src/sim_dog/edu_description/urdf/edu.urdf)


- 控制节点(没必要,除非需要手动控制机器狗)
```
ros2 run teleop_twist_keyboard teleop_twist_keyboard
```
![](.docs/image.png)
## 参考仓库
- [anujjain-dev/unitree-go2-ros2](https://github.com/anujjain-dev/unitree-go2-ros2.git)

- [chvmp/champ](https://github.com/chvmp/champ.git)

## 开发参考
- 基坐标系 base_link
- 雷达坐标系 laser_up

## 问题描述

> 当前在部分环境下,由于显卡与ign_gazebo的兼容性问题,会导致仿真环境无法正常启动,导致虚拟机崩溃

### 解决方案
参考 [ssh端口转发](https://github.com/chiway-luo/ssh-x11-forwarding-guide.git) , 将仿真环境部署在远程服务器上,通过ssh连接进行仿真环境的使用