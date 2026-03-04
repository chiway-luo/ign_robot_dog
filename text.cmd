chiway@ros2-humble-ms:~/work_temp/ign_robot_dog$ ros2 launch sim_ign_dog gazebo_sim_dog.launch.py
[INFO] [launch]: All log files can be found below /home/chiway/.ros/log/2026-03-04-16-21-02-852412-ros2-humble-ms-31458
[INFO] [launch]: Default logging verbosity is set to INFO
[INFO] [ign gazebo-1]: process started with pid [31460]
[INFO] [robot_state_publisher-2]: process started with pid [31462]
[INFO] [parameter_bridge-3]: process started with pid [31464]
[INFO] [rviz2-4]: process started with pid [31466]
[INFO] [static_transform_publisher-5]: process started with pid [31469]
[INFO] [static_transform_publisher-6]: process started with pid [31471]
[INFO] [static_transform_publisher-7]: process started with pid [31473]
[INFO] [static_transform_publisher-8]: process started with pid [31475]
[INFO] [pointcloud_to_laserscan_node-9]: process started with pid [31477]
[INFO] [planner_server-10]: process started with pid [31479]
[INFO] [controller_server-11]: process started with pid [31482]
[INFO] [smoother_server-12]: process started with pid [31484]
[INFO] [velocity_smoother-13]: process started with pid [31489]
[INFO] [behavior_server-14]: process started with pid [31497]
[INFO] [waypoint_follower-15]: process started with pid [31506]
[INFO] [bt_navigator-16]: process started with pid [31509]
[INFO] [lifecycle_manager-17]: process started with pid [31513]
[INFO] [cartographer_node-18]: process started with pid [31523]
[INFO] [cartographer_occupancy_grid_node-19]: process started with pid [31533]
[static_transform_publisher-5] [INFO] [1772612463.174395423] [static_laser_tf]: Spinning until stopped - publishing transform
[static_transform_publisher-5] translation: ('0.000000', '0.000000', '0.000000')
[static_transform_publisher-5] rotation: ('0.000000', '0.000000', '0.000000', '1.000000')
[static_transform_publisher-5] from 'front_camera' to 'go2_dog/base/depth_camera'
[static_transform_publisher-7] [INFO] [1772612463.188955494] [go2_odom_to_odom_tf]: Spinning until stopped - publishing transform
[static_transform_publisher-7] translation: ('0.000000', '0.000000', '0.000000')
[static_transform_publisher-7] rotation: ('0.000000', '0.000000', '0.000000', '1.000000')
[static_transform_publisher-7] from 'odom' to 'go2_dog/odom'
[planner_server-10] [INFO] [1772612463.192578923] [planner_server]:
[planner_server-10]     planner_server lifecycle node launched.
[planner_server-10]     Waiting on external lifecycle transitions to activate
[planner_server-10]     See https://design.ros2.org/articles/node_lifecycle.html for more information.
[static_transform_publisher-6] [INFO] [1772612463.195439179] [static_base_footprint_tf]: Spinning until stopped - publishing transform
[static_transform_publisher-6] translation: ('0.000000', '0.000000', '0.250000')
[static_transform_publisher-6] rotation: ('0.000000', '0.000000', '0.000000', '1.000000')
[static_transform_publisher-6] from 'base_footprint' to 'base'
[controller_server-11] [INFO] [1772612463.196465868] [controller_server]:
[controller_server-11]  controller_server lifecycle node launched.
[controller_server-11]  Waiting on external lifecycle transitions to activate
[controller_server-11]  See https://design.ros2.org/articles/node_lifecycle.html for more information.
[planner_server-10] [INFO] [1772612463.197590848] [planner_server]: Creating
[robot_state_publisher-2] [WARN] [1772612463.198514753] [kdl_parser]: The root link base has an inertia specified in the URDF, but KDL does not support a root link with an inertia.  As a workaround, you can add an extra dummy link to your URDF.
[robot_state_publisher-2] [INFO] [1772612463.198616451] [robot_state_publisher]: got segment FL_calf
[robot_state_publisher-2] [INFO] [1772612463.198645253] [robot_state_publisher]: got segment FL_calf_rotor
[robot_state_publisher-2] [INFO] [1772612463.198650839] [robot_state_publisher]: got segment FL_calflower
[robot_state_publisher-2] [INFO] [1772612463.198655307] [robot_state_publisher]: got segment FL_calflower1
[robot_state_publisher-2] [INFO] [1772612463.198659635] [robot_state_publisher]: got segment FL_foot
[robot_state_publisher-2] [INFO] [1772612463.198664004] [robot_state_publisher]: got segment FL_hip
[robot_state_publisher-2] [INFO] [1772612463.198668277] [robot_state_publisher]: got segment FL_hip_rotor
[robot_state_publisher-2] [INFO] [1772612463.198672587] [robot_state_publisher]: got segment FL_thigh
[robot_state_publisher-2] [INFO] [1772612463.198676932] [robot_state_publisher]: got segment FL_thigh_rotor
[robot_state_publisher-2] [INFO] [1772612463.198681379] [robot_state_publisher]: got segment FR_calf
[robot_state_publisher-2] [INFO] [1772612463.198685792] [robot_state_publisher]: got segment FR_calf_rotor
[robot_state_publisher-2] [INFO] [1772612463.198690088] [robot_state_publisher]: got segment FR_calflower
[robot_state_publisher-2] [INFO] [1772612463.198694390] [robot_state_publisher]: got segment FR_calflower1
[robot_state_publisher-2] [INFO] [1772612463.198698667] [robot_state_publisher]: got segment FR_foot
[robot_state_publisher-2] [INFO] [1772612463.198702998] [robot_state_publisher]: got segment FR_hip
[robot_state_publisher-2] [INFO] [1772612463.198707321] [robot_state_publisher]: got segment FR_hip_rotor
[robot_state_publisher-2] [INFO] [1772612463.198711623] [robot_state_publisher]: got segment FR_thigh
[robot_state_publisher-2] [INFO] [1772612463.198715923] [robot_state_publisher]: got segment FR_thigh_rotor
[robot_state_publisher-2] [INFO] [1772612463.198720320] [robot_state_publisher]: got segment Head_lower
[robot_state_publisher-2] [INFO] [1772612463.198724630] [robot_state_publisher]: got segment Head_upper
[robot_state_publisher-2] [INFO] [1772612463.198728907] [robot_state_publisher]: got segment RL_calf
[robot_state_publisher-2] [INFO] [1772612463.198733183] [robot_state_publisher]: got segment RL_calf_rotor
[robot_state_publisher-2] [INFO] [1772612463.198741267] [robot_state_publisher]: got segment RL_calflower
[robot_state_publisher-2] [INFO] [1772612463.198745816] [robot_state_publisher]: got segment RL_calflower1
[robot_state_publisher-2] [INFO] [1772612463.198750112] [robot_state_publisher]: got segment RL_foot
[robot_state_publisher-2] [INFO] [1772612463.198754430] [robot_state_publisher]: got segment RL_hip
[robot_state_publisher-2] [INFO] [1772612463.198758734] [robot_state_publisher]: got segment RL_hip_rotor
[robot_state_publisher-2] [INFO] [1772612463.198763084] [robot_state_publisher]: got segment RL_thigh
[robot_state_publisher-2] [INFO] [1772612463.198767413] [robot_state_publisher]: got segment RL_thigh_rotor
[robot_state_publisher-2] [INFO] [1772612463.198771816] [robot_state_publisher]: got segment RR_calf
[robot_state_publisher-2] [INFO] [1772612463.198776232] [robot_state_publisher]: got segment RR_calf_rotor
[robot_state_publisher-2] [INFO] [1772612463.198780553] [robot_state_publisher]: got segment RR_calflower
[robot_state_publisher-2] [INFO] [1772612463.198786144] [robot_state_publisher]: got segment RR_calflower1
[robot_state_publisher-2] [INFO] [1772612463.198790587] [robot_state_publisher]: got segment RR_foot
[robot_state_publisher-2] [INFO] [1772612463.198794848] [robot_state_publisher]: got segment RR_hip
[robot_state_publisher-2] [INFO] [1772612463.198806857] [robot_state_publisher]: got segment RR_hip_rotor
[robot_state_publisher-2] [INFO] [1772612463.198811122] [robot_state_publisher]: got segment RR_thigh
[robot_state_publisher-2] [INFO] [1772612463.198815315] [robot_state_publisher]: got segment RR_thigh_rotor
[robot_state_publisher-2] [INFO] [1772612463.198819528] [robot_state_publisher]: got segment base
[robot_state_publisher-2] [INFO] [1772612463.198823837] [robot_state_publisher]: got segment front_camera
[robot_state_publisher-2] [INFO] [1772612463.198828093] [robot_state_publisher]: got segment imu
[robot_state_publisher-2] [INFO] [1772612463.198832384] [robot_state_publisher]: got segment laser_up
[robot_state_publisher-2] [INFO] [1772612463.198836655] [robot_state_publisher]: got segment radar
[bt_navigator-16] [INFO] [1772612463.199772734] [bt_navigator]:
[bt_navigator-16]       bt_navigator lifecycle node launched.
[bt_navigator-16]       Waiting on external lifecycle transitions to activate
[bt_navigator-16]       See https://design.ros2.org/articles/node_lifecycle.html for more information.
[bt_navigator-16] [INFO] [1772612463.199833860] [bt_navigator]: Creating
[controller_server-11] [INFO] [1772612463.207573592] [controller_server]: Creating controller server
[static_transform_publisher-8] [INFO] [1772612463.210814772] [go2_base_footprint_to_base_tf]: Spinning until stopped - publishing transform
[static_transform_publisher-8] translation: ('0.000000', '0.000000', '0.000000')
[static_transform_publisher-8] rotation: ('0.000000', '0.000000', '0.000000', '1.000000')
[static_transform_publisher-8] from 'go2_dog/base_footprint' to 'base_footprint'
[velocity_smoother-13] [INFO] [1772612463.210879365] [velocity_smoother]:
[velocity_smoother-13]  velocity_smoother lifecycle node launched.
[velocity_smoother-13]  Waiting on external lifecycle transitions to activate
[velocity_smoother-13]  See https://design.ros2.org/articles/node_lifecycle.html for more information.
[lifecycle_manager-17] [INFO] [1772612463.213198952] [dog_lifecycle_manager]: Creating
[smoother_server-12] [INFO] [1772612463.214293919] [smoother_server]:
[smoother_server-12]    smoother_server lifecycle node launched.
[smoother_server-12]    Waiting on external lifecycle transitions to activate
[smoother_server-12]    See https://design.ros2.org/articles/node_lifecycle.html for more information.
[smoother_server-12] [INFO] [1772612463.215849290] [smoother_server]: Creating smoother server
[lifecycle_manager-17] [INFO] [1772612463.216576010] [dog_lifecycle_manager]: Creating and initializing lifecycle service clients
[behavior_server-14] [INFO] [1772612463.217745592] [behavior_server]:
[behavior_server-14]    behavior_server lifecycle node launched.
[behavior_server-14]    Waiting on external lifecycle transitions to activate
[behavior_server-14]    See https://design.ros2.org/articles/node_lifecycle.html for more information.
[waypoint_follower-15] [INFO] [1772612463.217902406] [waypoint_follower]:
[waypoint_follower-15]  waypoint_follower lifecycle node launched.
[waypoint_follower-15]  Waiting on external lifecycle transitions to activate
[waypoint_follower-15]  See https://design.ros2.org/articles/node_lifecycle.html for more information.
[waypoint_follower-15] [INFO] [1772612463.218471491] [waypoint_follower]: Creating
[planner_server-10] [INFO] [1772612463.220474574] [global_costmap.global_costmap]:
[planner_server-10]     global_costmap lifecycle node launched.
[planner_server-10]     Waiting on external lifecycle transitions to activate
[planner_server-10]     See https://design.ros2.org/articles/node_lifecycle.html for more information.
[planner_server-10] [INFO] [1772612463.221234394] [global_costmap.global_costmap]: Creating Costmap
[controller_server-11] [INFO] [1772612463.230032694] [local_costmap.local_costmap]:
[controller_server-11]  local_costmap lifecycle node launched.
[controller_server-11]  Waiting on external lifecycle transitions to activate
[controller_server-11]  See https://design.ros2.org/articles/node_lifecycle.html for more information.
[controller_server-11] [INFO] [1772612463.230609903] [local_costmap.local_costmap]: Creating Costmap
[cartographer_node-18] [INFO] [1772612463.265309729] [cartographer logger]: I0304 16:21:03.000000 31523 configuration_file_resolver.cc:41] Found '/home/chiway/work_temp/ign_robot_dog/install/slam_cartographer/share/slam_cartographer/params/dog.lua' for 'dog.lua'.
[cartographer_node-18] [INFO] [1772612463.265480087] [cartographer logger]: I0304 16:21:03.000000 31523 configuration_file_resolver.cc:41] Found '/opt/ros/humble/share/cartographer/configuration_files/map_builder.lua' for 'map_builder.lua'.
[cartographer_node-18] [INFO] [1772612463.265494520] [cartographer logger]: I0304 16:21:03.000000 31523 configuration_file_resolver.cc:41] Found '/opt/ros/humble/share/cartographer/configuration_files/map_builder.lua' for 'map_builder.lua'.
[cartographer_node-18] [INFO] [1772612463.265521289] [cartographer logger]: I0304 16:21:03.000000 31523 configuration_file_resolver.cc:41] Found '/opt/ros/humble/share/cartographer/configuration_files/pose_graph.lua' for 'pose_graph.lua'.
[cartographer_node-18] [INFO] [1772612463.265532985] [cartographer logger]: I0304 16:21:03.000000 31523 configuration_file_resolver.cc:41] Found '/opt/ros/humble/share/cartographer/configuration_files/pose_graph.lua' for 'pose_graph.lua'.
[cartographer_node-18] [INFO] [1772612463.265596416] [cartographer logger]: I0304 16:21:03.000000 31523 configuration_file_resolver.cc:41] Found '/opt/ros/humble/share/cartographer/configuration_files/trajectory_builder.lua' for 'trajectory_builder.lua'.
[cartographer_node-18] [INFO] [1772612463.265608424] [cartographer logger]: I0304 16:21:03.000000 31523 configuration_file_resolver.cc:41] Found '/opt/ros/humble/share/cartographer/configuration_files/trajectory_builder.lua' for 'trajectory_builder.lua'.
[cartographer_node-18] [INFO] [1772612463.265629475] [cartographer logger]: I0304 16:21:03.000000 31523 configuration_file_resolver.cc:41] Found '/opt/ros/humble/share/cartographer/configuration_files/trajectory_builder_2d.lua' for 'trajectory_builder_2d.lua'.
[cartographer_node-18] [INFO] [1772612463.265641076] [cartographer logger]: I0304 16:21:03.000000 31523 configuration_file_resolver.cc:41] Found '/opt/ros/humble/share/cartographer/configuration_files/trajectory_builder_2d.lua' for 'trajectory_builder_2d.lua'.
[cartographer_node-18] [INFO] [1772612463.265701726] [cartographer logger]: I0304 16:21:03.000000 31523 configuration_file_resolver.cc:41] Found '/opt/ros/humble/share/cartographer/configuration_files/trajectory_builder_3d.lua' for 'trajectory_builder_3d.lua'.
[cartographer_node-18] [INFO] [1772612463.265713500] [cartographer logger]: I0304 16:21:03.000000 31523 configuration_file_resolver.cc:41] Found '/opt/ros/humble/share/cartographer/configuration_files/trajectory_builder_3d.lua' for 'trajectory_builder_3d.lua'.
[cartographer_node-18] [INFO] [1772612463.280933863] [cartographer logger]: I0304 16:21:03.000000 31523 map_builder_bridge.cpp:136] Added trajectory with ID '0'.
[parameter_bridge-3] [INFO] [1772612463.346686548] [ros_gz_bridge]: Creating ROS->GZ Bridge: [/cmd_vel (geometry_msgs/msg/Twist) -> /cmd_vel (gz.msgs.Twist)] (Lazy 0)
[parameter_bridge-3] [INFO] [1772612463.348209081] [ros_gz_bridge]: Creating GZ->ROS Bridge: [/clock (gz.msgs.Clock) -> /clock (rosgraph_msgs/msg/Clock)] (Lazy 0)
[parameter_bridge-3] [INFO] [1772612463.350252495] [ros_gz_bridge]: Creating GZ->ROS Bridge: [/model/go2_dog/odometry (gz.msgs.Odometry) -> /model/go2_dog/odometry (nav_msgs/msg/Odometry)] (Lazy 0)
[parameter_bridge-3] [INFO] [1772612463.352158017] [ros_gz_bridge]: Creating GZ->ROS Bridge: [/scan (gz.msgs.LaserScan) -> /scan (sensor_msgs/msg/LaserScan)] (Lazy 0)
[parameter_bridge-3] [INFO] [1772612463.353705994] [ros_gz_bridge]: Creating GZ->ROS Bridge: [/scan/points (gz.msgs.PointCloudPacked) -> /scan/points (sensor_msgs/msg/PointCloud2)] (Lazy 0)
[parameter_bridge-3] [INFO] [1772612463.354806664] [ros_gz_bridge]: Creating GZ->ROS Bridge: [/depth_camera (gz.msgs.Image) -> /depth_camera (sensor_msgs/msg/Image)] (Lazy 0)
[parameter_bridge-3] [INFO] [1772612463.356203346] [ros_gz_bridge]: Creating GZ->ROS Bridge: [/depth_camera/points (gz.msgs.PointCloudPacked) -> /depth_camera/points (sensor_msgs/msg/PointCloud2)] (Lazy 0)
[parameter_bridge-3] [INFO] [1772612463.357336482] [ros_gz_bridge]: Creating GZ->ROS Bridge: [/image_raw (gz.msgs.Image) -> /image_raw (sensor_msgs/msg/Image)] (Lazy 0)
[lifecycle_manager-17] [INFO] [1772612463.358250781] [dog_lifecycle_manager]: Starting managed nodes bringup...
[lifecycle_manager-17] [INFO] [1772612463.358315837] [dog_lifecycle_manager]: Configuring planner_server
[planner_server-10] [INFO] [1772612463.358577556] [planner_server]: Configuring
[planner_server-10] [INFO] [1772612463.358609957] [global_costmap.global_costmap]: Configuring
[parameter_bridge-3] [INFO] [1772612463.358716907] [ros_gz_bridge]: Creating GZ->ROS Bridge: [/camera_info (gz.msgs.CameraInfo) -> /camera_info (sensor_msgs/msg/CameraInfo)] (Lazy 0)
[planner_server-10] [INFO] [1772612463.371117169] [global_costmap.global_costmap]: Using plugin "static_layer"
[planner_server-10] [INFO] [1772612463.373566815] [global_costmap.global_costmap]: Subscribing to the map topic (/map) with transient local durability
[planner_server-10] [INFO] [1772612463.374357261] [global_costmap.global_costmap]: Initialized plugin "static_layer"
[planner_server-10] [INFO] [1772612463.374379488] [global_costmap.global_costmap]: Using plugin "obstacle_layer"
[planner_server-10] [INFO] [1772612463.374658024] [global_costmap.global_costmap]: Subscribed to Topics: scan
[planner_server-10] [INFO] [1772612463.379719296] [global_costmap.global_costmap]: Initialized plugin "obstacle_layer"
[planner_server-10] [INFO] [1772612463.379749853] [global_costmap.global_costmap]: Using plugin "inflation_layer"
[planner_server-10] [INFO] [1772612463.380685862] [global_costmap.global_costmap]: Initialized plugin "inflation_layer"
[planner_server-10] [INFO] [1772612463.390493063] [planner_server]: Created global planner plugin GridBased of type nav2_navfn_planner/NavfnPlanner
[planner_server-10] [INFO] [1772612463.390527092] [planner_server]: Configuring plugin GridBased of type NavfnPlanner
[planner_server-10] [INFO] [1772612463.393704350] [planner_server]: Planner Server has GridBased  planners available.
[lifecycle_manager-17] [INFO] [1772612463.402999998] [dog_lifecycle_manager]: Configuring controller_server
[controller_server-11] [INFO] [1772612463.403178901] [controller_server]: Configuring controller interface
[controller_server-11] [INFO] [1772612463.403438424] [controller_server]: getting goal checker plugins..
[controller_server-11] [INFO] [1772612463.403611914] [controller_server]: Controller frequency set to 20.0000Hz
[controller_server-11] [INFO] [1772612463.403630227] [local_costmap.local_costmap]: Configuring
[controller_server-11] [INFO] [1772612463.408916728] [local_costmap.local_costmap]: Using plugin "voxel_layer"
[controller_server-11] [INFO] [1772612463.411166333] [local_costmap.local_costmap]: Subscribed to Topics: scan
[controller_server-11] [INFO] [1772612463.417722750] [local_costmap.local_costmap]: Initialized plugin "voxel_layer"
[controller_server-11] [INFO] [1772612463.417750834] [local_costmap.local_costmap]: Using plugin "inflation_layer"
[controller_server-11] [INFO] [1772612463.418617237] [local_costmap.local_costmap]: Initialized plugin "inflation_layer"
[controller_server-11] [INFO] [1772612463.426583059] [controller_server]: Created progress_checker : progress_checker of type nav2_controller::SimpleProgressChecker
[controller_server-11] [INFO] [1772612463.427267316] [controller_server]: Created goal checker : general_goal_checker of type nav2_controller::SimpleGoalChecker
[controller_server-11] [INFO] [1772612463.427675987] [controller_server]: Controller Server has general_goal_checker  goal checkers available.
[controller_server-11] [INFO] [1772612463.428803006] [controller_server]: Created controller : FollowPath of type dwb_core::DWBLocalPlanner
[controller_server-11] [INFO] [1772612463.430400602] [controller_server]: Setting transform_tolerance to 0.200000
[controller_server-11] [INFO] [1772612463.441219474] [controller_server]: Using critic "RotateToGoal" (dwb_critics::RotateToGoalCritic)
[controller_server-11] [INFO] [1772612463.442057037] [controller_server]: Critic plugin initialized
[controller_server-11] [INFO] [1772612463.442250225] [controller_server]: Using critic "Oscillation" (dwb_critics::OscillationCritic)
[controller_server-11] [INFO] [1772612463.442963130] [controller_server]: Critic plugin initialized
[controller_server-11] [INFO] [1772612463.443141937] [controller_server]: Using critic "BaseObstacle" (dwb_critics::BaseObstacleCritic)
[controller_server-11] [INFO] [1772612463.443426566] [controller_server]: Critic plugin initialized
[controller_server-11] [INFO] [1772612463.443590565] [controller_server]: Using critic "GoalAlign" (dwb_critics::GoalAlignCritic)
[controller_server-11] [INFO] [1772612463.444136000] [controller_server]: Critic plugin initialized
[controller_server-11] [INFO] [1772612463.444316746] [controller_server]: Using critic "PathAlign" (dwb_critics::PathAlignCritic)
[controller_server-11] [INFO] [1772612463.444852188] [controller_server]: Critic plugin initialized
[controller_server-11] [INFO] [1772612463.445002870] [controller_server]: Using critic "PathDist" (dwb_critics::PathDistCritic)
[controller_server-11] [INFO] [1772612463.445341387] [controller_server]: Critic plugin initialized
[controller_server-11] [INFO] [1772612463.445603302] [controller_server]: Using critic "GoalDist" (dwb_critics::GoalDistCritic)
[controller_server-11] [INFO] [1772612463.445970753] [controller_server]: Critic plugin initialized
[controller_server-11] [INFO] [1772612463.445993976] [controller_server]: Controller Server has FollowPath  controllers available.
[lifecycle_manager-17] [INFO] [1772612463.452020787] [dog_lifecycle_manager]: Configuring smoother_server
[smoother_server-12] [INFO] [1772612463.452200627] [smoother_server]: Configuring smoother server
[smoother_server-12] [INFO] [1772612463.459801700] [smoother_server]: Created smoother : simple_smoother of type nav2_smoother::SimpleSmoother
[smoother_server-12] [INFO] [1772612463.460455091] [smoother_server]: Smoother Server has simple_smoother  smoothers available.
[lifecycle_manager-17] [INFO] [1772612463.466522969] [dog_lifecycle_manager]: Configuring velocity_smoother
[velocity_smoother-13] [INFO] [1772612463.466708071] [velocity_smoother]: Configuring velocity smoother
[lifecycle_manager-17] [INFO] [1772612463.470101747] [dog_lifecycle_manager]: Configuring behavior_server
[behavior_server-14] [INFO] [1772612463.470324677] [behavior_server]: Configuring
[behavior_server-14] [INFO] [1772612463.477848235] [behavior_server]: Creating behavior plugin spin of type nav2_behaviors/Spin
[behavior_server-14] [INFO] [1772612463.478250291] [behavior_server]: Configuring spin
[behavior_server-14] [INFO] [1772612463.484147840] [behavior_server]: Creating behavior plugin backup of type nav2_behaviors/BackUp
[behavior_server-14] [INFO] [1772612463.484559841] [behavior_server]: Configuring backup
[behavior_server-14] [INFO] [1772612463.489820709] [behavior_server]: Creating behavior plugin drive_on_heading of type nav2_behaviors/DriveOnHeading
[behavior_server-14] [INFO] [1772612463.490257209] [behavior_server]: Configuring drive_on_heading
[behavior_server-14] [INFO] [1772612463.495441268] [behavior_server]: Creating behavior plugin assisted_teleop of type nav2_behaviors/AssistedTeleop
[behavior_server-14] [INFO] [1772612463.496249575] [behavior_server]: Configuring assisted_teleop
[behavior_server-14] [INFO] [1772612463.503663462] [behavior_server]: Creating behavior plugin wait of type nav2_behaviors/Wait
[behavior_server-14] [INFO] [1772612463.504106553] [behavior_server]: Configuring wait
[lifecycle_manager-17] [INFO] [1772612463.508880703] [dog_lifecycle_manager]: Configuring waypoint_follower
[waypoint_follower-15] [INFO] [1772612463.509031494] [waypoint_follower]: Configuring
[waypoint_follower-15] [INFO] [1772612463.518211610] [waypoint_follower]: Created waypoint_task_executor : wait_at_waypoint of type nav2_waypoint_follower::WaitAtWaypoint
[lifecycle_manager-17] [INFO] [1772612463.518849481] [dog_lifecycle_manager]: Configuring bt_navigator
[bt_navigator-16] [INFO] [1772612463.519026070] [bt_navigator]: Configuring
[lifecycle_manager-17] [INFO] [1772612463.572109330] [dog_lifecycle_manager]: Activating planner_server
[planner_server-10] [INFO] [1772612463.572238933] [planner_server]: Activating
[planner_server-10] [INFO] [1772612463.572260000] [global_costmap.global_costmap]: Activating
[planner_server-10] [INFO] [1772612463.572267394] [global_costmap.global_costmap]: Checking transform
[planner_server-10] [INFO] [1772612463.572279901] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[planner_server-10] [INFO] [1772612464.072467036] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[INFO] [create-20]: process started with pid [31763]
[create-20] [INFO] [1772612464.327492869] [ros_gz_sim]: Requesting list of world names.
[create-20] [INFO] [1772612464.529737707] [ros_gz_sim]: Waiting messages on topic [/robot_description].
[create-20] [INFO] [1772612464.543027328] [ros_gz_sim]: Requested creation of entity.
[create-20] [INFO] [1772612464.543086282] [ros_gz_sim]: OK creation of entity.
[planner_server-10] [INFO] [1772612464.572335766] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[INFO] [create-20]: process has finished cleanly [pid 31763]
[planner_server-10] [INFO] [1772612465.072507530] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[INFO] [spawner-21]: process started with pid [31841]
[ign gazebo-1] [INFO] [1772612465.541095191] [GazeboSimROS2ControlPlugin]: robot_param_node is robot_state_publisher
[ign gazebo-1] [INFO] [1772612465.541129903] [GazeboSimROS2ControlPlugin]: robot_param_node is robot_description
[spawner-21] [INFO] [1772612465.561830388] [jsb_spawner]: waiting for service /controller_manager/list_controllers to become available...
[planner_server-10] [INFO] [1772612465.572346103] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[ign gazebo-1] [INFO] [1772612465.588778015] [gz_ros2_control]: connected to service!! robot_state_publisher asking for robot_description
[ign gazebo-1] [INFO] [1772612465.699705322] [gz_ros2_control]: Received URDF from param server
[ign gazebo-1] [INFO] [1772612465.702677265] [gz_ros2_control]: The position_proportional_gain has been set to: 0.1
[ign gazebo-1] [INFO] [1772612465.702716904] [gz_ros2_control]: Loading joint: FL_hip_joint
[ign gazebo-1] [INFO] [1772612465.702724070] [gz_ros2_control]:         State:
[ign gazebo-1] [INFO] [1772612465.702729664] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702735730] [gz_ros2_control]:                  velocity
[ign gazebo-1] [INFO] [1772612465.702740946] [gz_ros2_control]:         Command:
[ign gazebo-1] [INFO] [1772612465.702745569] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702755500] [gz_ros2_control]: Loading joint: FL_thigh_joint
[ign gazebo-1] [INFO] [1772612465.702760445] [gz_ros2_control]:         State:
[ign gazebo-1] [INFO] [1772612465.702765023] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702769941] [gz_ros2_control]:                  velocity
[ign gazebo-1] [INFO] [1772612465.702774530] [gz_ros2_control]:         Command:
[ign gazebo-1] [INFO] [1772612465.702778989] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702786122] [gz_ros2_control]: Loading joint: FL_calf_joint
[ign gazebo-1] [INFO] [1772612465.702790999] [gz_ros2_control]:         State:
[ign gazebo-1] [INFO] [1772612465.702795543] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702800210] [gz_ros2_control]:                  velocity
[ign gazebo-1] [INFO] [1772612465.702804659] [gz_ros2_control]:         Command:
[ign gazebo-1] [INFO] [1772612465.702809049] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702815553] [gz_ros2_control]: Loading joint: FR_hip_joint
[ign gazebo-1] [INFO] [1772612465.702820349] [gz_ros2_control]:         State:
[ign gazebo-1] [INFO] [1772612465.702824892] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702829462] [gz_ros2_control]:                  velocity
[ign gazebo-1] [INFO] [1772612465.702833934] [gz_ros2_control]:         Command:
[ign gazebo-1] [INFO] [1772612465.702838365] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702844938] [gz_ros2_control]: Loading joint: FR_thigh_joint
[ign gazebo-1] [INFO] [1772612465.702849657] [gz_ros2_control]:         State:
[ign gazebo-1] [INFO] [1772612465.702854147] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702859045] [gz_ros2_control]:                  velocity
[ign gazebo-1] [INFO] [1772612465.702863741] [gz_ros2_control]:         Command:
[ign gazebo-1] [INFO] [1772612465.702868193] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702874516] [gz_ros2_control]: Loading joint: FR_calf_joint
[ign gazebo-1] [INFO] [1772612465.702879275] [gz_ros2_control]:         State:
[ign gazebo-1] [INFO] [1772612465.702883756] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702888221] [gz_ros2_control]:                  velocity
[ign gazebo-1] [INFO] [1772612465.702892833] [gz_ros2_control]:         Command:
[ign gazebo-1] [INFO] [1772612465.702898536] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702905303] [gz_ros2_control]: Loading joint: RL_hip_joint
[ign gazebo-1] [INFO] [1772612465.702909992] [gz_ros2_control]:         State:
[ign gazebo-1] [INFO] [1772612465.702914640] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702919189] [gz_ros2_control]:                  velocity
[ign gazebo-1] [INFO] [1772612465.702923772] [gz_ros2_control]:         Command:
[ign gazebo-1] [INFO] [1772612465.702928265] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702934644] [gz_ros2_control]: Loading joint: RL_thigh_joint
[ign gazebo-1] [INFO] [1772612465.702939393] [gz_ros2_control]:         State:
[ign gazebo-1] [INFO] [1772612465.702943891] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702948321] [gz_ros2_control]:                  velocity
[ign gazebo-1] [INFO] [1772612465.702952746] [gz_ros2_control]:         Command:
[ign gazebo-1] [INFO] [1772612465.702957163] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702963292] [gz_ros2_control]: Loading joint: RL_calf_joint
[ign gazebo-1] [INFO] [1772612465.702968008] [gz_ros2_control]:         State:
[ign gazebo-1] [INFO] [1772612465.702972484] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702979133] [gz_ros2_control]:                  velocity
[ign gazebo-1] [INFO] [1772612465.702983847] [gz_ros2_control]:         Command:
[ign gazebo-1] [INFO] [1772612465.702988388] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.702995315] [gz_ros2_control]: Loading joint: RR_hip_joint
[ign gazebo-1] [INFO] [1772612465.703000126] [gz_ros2_control]:         State:
[ign gazebo-1] [INFO] [1772612465.703004622] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.703011912] [gz_ros2_control]:                  velocity
[ign gazebo-1] [INFO] [1772612465.703016617] [gz_ros2_control]:         Command:
[ign gazebo-1] [INFO] [1772612465.703021250] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.703027547] [gz_ros2_control]: Loading joint: RR_thigh_joint
[ign gazebo-1] [INFO] [1772612465.703047331] [gz_ros2_control]:         State:
[ign gazebo-1] [INFO] [1772612465.703052456] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.703057021] [gz_ros2_control]:                  velocity
[ign gazebo-1] [INFO] [1772612465.703061495] [gz_ros2_control]:         Command:
[ign gazebo-1] [INFO] [1772612465.703065986] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.703072266] [gz_ros2_control]: Loading joint: RR_calf_joint
[ign gazebo-1] [INFO] [1772612465.703077067] [gz_ros2_control]:         State:
[ign gazebo-1] [INFO] [1772612465.703081531] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.703085990] [gz_ros2_control]:                  velocity
[ign gazebo-1] [INFO] [1772612465.703090462] [gz_ros2_control]:         Command:
[ign gazebo-1] [INFO] [1772612465.703094844] [gz_ros2_control]:                  position
[ign gazebo-1] [INFO] [1772612465.703170465] [resource_manager]: Initialize hardware 'GazeboSimSystem'
[ign gazebo-1] [INFO] [1772612465.703201522] [resource_manager]: Successful initialization of hardware 'GazeboSimSystem'
[ign gazebo-1] [INFO] [1772612465.703223527] [resource_manager]: 'configure' hardware 'GazeboSimSystem'
[ign gazebo-1] [INFO] [1772612465.703227060] [gz_ros2_control]: System Successfully configured!
[ign gazebo-1] [INFO] [1772612465.703235069] [resource_manager]: Successful 'configure' of hardware 'GazeboSimSystem'
[ign gazebo-1] [INFO] [1772612465.703240833] [resource_manager]: 'activate' hardware 'GazeboSimSystem'
[ign gazebo-1] [INFO] [1772612465.703244764] [resource_manager]: Successful 'activate' of hardware 'GazeboSimSystem'
[ign gazebo-1] [INFO] [1772612465.703248711] [gz_ros2_control]: Loading controller_manager
[ign gazebo-1] [WARN] [1772612465.734904035] [gz_ros2_control]:  Desired controller update period (0.01 s) is slower than the gazebo simulation period (0.001 s).
[ign gazebo-1] [INFO] [1772612465.814042758] [controller_manager]: Loading controller 'joint_state_broadcaster'
[spawner-21] [INFO] [1772612465.820983042] [jsb_spawner]: Loaded joint_state_broadcaster
[ign gazebo-1] [INFO] [1772612465.822171673] [controller_manager]: Configuring controller 'joint_state_broadcaster'
[ign gazebo-1] [INFO] [1772612465.822251250] [joint_state_broadcaster]: 'joints' or 'interfaces' parameter is empty. All available state interfaces will be published
[rviz2-4] [INFO] [1772612465.824886100] [rviz2]: Stereo is NOT SUPPORTED
[rviz2-4] [INFO] [1772612465.824941485] [rviz2]: OpenGl version: 4.5 (GLSL 4.5)
[rviz2-4] [INFO] [1772612465.932556875] [rviz2]: Stereo is NOT SUPPORTED
[planner_server-10] [INFO] [1772612466.072354100] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[ign gazebo-1] VMware: No 3D enabled (0, Success).
[ign gazebo-1] libEGL warning: egl: failed to create dri2 screen
[ign gazebo-1] VMware: No 3D enabled (0, Success).
[ign gazebo-1] libEGL warning: egl: failed to create dri2 screen
[planner_server-10] [INFO] [1772612466.572396874] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[ign gazebo-1] VMware: No 3D enabled (0, 成功).
[ign gazebo-1] libEGL warning: egl: failed to create dri2 screen
[ign gazebo-1] VMware: No 3D enabled (0, 成功).
[ign gazebo-1] libEGL warning: egl: failed to create dri2 screen
[planner_server-10] [INFO] [1772612467.072335396] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[planner_server-10] [INFO] [1772612467.572344207] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[planner_server-10] [INFO] [1772612468.072345200] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[planner_server-10] [INFO] [1772612468.572353233] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[planner_server-10] [INFO] [1772612469.072339661] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[planner_server-10] [INFO] [1772612469.572366469] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[planner_server-10] [INFO] [1772612470.072404285] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[spawner-21] [INFO] [1772612470.264356481] [jsb_spawner]: Configured and activated joint_state_broadcaster
[INFO] [spawner-21]: process has finished cleanly [pid 31841]
[INFO] [spawner-22]: process started with pid [32190]
[planner_server-10] [INFO] [1772612470.572407661] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[spawner-22] [INFO] [1772612470.581429091] [legs_spawner]: waiting for service /controller_manager/list_controllers to become available...
[planner_server-10] [INFO] [1772612471.072384100] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[planner_server-10] [INFO] [1772612471.572370776] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[ign gazebo-1] [INFO] [1772612471.616136533] [controller_manager]: Loading controller 'legs_controller'
[ign gazebo-1] [WARN] [1772612471.646968632] [legs_controller]: [Deprecated]: "allow_nonzero_velocity_at_trajectory_end" is set to true. The default behavior will change to false.
[spawner-22] [INFO] [1772612471.655057205] [legs_spawner]: Loaded legs_controller
[ign gazebo-1] [INFO] [1772612471.656624221] [controller_manager]: Configuring controller 'legs_controller'
[ign gazebo-1] [INFO] [1772612471.656790966] [legs_controller]: No specific joint names are used for command interfaces. Using 'joints' parameter.
[ign gazebo-1] [INFO] [1772612471.656807810] [legs_controller]: Command interfaces are [position] and state interfaces are [position velocity].
[ign gazebo-1] [INFO] [1772612471.656826149] [legs_controller]: Using 'splines' interpolation method.
[ign gazebo-1] [INFO] [1772612471.658016063] [legs_controller]: Controller state will be published at 50.00 Hz.
[ign gazebo-1] [INFO] [1772612471.660467885] [legs_controller]: Action status changes will be monitored at 20.00 Hz.
[spawner-22] [INFO] [1772612471.698470113] [legs_spawner]: Configured and activated legs_controller
[INFO] [spawner-22]: process has finished cleanly [pid 32190]
[planner_server-10] [INFO] [1772612472.072360729] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[rviz2-4] [INFO] [1772612472.392299051] [rviz]: Message Filter dropping message: frame 'laser_up' at time 0.003 for reason 'discarding message because the queue is full'
[planner_server-10] [INFO] [1772612472.572368348] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[rviz2-4] [INFO] [1772612472.591262921] [rviz]: Message Filter dropping message: frame 'laser_up' at time 0.100 for reason 'discarding message because the queue is full'
[rviz2-4] [INFO] [1772612472.790944605] [rviz]: Message Filter dropping message: frame 'laser_up' at time 0.200 for reason 'discarding message because the queue is full'
[rviz2-4] [INFO] [1772612472.990852394] [rviz]: Message Filter dropping message: frame 'laser_up' at time 0.300 for reason 'discarding message because the queue is full'
[planner_server-10] [INFO] [1772612473.072391069] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Invalid frame ID "map" passed to canTransform argument target_frame - frame does not exist
[INFO] [robot_state_publisher-23]: process started with pid [32207]
[INFO] [quadruped_controller_node-24]: process started with pid [32209]
[INFO] [state_estimation_node-25]: process started with pid [32211]
[INFO] [ekf_node-26]: process started with pid [32213]
[state_estimation_node-25] [INFO] [1772612473.162061652] [rclcpp]: Successfully parsed urdf file
[robot_state_publisher-23] [WARN] [1772612473.165203324] [kdl_parser]: The root link base has an inertia specified in the URDF, but KDL does not support a root link with an inertia.  As a workaround, you can add an extra dummy link to your URDF.
[robot_state_publisher-23] [INFO] [1772612473.165287478] [robot_state_publisher]: got segment FL_calf
[robot_state_publisher-23] [INFO] [1772612473.165320121] [robot_state_publisher]: got segment FL_calf_rotor
[robot_state_publisher-23] [INFO] [1772612473.165325474] [robot_state_publisher]: got segment FL_calflower
[robot_state_publisher-23] [INFO] [1772612473.165330046] [robot_state_publisher]: got segment FL_calflower1
[robot_state_publisher-23] [INFO] [1772612473.165334488] [robot_state_publisher]: got segment FL_foot
[robot_state_publisher-23] [INFO] [1772612473.165338964] [robot_state_publisher]: got segment FL_hip
[robot_state_publisher-23] [INFO] [1772612473.165343319] [robot_state_publisher]: got segment FL_hip_rotor
[robot_state_publisher-23] [INFO] [1772612473.165347720] [robot_state_publisher]: got segment FL_thigh
[robot_state_publisher-23] [INFO] [1772612473.165352105] [robot_state_publisher]: got segment FL_thigh_rotor
[robot_state_publisher-23] [INFO] [1772612473.165356575] [robot_state_publisher]: got segment FR_calf
[robot_state_publisher-23] [INFO] [1772612473.165361066] [robot_state_publisher]: got segment FR_calf_rotor
[robot_state_publisher-23] [INFO] [1772612473.165365471] [robot_state_publisher]: got segment FR_calflower
[robot_state_publisher-23] [INFO] [1772612473.165369821] [robot_state_publisher]: got segment FR_calflower1
[robot_state_publisher-23] [INFO] [1772612473.165374254] [robot_state_publisher]: got segment FR_foot
[robot_state_publisher-23] [INFO] [1772612473.165378635] [robot_state_publisher]: got segment FR_hip
[robot_state_publisher-23] [INFO] [1772612473.165383030] [robot_state_publisher]: got segment FR_hip_rotor
[robot_state_publisher-23] [INFO] [1772612473.165387490] [robot_state_publisher]: got segment FR_thigh
[robot_state_publisher-23] [INFO] [1772612473.165391900] [robot_state_publisher]: got segment FR_thigh_rotor
[robot_state_publisher-23] [INFO] [1772612473.165396364] [robot_state_publisher]: got segment Head_lower
[robot_state_publisher-23] [INFO] [1772612473.165400765] [robot_state_publisher]: got segment Head_upper
[robot_state_publisher-23] [INFO] [1772612473.165405178] [robot_state_publisher]: got segment RL_calf
[robot_state_publisher-23] [INFO] [1772612473.165409565] [robot_state_publisher]: got segment RL_calf_rotor
[robot_state_publisher-23] [INFO] [1772612473.165413979] [robot_state_publisher]: got segment RL_calflower
[robot_state_publisher-23] [INFO] [1772612473.165418363] [robot_state_publisher]: got segment RL_calflower1
[robot_state_publisher-23] [INFO] [1772612473.165422726] [robot_state_publisher]: got segment RL_foot
[robot_state_publisher-23] [INFO] [1772612473.165427101] [robot_state_publisher]: got segment RL_hip
[robot_state_publisher-23] [INFO] [1772612473.165431477] [robot_state_publisher]: got segment RL_hip_rotor
[robot_state_publisher-23] [INFO] [1772612473.165435859] [robot_state_publisher]: got segment RL_thigh
[robot_state_publisher-23] [INFO] [1772612473.165440274] [robot_state_publisher]: got segment RL_thigh_rotor
[robot_state_publisher-23] [INFO] [1772612473.165444674] [robot_state_publisher]: got segment RR_calf
[robot_state_publisher-23] [INFO] [1772612473.165449062] [robot_state_publisher]: got segment RR_calf_rotor
[robot_state_publisher-23] [INFO] [1772612473.165453450] [robot_state_publisher]: got segment RR_calflower
[robot_state_publisher-23] [INFO] [1772612473.165457849] [robot_state_publisher]: got segment RR_calflower1
[robot_state_publisher-23] [INFO] [1772612473.165462239] [robot_state_publisher]: got segment RR_foot
[robot_state_publisher-23] [INFO] [1772612473.165466686] [robot_state_publisher]: got segment RR_hip
[robot_state_publisher-23] [INFO] [1772612473.165488857] [robot_state_publisher]: got segment RR_hip_rotor
[robot_state_publisher-23] [INFO] [1772612473.165493772] [robot_state_publisher]: got segment RR_thigh
[robot_state_publisher-23] [INFO] [1772612473.165499576] [robot_state_publisher]: got segment RR_thigh_rotor
[robot_state_publisher-23] [INFO] [1772612473.165504081] [robot_state_publisher]: got segment base
[robot_state_publisher-23] [INFO] [1772612473.165508470] [robot_state_publisher]: got segment front_camera
[robot_state_publisher-23] [INFO] [1772612473.165512796] [robot_state_publisher]: got segment imu
[robot_state_publisher-23] [INFO] [1772612473.165517157] [robot_state_publisher]: got segment radar
[quadruped_controller_node-24] [INFO] [1772612473.165687611] [rclcpp]: Successfully parsed urdf file
[rviz2-4] [INFO] [1772612473.191433390] [rviz]: Message Filter dropping message: frame 'laser_up' at time 0.400 for reason 'discarding message because the queue is full'
[cartographer_node-18] [INFO] [1772612473.276749740] [cartographer logger]: I0304 16:21:13.000000 31523 ordered_multi_queue.cc:172] All sensor data for trajectory 0 is available starting at '621355968015400000'.
[rviz2-4] [INFO] [1772612473.402723944] [rviz]: Message Filter dropping message: frame 'laser_up' at time 0.500 for reason 'discarding message because the queue is full'
[cartographer_node-18] [WARN] [1772612473.534240492] [cartographer logger]: W0304 16:21:13.000000 31523 pose_extrapolator.cc:168] Queue too short for velocity estimation. Queue duration: 0 s
[cartographer_node-18] [INFO] [1772612473.535084973] [cartographer logger]: I0304 16:21:13.000000 31523 pose_graph_2d.cc:148] Inserted submap (0, 0).
[planner_server-10] [INFO] [1772612473.572412172] [global_costmap.global_costmap]: Timed out waiting for transform from base to map to become available, tf error: Lookup would require extrapolation into the past.  Requested time 1.640000 but the earliest data is at time 1.650000, when looking up transform from frame [base] to frame [map]
[rviz2-4] [INFO] [1772612473.634823473] [rviz]: Message Filter dropping message: frame 'laser_up' at time 0.600 for reason 'discarding message because the queue is full'
[rviz2-4] [INFO] [1772612473.758947249] [rviz]: Message Filter dropping message: frame 'laser_up' at time 0.700 for reason 'discarding message because the queue is full'
[planner_server-10] [INFO] [1772612474.072600621] [global_costmap.global_costmap]: start
[planner_server-10] [INFO] [1772612474.254335125] [global_costmap.global_costmap]: StaticLayer: Resizing costmap to 138 X 112 at 0.050000 m/pix
[rviz2-4] [INFO] [1772612474.319858535] [rviz2]: Trying to create a map of size 138 x 112 using 1 swatches
[rviz2-4] [ERROR] [1772612474.339616835] [rviz2]: Vertex Program:rviz/glsl120/indexed_8bit_image.vert Fragment Program:rviz/glsl120/indexed_8bit_image.frag GLSL link result :
[rviz2-4] active samplers with a different type refer to the same texture image unit
[planner_server-10] [INFO] [1772612475.073514726] [planner_server]: Activating plugin GridBased of type NavfnPlanner
[planner_server-10] [INFO] [1772612475.074936246] [planner_server]: Creating bond (planner_server) to lifecycle manager.
[rviz2-4] [INFO] [1772612475.131549242] [rviz2]: Trying to create a map of size 138 x 112 using 1 swatches
[lifecycle_manager-17] [INFO] [1772612475.180467293] [dog_lifecycle_manager]: Server planner_server connected with bond.
[lifecycle_manager-17] [INFO] [1772612475.180556985] [dog_lifecycle_manager]: Activating controller_server
[controller_server-11] [INFO] [1772612475.181034383] [controller_server]: Activating
[controller_server-11] [INFO] [1772612475.181077174] [local_costmap.local_costmap]: Activating
[controller_server-11] [INFO] [1772612475.181087363] [local_costmap.local_costmap]: Checking transform
[controller_server-11] [INFO] [1772612475.181159127] [local_costmap.local_costmap]: start
[controller_server-11] [INFO] [1772612475.382504796] [controller_server]: Creating bond (controller_server) to lifecycle manager.
[rviz2-4] [INFO] [1772612475.478931429] [rviz2]: Trying to create a map of size 120 x 120 using 1 swatches
[lifecycle_manager-17] [INFO] [1772612475.487380965] [dog_lifecycle_manager]: Server controller_server connected with bond.
[lifecycle_manager-17] [INFO] [1772612475.487426518] [dog_lifecycle_manager]: Activating smoother_server
[smoother_server-12] [INFO] [1772612475.487773789] [smoother_server]: Activating
[smoother_server-12] [INFO] [1772612475.487812457] [smoother_server]: Creating bond (smoother_server) to lifecycle manager.
[lifecycle_manager-17] [INFO] [1772612475.591727872] [dog_lifecycle_manager]: Server smoother_server connected with bond.
[lifecycle_manager-17] [INFO] [1772612475.591771411] [dog_lifecycle_manager]: Activating velocity_smoother
[velocity_smoother-13] [INFO] [1772612475.592012811] [velocity_smoother]: Activating
[velocity_smoother-13] [INFO] [1772612475.592066035] [velocity_smoother]: Creating bond (velocity_smoother) to lifecycle manager.
[lifecycle_manager-17] [INFO] [1772612475.697148078] [dog_lifecycle_manager]: Server velocity_smoother connected with bond.
[lifecycle_manager-17] [INFO] [1772612475.697186511] [dog_lifecycle_manager]: Activating behavior_server
[behavior_server-14] [INFO] [1772612475.697458957] [behavior_server]: Activating
[behavior_server-14] [INFO] [1772612475.697492480] [behavior_server]: Activating spin
[behavior_server-14] [INFO] [1772612475.697502186] [behavior_server]: Activating backup
[behavior_server-14] [INFO] [1772612475.697509452] [behavior_server]: Activating drive_on_heading
[behavior_server-14] [INFO] [1772612475.697516348] [behavior_server]: Activating assisted_teleop
[behavior_server-14] [INFO] [1772612475.697523143] [behavior_server]: Activating wait
[behavior_server-14] [INFO] [1772612475.697532288] [behavior_server]: Creating bond (behavior_server) to lifecycle manager.
[lifecycle_manager-17] [INFO] [1772612475.801717580] [dog_lifecycle_manager]: Server behavior_server connected with bond.
[lifecycle_manager-17] [INFO] [1772612475.801757688] [dog_lifecycle_manager]: Activating waypoint_follower
[waypoint_follower-15] [INFO] [1772612475.802063009] [waypoint_follower]: Activating
[waypoint_follower-15] [INFO] [1772612475.802127427] [waypoint_follower]: Creating bond (waypoint_follower) to lifecycle manager.
[lifecycle_manager-17] [INFO] [1772612475.908755566] [dog_lifecycle_manager]: Server waypoint_follower connected with bond.
[lifecycle_manager-17] [INFO] [1772612475.908794293] [dog_lifecycle_manager]: Activating bt_navigator
[bt_navigator-16] [INFO] [1772612475.909017122] [bt_navigator]: Activating
[bt_navigator-16] [INFO] [1772612475.985742400] [bt_navigator]: Creating bond (bt_navigator) to lifecycle manager.
[lifecycle_manager-17] [INFO] [1772612476.092387014] [dog_lifecycle_manager]: Server bt_navigator connected with bond.
[lifecycle_manager-17] [INFO] [1772612476.092454465] [dog_lifecycle_manager]: Managed nodes are active
[lifecycle_manager-17] [INFO] [1772612476.092467372] [dog_lifecycle_manager]: Creating bond timer...
[cartographer_node-18] [INFO] [1772612478.355414499] [cartographer logger]: I0304 16:21:18.000000 31523 collated_trajectory_builder.cc:81] odom rate: 16.00 Hz 6.25e-02 s +/- 2.36e-02 s (pulsed at 51.86% real time)
[cartographer_node-18] [INFO] [1772612478.355477985] [cartographer logger]: I0304 16:21:18.000000 31523 collated_trajectory_builder.cc:81] scan rate: 10.00 Hz 1.00e-01 s +/- 2.83e-17 s (pulsed at 53.81% real time)
[rviz2-4] [INFO] [1772612488.712895218] [rviz2]: Setting goal pose: Frame:map, Position(2.47242, -1.40766, 0), Orientation(0, 0, 0.188899, 0.981997) = Angle: 0.380081
[bt_navigator-16] [INFO] [1772612488.713730248] [bt_navigator]: Begin navigating from current location (0.01, -0.00) to (2.47, -1.41)
[controller_server-11] [INFO] [1772612488.734684294] [controller_server]: Received a goal, begin computing control effort.
[controller_server-11] [WARN] [1772612488.734780308] [controller_server]: No goal checker was specified in parameter 'current_goal_checker'. Server will use only plugin loaded general_goal_checker . This warning will appear once.
[parameter_bridge-3] [INFO] [1772612488.761306425] [ros_gz_bridge]: Passing message from ROS geometry_msgs/msg/Twist to Gazebo gz.msgs.Twist (showing msg only once per type)
[controller_server-11] [INFO] [1772612488.835487290] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612488.935473212] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612488.985485339] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612489.085463946] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612489.135445604] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612489.235453980] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612489.335456785] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612489.385448896] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612489.485450571] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612489.535447968] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612489.635461874] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612489.685451483] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612489.785476490] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612489.885451995] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612489.935455471] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612490.035468799] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612490.085475514] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612490.185459498] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612490.235703028] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612490.335454941] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612490.435468507] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612490.485458269] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612490.585493552] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612490.635461526] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612490.735479172] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612490.785448521] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612490.885455399] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612490.985458952] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612491.035477910] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612491.135459604] [controller_server]: Passing new path to controller.
[rviz2-4] [INFO] [1772612491.144283268] [rviz]: Message Filter dropping message: frame 'laser_up' at time 0.800 for reason 'the timestamp on the message is earlier than all the data in the transform cache'
[controller_server-11] [INFO] [1772612491.185471841] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612491.285459881] [controller_server]: Passing new path to controller.
[rviz2-4] [INFO] [1772612491.325244280] [rviz]: Message Filter dropping message: frame 'laser_up' at time 0.900 for reason 'the timestamp on the message is earlier than all the data in the transform cache'
[controller_server-11] [INFO] [1772612491.385459284] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612491.435451812] [controller_server]: Passing new path to controller.
[rviz2-4] [INFO] [1772612491.519833769] [rviz]: Message Filter dropping message: frame 'laser_up' at time 1.000 for reason 'the timestamp on the message is earlier than all the data in the transform cache'
[controller_server-11] [INFO] [1772612491.535465481] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612491.585486437] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612491.685490672] [controller_server]: Passing new path to controller.
[rviz2-4] [INFO] [1772612491.711848983] [rviz]: Message Filter dropping message: frame 'laser_up' at time 1.100 for reason 'the timestamp on the message is earlier than all the data in the transform cache'
[controller_server-11] [INFO] [1772612491.785455305] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612491.835455759] [controller_server]: Passing new path to controller.
[rviz2-4] [INFO] [1772612491.896871488] [rviz]: Message Filter dropping message: frame 'laser_up' at time 1.200 for reason 'the timestamp on the message is earlier than all the data in the transform cache'
[controller_server-11] [INFO] [1772612491.935462285] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612491.985453019] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612492.085463119] [controller_server]: Passing new path to controller.
[rviz2-4] [INFO] [1772612492.087130075] [rviz]: Message Filter dropping message: frame 'laser_up' at time 1.300 for reason 'the timestamp on the message is earlier than all the data in the transform cache'
[controller_server-11] [INFO] [1772612492.135433891] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612492.235461590] [controller_server]: Passing new path to controller.
[rviz2-4] [INFO] [1772612492.279169176] [rviz]: Message Filter dropping message: frame 'laser_up' at time 1.400 for reason 'the timestamp on the message is earlier than all the data in the transform cache'
[controller_server-11] [INFO] [1772612492.335475625] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612492.385459294] [controller_server]: Passing new path to controller.
[rviz2-4] [INFO] [1772612492.467591644] [rviz]: Message Filter dropping message: frame 'laser_up' at time 1.500 for reason 'the timestamp on the message is earlier than all the data in the transform cache'
[controller_server-11] [INFO] [1772612492.485465439] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612492.535465531] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612492.635460749] [controller_server]: Passing new path to controller.
[rviz2-4] [INFO] [1772612492.669824943] [rviz]: Message Filter dropping message: frame 'laser_up' at time 1.600 for reason 'the timestamp on the message is earlier than all the data in the transform cache'
[controller_server-11] [INFO] [1772612492.685458576] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612492.785573702] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612492.885468998] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612492.935485293] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612493.035495475] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612493.085460993] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612493.185473059] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612493.235462624] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612493.335473539] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612493.385456093] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612493.485470743] [controller_server]: Passing new path to controller.
[cartographer_node-18] [INFO] [1772612493.487866299] [cartographer logger]: I0304 16:21:33.000000 31523 collated_trajectory_builder.cc:81] odom rate: 16.03 Hz 6.24e-02 s +/- 2.34e-02 s (pulsed at 52.18% real time)
[cartographer_node-18] [INFO] [1772612493.487902780] [cartographer logger]: I0304 16:21:33.000000 31523 collated_trajectory_builder.cc:81] scan rate: 10.00 Hz 1.00e-01 s +/- 1.54e-16 s (pulsed at 52.19% real time)
[controller_server-11] [INFO] [1772612493.585452269] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612493.635475471] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612493.685491155] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612493.785457217] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612493.835451394] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612493.935463116] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612494.035478153] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612494.085471227] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612494.185464521] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612494.235452617] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612494.335459909] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612494.385452335] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612494.485477722] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612494.585463670] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612494.735473523] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612494.785465115] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612494.885464336] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612494.985468054] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612495.035452475] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612495.135464214] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612495.185460785] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612495.285478463] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612495.335450603] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612495.435452316] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612495.535485980] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612495.585468986] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612495.685458901] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612495.735452716] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612495.835471483] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612495.935462841] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612495.985472144] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612496.085455380] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612496.135466206] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612496.235676779] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612496.285487129] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612496.385458044] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612496.485453039] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612496.535473684] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612496.635500306] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612496.685467752] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612496.785473564] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612496.885457158] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612496.935459457] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612497.035456878] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612497.085453754] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612497.185493968] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612497.285458301] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612497.335467958] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612497.435456546] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612497.485464373] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612497.585475656] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612497.685474065] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612497.735459994] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612497.835494928] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612497.985460304] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612498.085459581] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612498.135489915] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612498.235513764] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612498.285454816] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612498.385442321] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612498.435455027] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612498.535675308] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612498.585475485] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612498.685458455] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612498.785478542] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612498.835459134] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612498.935513644] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612498.985613124] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612499.085446255] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612499.185458439] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612499.235460435] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612499.335451903] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612499.385451555] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612499.485479175] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612499.535463035] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612499.635506335] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612499.735489485] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612499.785449133] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612499.885480865] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612499.935462061] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612500.135571678] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612500.185466647] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612500.285476166] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612500.335456544] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612500.485480173] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612500.585451801] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612500.635474416] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612500.735466032] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612500.835461767] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612500.885468971] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612500.985452960] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612501.035455225] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612501.135456709] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612501.235480117] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612501.285459518] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612501.388687510] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612501.435460801] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612501.535469814] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612501.635499069] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612501.685461426] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612501.785459311] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612501.835459146] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612501.935464949] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612501.985475915] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612502.085469660] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612502.185441261] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612502.235457578] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612502.335464756] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612502.385472229] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612502.485452365] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612502.535530708] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612502.635479285] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612502.785448144] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612502.885458567] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612502.935450110] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612503.035469592] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612503.135461986] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612503.185466418] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612503.285456390] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612503.335474913] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612503.435460498] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612503.485470735] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612503.585455196] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612503.685472260] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612503.735476561] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612503.835463400] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612503.885479819] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612503.985456555] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612504.085484183] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612504.135464915] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612504.285469116] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612504.385456369] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612504.485448329] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612504.535456928] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612504.635462528] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612504.685453249] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612504.785451289] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612504.835456930] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612504.935463397] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612504.985456060] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612505.085462241] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612505.135465391] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612505.235466275] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612505.335451993] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612505.385462395] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612505.485455555] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612505.535464570] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612505.635456550] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612505.735463404] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612505.785464693] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612505.885457610] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612505.935465275] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612506.035465836] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612506.135456247] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612506.185468842] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612506.285461616] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612506.335491358] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612506.435470539] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612506.585459388] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612506.685487381] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612506.735454588] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612506.835490180] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612506.935462015] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612506.985470107] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612507.085476480] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612507.135464419] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612507.235481459] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612507.335477652] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612507.385471409] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612507.485486459] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612507.535464842] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612507.635477459] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612507.685483134] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612507.785460882] [controller_server]: Passing new path to controller.
[controller_server-11] [ERROR] [1772612507.835509705] [controller_server]: Failed to make progress
[controller_server-11] [WARN] [1772612507.835588202] [controller_server]: [follow_path] [ActionServer] Aborting handle.
[controller_server-11] [INFO] [1772612507.844561572] [controller_server]: Received a goal, begin computing control effort.
[controller_server-11] [INFO] [1772612507.944957267] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612508.044950245] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612508.095009293] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612508.194957728] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612508.244970550] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612508.344959565] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612508.444963024] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612508.495110520] [controller_server]: Passing new path to controller.
[cartographer_node-18] [INFO] [1772612508.547462327] [cartographer logger]: I0304 16:21:48.000000 31523 collated_trajectory_builder.cc:81] odom rate: 16.03 Hz 6.24e-02 s +/- 2.34e-02 s (pulsed at 52.38% real time)
[cartographer_node-18] [INFO] [1772612508.547550434] [cartographer logger]: I0304 16:21:48.000000 31523 collated_trajectory_builder.cc:81] scan rate: 10.00 Hz 1.00e-01 s +/- 1.54e-16 s (pulsed at 52.45% real time)
[controller_server-11] [INFO] [1772612508.594985085] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612508.644957551] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612508.744941298] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612508.844960754] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612508.894987175] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612508.994947058] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612509.044949704] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612509.144974027] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612509.244951862] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612509.294957634] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612509.394959460] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612509.444992969] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612509.544977077] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612509.594971132] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612509.694958408] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612509.794960170] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612509.844961440] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612509.944977335] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612509.994950649] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612510.094949403] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612510.194966628] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612510.244957736] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612510.344967890] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612510.394966311] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612510.494950987] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612510.544968976] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612510.644948131] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612510.744950795] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612510.794953323] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612510.944976955] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612511.044970464] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612511.144967409] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612511.194955551] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612511.294952561] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612511.344959852] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612511.444962683] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612511.544974014] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612511.594973368] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612511.694956501] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612511.744958229] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612511.894971132] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612511.994961150] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612512.094980841] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612512.144958953] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612512.244966746] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612512.294948372] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612512.394967916] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612512.444948050] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612512.544957265] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612512.644957793] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612512.694967464] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612512.794958878] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612512.844957556] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612512.944953648] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612512.994955854] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612513.095006549] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612513.194977357] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612513.244960115] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612513.344954315] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612513.394954146] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612513.494958021] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612513.594986742] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612513.644947055] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612513.744964822] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612513.794978962] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612513.894977203] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612513.994969902] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612514.044956316] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612514.145117395] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612514.194948142] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612514.294984220] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612514.394950047] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612514.444963472] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612514.544957702] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612514.594949017] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612514.694952589] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612514.794956593] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612514.844962018] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612514.944968224] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612514.994955910] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612515.094967892] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612515.144975318] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612515.244958962] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612515.344958963] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612515.394961788] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612515.494951206] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612515.544956209] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612515.644962938] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612515.694968028] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612515.794955112] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612515.894978716] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612515.944952047] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612516.044959406] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612516.094955499] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612516.194978383] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612516.294964296] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612516.344967538] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612516.444947163] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612516.494949120] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612516.594957511] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612516.694952473] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612516.744955806] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612516.844967694] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612516.894944231] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612516.994954649] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612517.094955218] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612517.144975410] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612517.244973231] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612517.294983394] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612517.394956137] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612517.494973881] [controller_server]: Passing new path to controller.
[bt_navigator-16] [WARN] [1772612517.544115645] [BehaviorTreeEngine]: Behavior Tree tick rate 100.00 was exceeded!
[controller_server-11] [INFO] [1772612517.545006848] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612517.644965376] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612517.694985117] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612517.794957631] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612517.894951761] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612517.944964817] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612518.044962725] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612518.094954337] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612518.194977610] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612518.344957195] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612518.445054145] [controller_server]: Passing new path to controller.
[controller_server-11] [INFO] [1772612518.494971552] [controller_server]: Passing new path to controlle