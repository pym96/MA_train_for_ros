#include <ros/ros.h>
#include <node_demo/UserType.h>

int main(int argc, char** argv){

    ros::init(argc, argv, "demo_message_publisher");
    ros::NodeHandle hd;
    
    /**
      * The advertise() function is how you tell ROS that you want to
      * publish on a given topic name. This invokes a call to the ROS
      * master node, which keeps a registry of who is publishing and who
      * is subscribing. After this advertise() call is made, the master
      * node will notify anyone who is trying to subscribe to this topic name,
      * and they will in turn negotiate a peer-to-peer connection with this
      * node.  advertise() returns a Publisher object which allows you to
      * publish messages on that topic through a call to publish().  Once
     * all copies of the returned Publisher object are destroyed, the topic
     * will be automatically unadvertised.
      *
      * The second parameter to advertise() is the size of the message queue
      * used for publishing messages.  If messages are published more quickly
     * than we can send them, the number here specifies how many messages to
     * buffer up before throwing some away.
     */
    ros::Publisher pub 
        = hd.advertise<node_demo::UserType>("user_type_topic",10);

    ros::Rate rate(10); // 发布频率10Hz
    
    while(ros::ok()){
        node_demo::UserType msg;

        // 设置消息字段
        msg.demo_header.stamp = ros::Time::now();
        msg.demo_bool = true;
        msg.demo_byte = 42;
        msg.demo_floats = {1.0, 2.0, 3.0, 4.0, 5.0};

        pub.publish(msg);
        
    /**
        Calling ros::spinOnce() here is not necessary for this simple program, 
        because we are not receiving any callbacks.
        However, if you were to add a subscription into this application, 
        and did not have ros::spinOnce() here, 
        your callbacks would never get called.
        So, add it for good measure. 
    */
        ros::spinOnce();
        rate.sleep();
    }


    return 0;
}