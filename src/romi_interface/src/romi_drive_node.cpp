#include "ros/ros.h"
#include "romi_interface/romi.h"
#include "geometry_msgs/Pose2D.h"
#include <cstdio>


void cmdCallback(const geometry_msgs::Pose2D& pose)
{
    ROS_INFO("x: %f y: %f theta: %f", pose.x, pose.y, pose.theta);
}

int main (int argc, char **argv)
{
    ros::init(argc, argv, "romi_drive");
    ros::NodeHandle n;
    ros::Subscriber cmd_sub;
    geometry_msgs::Pose2D current_pose;
    current_pose.x = 0.0;
    current_pose.y = 0.0;
    current_pose.theta = 0.0;
    ros::Rate rate(10);

    romi_sensors_t sensors;
    romi_init();

    while(ros::ok()) {
        //cmd_sub = n.subscribe("/romi/cmd_pose", 1000, cmdCallback);
        //romi_drive_direct(100, 100);

        rate.sleep();
        ros::spinOnce(); 
    }

}