#include <ros/ros.h>
#include <string>

int main(int argc, char** argv){

    ros::init(argc, argv, "param_demo");
    ros::NodeHandle nh;
    
    std::string name;
    int age;
    
    bool if_get1 = ros::param::get("name",name);
    bool if_get2 = ros::param::get("age", age);

    if(if_get1) ROS_INFO("Get name %s", name.c_str());
    if(if_get2) ROS_INFO("Get age %d", age);

    return 0;
}