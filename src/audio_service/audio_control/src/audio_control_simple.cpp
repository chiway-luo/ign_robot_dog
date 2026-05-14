#include "rclcpp/rclcpp.hpp"
#include "geometry_msgs/msg/twist.hpp" //速度消息
#include "std_msgs/msg/string.hpp" //字符串消息

/*
    需求:订阅语音转换文本的输出(/voicewords),提取文本,并根据文本内容控制小车的运动(前进,后退,左转,右转,停止)
    流程:
        1.包含头文件
        2.初始化ros2客户端
        3.自定义节点类
            3-1
            3-2
            3-3
        4.调用spin函数,并传入节点对象指针
        5.释放资源
*/

using namespace std::chrono_literals; //使用时间命名空间
using namespace std::placeholders; //占位符命名空间

class AudioContorl :public rclcpp::Node{
public:
    AudioContorl(std::string str1):Node(str1){
        RCLCPP_INFO(this->get_logger(),"namesapce:  node: %s 节点创建成功",str1.c_str());

        //创建订阅者
        subscription_ = this->create_subscription<std_msgs::msg::String>(
            "voicewords",10,std::bind(&AudioContorl::txt_cb,this,_1)
        );

        //创建发布方
        publisher_ = this->create_publisher<geometry_msgs::msg::Twist>("/cmd_vel",10);

    }

private:
    rclcpp::Subscription<std_msgs::msg::String>::SharedPtr subscription_;
    rclcpp::Publisher<geometry_msgs::msg::Twist>::SharedPtr publisher_;

    //回调函数
    void txt_cb(const std_msgs::msg::String::SharedPtr msg){
        RCLCPP_INFO(this->get_logger(),"订阅到的文本消息: %s",msg->data.c_str());

        //根据文本内容控制小车运动
        geometry_msgs::msg::Twist twist_msg;
        twist_msg.linear.x = 0.0; //线速度
        twist_msg.angular.z = 0.0; //角速度

        if(msg->data.find("前进") != std::string::npos){
            twist_msg.linear.x = 0.5; //前进速度
        }else if(msg->data.find("后退") != std::string::npos){
            twist_msg.linear.x = -0.5; //后退速度
        }else if(msg->data.find("左转") != std::string::npos){
            twist_msg.angular.z = 0.5; //左转速度
        }else if(msg->data.find("右转") != std::string::npos){
            twist_msg.angular.z = -0.5; //右转速度
        }else if(msg->data.find("停止") != std::string::npos){
            twist_msg.linear.x = 0.0; //停止线速度
            twist_msg.angular.z = 0.0; //停止角速度
        }else{
            RCLCPP_WARN(this->get_logger(),"无法识别的指令: %s",msg->data.c_str());
            return;
        }

        //发布控制命令
        publisher_->publish(twist_msg);
    }
};

int main(int argc, char * argv[])
{
    //初始化ros2客户端
    rclcpp::init(argc,argv);

    //调用spin函数,使用自定义类对象指针
    rclcpp::spin(std::make_shared<AudioContorl>("AudioContorl_node_cpp"));//node_name, (namespace可选)

    //释放资源
    rclcpp::shutdown();
    return 0;
}