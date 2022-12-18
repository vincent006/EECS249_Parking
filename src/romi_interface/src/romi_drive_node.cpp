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

// position to start parking
float start_x = -0.25;
float start_y = 0.25;

// array of waypoints for the parking trajactory
float path_x[] = {-0.1, 0, 0};
float path_y[] = {0.1, -0.1, 0};
float path_angle[] = {135, 90, 90};
int step = 0;

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
    float i_pos = 1;
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

    // for PID control
    float err_x = 0.0;
    float err_y = 0.0;
    float err_angle = 0.0;
    float integral_err_y = 0.0;
    float integral_err_x = 0.0;

    float base_speed = 0.0;
    float angle_speed = 0.0;

    while(ros::ok()) {
        romi_sensors_poll(&sensors);
        if(sensors.buttons.left || sensors.buttons.right || sensors.bumps.left || sensors.bumps.center || sensors.bumps.right) {
            button_pressed = true;
        }
        if(button_pressed) {
            count++;
        }
        if(count > 2) {
            count = 0;
            if (sensors.buttons.left || sensors.buttons.right || sensors.bumps.left || sensors.bumps.center || sensors.bumps.right) {
                isStopped = !isStopped;
                romi_drive_direct(0, 0);
            } else {
                button_pressed = false;
            }
        }

        if(isStopped) {
            if (isParking) {
                state = 3;
                integral_err_x = 0.0;
                integral_err_y = 0.0;
            }
            if (!isParking && out_x > 0.0) {
                state = 2;
            }

            switch (state) {
                case 1:
                    romi_drive_direct(50, 50);
                    break;

                case 2:
                    err_angle = 90 - cur_theta;
                    err_x = out_x - 0.25;
                    romi_drive_direct(round(60 - p_angle * err_angle + p_pos * err_x), 
                                      round(60 + p_angle * err_angle - p_pos * err_x));
                    break;

                case 3:
                    err_x = start_x - cur_x;
                    err_y = start_y - cur_y;
                    err_angle = cur_theta - 90;
                    if (err_x < 0.01 && err_y < 0.01 && err_angle < 10) {
                        state = 4;
                        integral_err_x = 0.0;
                        integral_err_y = 0.0;
                        step = 0;
                    } else {
                        integral_err_x += err_x;
                        integral_err_y += err_y;
                        base_speed = p_pos * err_y + i_pos * integral_err_y;
                        angle_speed = p_pos * err_x + i_pos * integral_err_x + p_angle * err_angle;
                        romi_drive_direct(round(base_speed + angle_speed), round(base_speed - angle_speed));
                    }
                    break;

                case 4:
                    err_x = path_x[step] - cur_x;
                    err_y = path_y[step] - cur_y;
                    err_angle = cur_theta - 90;
                    if (err_x < 0.01 && err_y < 0.01 && err_angle < 10) {
                        step++;
                        integral_err_x = 0.0;
                        integral_err_y = 0.0;
                    } else {
                        integral_err_x += err_x;
                        integral_err_y += err_y;
                        base_speed = p_pos * err_y + i_pos * integral_err_y;
                        angle_speed = p_pos * err_x + i_pos * integral_err_x + p_angle * err_angle;
                        if(step == 0) {
                            romi_drive_direct(round(base_speed - angle_speed), round(base_speed + angle_speed));
                        } else if(step >= 1) {
                            romi_drive_direct(round(base_speed + angle_speed), round(base_speed - angle_speed));
                        }
                        
                    }
            }
        }
        printf("out_x = %.5f cur_theta = %.5f\n", out_x, cur_theta);
        ros::spinOnce();
        rate.sleep();
    }

}

// rosrun romi_interface romi_drive_node _freq:=20 _p_pos:=100 _i_pos:=0.1 _p_angle:=0.6