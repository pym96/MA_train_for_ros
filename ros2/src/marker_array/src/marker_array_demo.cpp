#include <memory>
#include <rclcpp/rate.hpp>
#include <rclcpp/rclcpp.hpp>
#include <visualization_msgs/msg/detail/marker__struct.hpp>
#include <visualization_msgs/msg/detail/marker_array__struct.hpp>
#include <visualization_msgs/msg/marker_array.hpp>

int main(int argc, char** argv){

    rclcpp::init(argc, argv);

    
    auto node = rclcpp::Node::make_shared("marker_array_demo");


    RCLCPP_INFO(node->get_logger(),"Init this node");

    // Create a publisher
    auto publisher = node->create_publisher<visualization_msgs::msg::MarkerArray>("/marker_array",10);
    
    // Create a marker for visualization 
    visualization_msgs::msg::Marker marker;

    // Setting up a loop to publish MarkerArray every 1 second
    
    rclcpp::WallRate loop_rate(1);
    
    while(rclcpp::ok()){
        
        auto marker_msg_array = std::make_shared<visualization_msgs::msg::MarkerArray>();

        visualization_msgs::msg::Marker marker;
        
        marker.header.frame_id = "base_link";
        marker.header.stamp = node -> now();
        
        marker.id = 0;
        marker.type = visualization_msgs::msg::Marker::SPHERE;
        marker.action = visualization_msgs::msg::Marker::ADD;

        marker.pose.position.x = 1.0;
        marker.pose.position.y = 2.0;
        marker.pose.position.z = 0.5;
        
        marker.scale.x = 0.2;
        marker.scale.y = 0.2;
        marker.scale.z = 0.2;
        
        marker.color.r = 1.0;
        marker.color.g = 0.0;
        marker.color.b = 0.0;
        marker.color.a = 1.0;
        
        marker_msg_array->markers.push_back(marker);
        
        publisher->publish(*marker_msg_array);
   

        loop_rate.sleep();

    }

        rclcpp::shutdown();

    return 0;
}