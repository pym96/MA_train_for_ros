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


    // Create a marker for MODIFY action
    visualization_msgs::msg::Marker modify_marker;
    modify_marker.header.frame_id = "base_link";
    modify_marker.ns = "base_demo";
    modify_marker.id = 1;
    
    modify_marker.type = visualization_msgs::msg::Marker::CYLINDER;
    modify_marker.action = visualization_msgs::msg::Marker::MODIFY;

    modify_marker.pose.position.x = 2.0;
    modify_marker.pose.position.y = 1.0;
    modify_marker.pose.position.z = 0.5;

    modify_marker.pose.orientation.w = 1.0;
    modify_marker.scale.x = 0.2;
    modify_marker.scale.y = 0.2;
    modify_marker.scale.z = 0.4; // Modifying the scale of the marker
    modify_marker.color.r = 0.0;
    modify_marker.color.g = 1.0; // Modifying the color of the marker
    modify_marker.color.b = 0.0;
    modify_marker.color.a = 1.0;

      // Create a marker for DELETE action
    visualization_msgs::msg::Marker delete_marker;
    delete_marker.header.frame_id = "base_link";
    delete_marker.ns = "basic_shapes";
    delete_marker.id = 2;
    delete_marker.action = visualization_msgs::msg::Marker::DELETE; // DELETE action is needed here

    marker.lifetime = rclcpp::Duration::from_seconds(10.0); // For example, set the lifetime to 10 seconds
    modify_marker.lifetime = rclcpp::Duration::from_seconds(10.0); // For example, set the lifetime to 10 seconds
    delete_marker.lifetime = rclcpp::Duration::from_seconds(10.0); // For example, set the lifetime to 10 seconds

    // Publish the markers with different actions
    RCLCPP_INFO(node->get_logger(),"Publishing marker ...");
    marker_publisher->publish(marker);
    marker_publisher->publish(modify_marker);
    marker_publisher->publish(delete_marker);

    rclcpp::spin(node);
    rclcpp::shutdown();

    return 0;
}