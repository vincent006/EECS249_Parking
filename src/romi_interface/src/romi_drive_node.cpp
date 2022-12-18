#include "ros/ros.h"
#include "romi_interface/romi.h"
#include "geometry_msgs/Pose2D.h"
#include "romi_interface/ParkingInfo.h"
#include <cstdio>
#include <cmath>

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

/* state variable
    1: no reference direction, parking space not detected
        action: drive forward
    2: reference direction detected, parking space not detected
        action: follow the reference line with a distance away
    3: parking space detected
        action: move to the top_y position to start parking
    4: start parking
        action: start parking
*/ 
int state = 1;

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
    
    int freq = 20;
    float p_pos = 100;
    float i_pos = 0.0;
    float d_pos = 0.0;
    float p_angle = 0.6;
    float i_angle = 0.0;
    float d_angle = 0.0;
    n.getParam("/romi_drive_node/freq", freq);
    n.getParam("/romi_drive_node/p", p_pos);
    n.getParam("/romi_drive_node/i", i_pos);
    n.getParam("/romi_drive_node/d", d_pos);
    n.getParam("/romi_drive_node/p", p_angle);
    n.getParam("/romi_drive_node/i", i_angle);
    n.getParam("/romi_drive_node/d", d_angle);
    ros::Rate rate(freq);
    float dt = 1.0/freq;

    romi_sensors_t sensors;
    romi_init();
    bool isStopped = false;
    bool button_pressed = false;
    int count = 0;

    while(ros::ok()) {
        // code for control
        // ROS_INFO("x: %.4f y: %f theta: %.4f", cur_x, cur_y, cur_theta);
        // ROS_INFO("---");
        // ROS_INFO("x: %.4f y: %f theta: %.4f", cur_x, cur_y, cur_theta);
        // ROS_INFO("---");
        // ROS_INFO("isParking: %d", isParking);
        // ROS_INFO("width: %.4f, depth: %.4f", width, depth);
        // ROS_INFO("top_y: %.4f, bottom_y: %.4f, out_x: %.4f, in_x: %.4f", top_y, bottom_y, out_x, in_x);
        // ROS_INFO("---");
        romi_sensors_poll(&sensors);
        if(sensors.buttons.left || sensors.buttons.right) {
            button_pressed = true;
        }
        if(button_pressed) {
            count++;
        }
        if(count > 2) {
            count = 0;
            if (sensors.buttons.left || sensors.buttons.right) {
                isStopped = !isStopped;
                romi_drive_direct(0, 0);
            } else {
                button_pressed = false;
            }
        }

        if(isStopped) {
            if (isParking) {
                state = 3;
            }
            if (!isParking && out_x > 0.0) {
                state = 2;
            }

            switch (state) {
                case 1:
                    romi_drive_direct(50, 50);
                    break;

                case 2:
                    int angle_adjust = round(p_angle * (90 - cur_theta));
                    int dist_adjust = round(p_pos * (out_x - 0.25));
                    romi_drive_direct(60 - angle_adjust + dist_adjust, 60 + angle_adjust - dist_adjust);
                    break;
            }
        }
        printf("out_x = %.5f cur_theta = %.5f\n", out_x, cur_theta);
        ros::spinOnce();
        rate.sleep();
    }

}