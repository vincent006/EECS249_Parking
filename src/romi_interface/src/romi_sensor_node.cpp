#include "ros/ros.h"

#include "romi_interface/romi.h"
#include <cstdio>
#include <unistd.h>

int main (int argc, char **argv)
{
    ros::init(argc, argv, "drive");
    ros::NodeHandle n;

    romi_sensors_t sensors;
    romi_init();

    while(ros::ok()) {
        romi_sensors_poll(&sensors);
        printf("\n");
        printf("### Romi Sensor Values at index %d ###\n", sensors.time_stamp);
        printf("Bump left:\t%d\n", sensors.bumps.left);
        printf("Bump center:\t%d\n", sensors.bumps.center);
        printf("Bump right:\t%d\n", sensors.bumps.right);
        printf("\n");
        printf("Reflectance left:\t%d\n", sensors.reflectance.left);
        printf("Reflectance center:\t%d\n", sensors.reflectance.center);
        printf("Reflectance right:\t%d\n", sensors.reflectance.right);
        printf("\n");
        printf("Button left:\t%d\n", sensors.buttons.left);
        printf("Button right:\t%d\n", sensors.buttons.right);
        printf("\n");
        printf("Encoder left:\t%d\n", sensors.encoders.left);
        printf("Encoder right\t%d\n", sensors.encoders.right);
        usleep(100000);
    }
  

}