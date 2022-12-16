#include "ros/ros.h"
#include "romi_interface/romi.h"
#include "geometry_msgs/Pose2D.h"
#include "romi_interface/ParkingInfo.h"
#include <cstdio>

// current position with center of the parking space as the origin
// current theta with respect to the positive x axis
float cur_x = 0.0;
float cur_y = 0.0;
float cur_theta = 0.0;

// parking info
bool isParking = false;
float width = 0.0;
float depth = 0.0;
float top_y = 0.0;
float bottom_y = 0.0;
float out_x = 0.0;
float in_x = 0.0;

void poseCallback(const geometry_msgs::Pose2D& pose)
{
    cur_x = pose.x;
    cur_y = pose.y;
    cur_theta = pose.theta;
}

void parkingCallback(const romi_interface::ParkingInfo& p_info) 
{
    isParking = p_info.isParking;
    width = p_info.width;
    depth = p_info.depth;
    top_y = p_info.top_y;
    bottom_y = p_info.bottom_y;
    out_x = p_info.out_x;
    in_x = p_info.in_x;
}

int main (int argc, char **argv)
{
    ros::init(argc, argv, "romi_drive_node");
    ros::NodeHandle n;
    ros::Subscriber pose_sub = n.subscribe("romi_pose", 1, poseCallback);
    ros::Subscriber parking_sub = n.subscribe("parking_info", 1, parkingCallback);

    ros::Rate rate(10);

    romi_sensors_t sensors;
    romi_init();

    while(ros::ok()) {
        // code for control
        ROS_INFO("x: %.4f y: %f theta: %.4f", cur_x, cur_y, cur_theta);
        ROS_INFO("---");
        ROS_INFO("x: %.4f y: %f theta: %.4f", cur_x, cur_y, cur_theta);
        ROS_INFO("---");
        ROS_INFO("isParking: %d", isParking);
        ROS_INFO("width: %.4f, depth: %.4f", width, depth);
        ROS_INFO("top_y: %.4f, bottom_y: %.4f, out_x: %.4f, in_x: %.4f", top_y, bottom_y, out_x, in_x);
        ROS_INFO("---");
        ros::spinOnce();
        rate.sleep();
    }

}