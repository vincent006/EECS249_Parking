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
float start_x = -0.18;
float start_y = 0.16;

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
    float p_pos = 0;
    float i_pos = 0;
    float d_pos = 0;
    float p_angle = 0;
    float i_angle = 0;
    float d_angle = 0;
    n.getParam("/romi_drive_node/freq", freq);
    n.getParam("/romi_drive_node/p_pos", p_pos);
    n.getParam("/romi_drive_node/i_pos", i_pos);
    n.getParam("/romi_drive_node/d_pos", d_pos);
    n.getParam("/romi_drive_node/p_angle", p_angle);
    n.getParam("/romi_drive_node/i_angle", i_angle);
    n.getParam("/romi_drive_node/d_angle", d_angle);
    ros::Rate rate(freq);
    float dt = 1.0/freq;

    romi_sensors_t sensors;
    romi_init();
    bool isStopped = true;
    bool button_pressed = false;
    int count = 0;

    // for PID control
    float err_x = 0.0;
    float err_y = 0.0;
    float err_angle = 0.0;
    float integral_err_y = 0.0;
    float integral_err_x = 0.0;
    float integral_err_angle = 0.0;
    float last_y = 0.0;

    float base_speed = 0.0;
    float angle_speed = 0.0;
    float cmd_left = 0.0;
    float cmd_right = 0.0;

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
                state = 1;
            } else {
                button_pressed = false;
            }
        }

        if(!isStopped) {
            if (!isParking && out_x > 0.0) {
                state = 2;
            }
            if (isParking && state < 3) {
                state = 3;
                integral_err_x = 0.0;
                integral_err_y = 0.0;
                integral_err_angle = 0.0;
                last_y = cur_y;
            }
            switch (state) {
                case 1:
                    romi_drive_direct(50, 50);
                    break;

                case 2:
                    err_angle = 90 - cur_theta;
                    err_x = out_x - 0.1;
                    cmd_left = round(50 - p_angle * err_angle + p_pos * err_x);
                    cmd_right = round(50 + p_angle * err_angle - p_pos * err_x);
                    if(cmd_left > 75)
                        cmd_left = 75;
                    else if(cmd_left < -75)
                        cmd_left = -75;
                    if(cmd_right > 75)
                        cmd_right = 75;
                    else if(cmd_right < -75)
                        cmd_right = -75;
                    romi_drive_direct(cmd_left, cmd_right);
                    printf("err_angle: %.1f err_x: %.1f\n", err_angle, err_x);
                    printf("p_pos: %.1f p_angle: %.1f", p_pos, p_angle);
                    printf("command: %.1f, %.1f\n", cmd_left, cmd_right);
                    break;

                case 3:
                    err_x = start_x - cur_x;
                    err_y = start_y - cur_y;
                    err_angle = cur_theta - 90;
                    if (abs(err_x) < 0.01 && abs(err_y) < 0.01 && abs(err_angle) < 10) {
                        state = 4;
                        integral_err_x = 0.0;
                        integral_err_y = 0.0;
                        integral_err_angle = 0.0;
                        last_y = cur_y;
                        step = 0;
                        romi_drive_direct(0, 0);
                    } else {
                        integral_err_x += err_x;
                        integral_err_y += err_y;
                        integral_err_angle += err_angle;
                        base_speed = p_pos * err_y + i_pos * integral_err_y + d_pos * (cur_y - last_y);
                        last_y = cur_y;
                        angle_speed = p_pos * err_x + i_pos * integral_err_x + p_angle * err_angle + i_angle * integral_err_angle;
                        cmd_left = round(base_speed + angle_speed);
                        cmd_right = round(base_speed - angle_speed);
                        if(cmd_left > 75)
                            cmd_left = 75;
                        else if(cmd_left < -75)
                            cmd_left = -75;
                        if(cmd_right > 75)
                            cmd_right = 75;
                        else if(cmd_right < -75)
                            cmd_right = -75;
                        printf("p_pos: %.1f p_angle: %.1f", p_pos, p_angle);
                        printf("err_x = %.5f err_y = %.5f err_angle = %.5f\n", err_x, err_y, err_angle);
                        printf("integral_err_x = %.5f integral_err_y = %.5f integral_err_angle = %.5f\n", integral_err_x, integral_err_y, integral_err_angle);
                        printf("base_speed = %.2f angle_speed = %.2f\n", base_speed, angle_speed);
                        printf("command: %.1f, %.1f\n", cmd_left, cmd_right);
                        romi_drive_direct(cmd_left, cmd_right);
                        //romi_drive_direct(0, 0);
                    }
                    break;

                case 4:
                    err_x = path_x[step] - cur_x;
                    err_y = path_y[step] - cur_y;
                    err_angle = cur_theta - path_angle[step];
                    if (err_x < 0.01 && err_y < 0.01 && err_angle < 10) {
                        if(step < 3) {
                            step++;
                            integral_err_x = 0.0;
                            integral_err_y = 0.0;
                        } else {
                            romi_drive_direct(0, 0);
                        }
                    } else {
                        integral_err_x += err_x;
                        integral_err_y += err_y;
                        base_speed = p_pos * err_y + i_pos * integral_err_y + d_pos * (cur_y - last_y);
                        angle_speed = p_pos * err_x + i_pos * integral_err_x + p_angle * err_angle;
                        last_y = cur_y;
                        if(step == 0) {
                            cmd_left = round(base_speed - angle_speed);
                            cmd_right = round(base_speed + angle_speed);
                        } else if(step >= 1) {
                            cmd_left = round(base_speed + angle_speed);
                            cmd_right = round(base_speed - angle_speed);
                        }
                        printf("err_x = %.5f err_y = %.5f err_angle = %.5f\n", err_x, err_y, err_angle);
                        printf("integral_err_x = %.5f integral_err_y = %.5f integral_err_angle = %.5f\n", integral_err_x, integral_err_y, integral_err_angle);
                        printf("base_speed = %.2f angle_speed = %.2f\n", base_speed, angle_speed);
                        printf("command: %.1f, %.1f\n", cmd_left, cmd_right);
                        printf("target: (%.1f, %.1f, %.1f)", path_x[step], path_y[step], path_angle[step]);
                        romi_drive_direct(cmd_left, cmd_right);
                    }
                    break;
            }
        }
        printf("stopped: %d state: %d cur_pos = (%.5f, %.5f, %.5f)\n\n", isStopped, state, cur_x, cur_y, cur_theta);
        ros::spinOnce();
        rate.sleep();
    }

}

// state 3:
// rosrun romi_interface romi_drive_node _freq:=20 _p_pos:=150 _i_pos:=1 _d_pos:=0 _p_angle:=1 _i_angle:=0.005