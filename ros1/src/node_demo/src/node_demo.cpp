#include <ros/ros.h>
#include <std_msgs/String.h>


void call_back(const std_msgs::String::ConstPtr& msg){
    ROS_INFO("Received message is:%s ", msg->data.c_str());
}

int main(int argc, char** argv){

    ros::init(argc,argv,"node_demo");
    ros::NodeHandle hd;

    ros::Subscriber sub = hd.subscribe("my_topic",10,call_back);
    
    ros::spin();

    return 0;
}