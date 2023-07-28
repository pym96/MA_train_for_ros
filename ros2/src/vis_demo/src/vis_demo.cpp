#include <iterator>
#include <rclcpp/rclcpp.hpp>
#include <utility>
#include <visualization_msgs/msg/detail/marker__struct.hpp>
#include <visualization_msgs/msg/marker.hpp>


int main(int argc, char** argv){

    rclcpp::init(argc, argv);
    
    auto node = rclcpp::Node::make_shared("marker_publisher");

    // Create a marker publisher 
    auto marker_publisher = node->create_publisher<visualization_msgs::msg::Marker>(
        "visualization_demo", 10);

    // Setting marker message
    visualization_msgs::msg::Marker marker;

    marker.header.frame_id = "base_link";
    marker.header.stamp  = node->get_clock()->now();

    marker.ns = "base_demo";
    marker.id = 0;

    marker.type = visualization_msgs::msg::Marker::CUBE;
    marker.action = visualization_msgs::msg::Marker::ADD;
    
    marker.pose.position.x = 1.0;
    marker.pose.position.y = 2.0;
    marker.pose.position.z = 0.5;
    
    marker.pose.orientation.x = 0.0;
    marker.pose.orientation.y = 0.0;
    marker.pose.orientation.z = 0.0;
    marker.pose.orientation.w = 1.0;
    
    marker.scale.x = 0.2;
    marker.scale.y = 0.2;
    marker.scale.z = 0.2;
    
    marker.color.r = 1.0;
    marker.color.b = 0.0;
    marker.color.g = 0.0;
    marker.color.a = 1.0;

    RCLCPP_INFO(node->get_logger(),"Publishing marker ...");
    marker_publisher->publish(marker);


    rclcpp::spin(node);

    rclcpp::shutdown();


    return 0;
}