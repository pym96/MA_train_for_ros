#include <ros/ros.h>
#include <node_demo/UserType.h>

void userTypeCallback(const node_demo::UserType::ConstPtr& msg){
    // 处理接受的消息
    ROS_INFO("Received User Type Message:");
    ROS_INFO("Header Stamp: %f",msg->demo_header.stamp.toSec());
    ROS_INFO("Demo bool: %s",msg->demo_bool ? "true" : "false");
    ROS_INFO("Demo floats");
    for(float value : msg->demo_floats){
        ROS_INFO("  %f", value);
    }
}

int main(int argc, char** argv){
    
    ros::init(argc,argv, "demo_message_subsriber");
    ros::NodeHandle hd;
    
    ros::Subscriber sub = hd.subscribe("user_type_topic",10,userTypeCallback);


    ros::spin();


    return 0;
}