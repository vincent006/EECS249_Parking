# EECS 149/249A Self-parking Car
&nbsp;&nbsp;&nbsp;&nbsp; This repo is for the final project for EECS 149/249A in Fall 2022. This project is to have a robot car autonomously identify a parking space and execute parallel parking into the center of the parking space without hitting obstacles. The project involves reading data from a lidar, extracting the parking edge from the data, and controlling the robot to follow a predefined path. [Demo video](https://youtube.com/shorts/Hq7gWWD0YVw)</br>
<img src="https://github.com/vincent006/EECS249_Parking/blob/main/IMG_8018.JPG" width="300" height="400">
### Hardware
- TI-RSLK Max robot car from the lab (romi)
- Ydlidar X2L 360 degrees scanning lidar
- Raspberry Pi 3B+ 

### Steps to run the code
#### Software Setup
1. Install Ubuntu 20.04 on the raspberry pi
2. Install ROS noetic see this [tutorial](http://wiki.ros.org/noetic/Installation/Ubuntu)
3. Install the [YDlidar SDK](https://github.com/YDLIDAR/sdk) and its [ROS driver](https://github.com/YDLIDAR/ydlidar_ros_driver)
4. Enable uart port /dev/ttyAMA0 on theraspberry pi following this [link](https://askubuntu.com/questions/1254376/enable-uart-communication-on-pi4-ubuntu-20-04)
5. Add the user (ubuntu) to gpio group following this [link](https://www.earnfs.com/en/html/1912.htm)
6. Install wiringPi
7. Clone this workspace into the home directory
8. Go to `~/parking_ws/src`, clone this [repo](https://github.com/kam3k/laser_line_extraction)
9. Go to `~/parking_ws`, run `catkin_make` to compile the workspace
10. Source the workspace by `souce ~/parking_ws/devel/setup.bash`
#### Hardware Connection
1. Connect the ydlidar to either one of the raspberry pi USB port by using the usb adapter in the box
2. Connect the raspberry pi to the romi via their uart ports

| Pi         | Romi       |
| ---------- | ---------- |
| GPIO 14    | P3.3       |
| GPIO 15    | P3.2       |

3. The project uses 6 AA batteries to power the romi and a power bank to power the raspberry pi and the lidar.
#### Running the Project
- Double check there is nothing being comment in the launch file `~/parking_ws/src/romi_interface/launch/parking.launch`. Run `roslaunch romi_interface parking.launch`
#### Tunning the Parameters 
- You can also comment out the `romi_drive_node` in the launch file and try different pid values by running the launch file first then run 
`rosrun romi_interface romi_drive_node _freq:=20 _p_pos_x:=200 _i_pos_x:=10 _d_pos_x:=0 _p_pos_y:=150 _i_pos_y:=10 _d_pos_y:=0 _p_angle:=1 _i_angle:=0.005`, or simply modifying the launch file
- The parameters for line extraction can be found in `~/parking_ws/src/romi_interface/launch/line_extract.launch`

#### References
- [Romi library](https://github.com/icyphy/lf-buckler/blob/main/lib/romi.c)
    - This library is modified to supoort uart communication between the romi and the raspberry pi  
- [Laser line extraction](https://github.com/kam3k/laser_line_extraction)
    - The paramters in the launch file are tuned for the special need of this project

#### Bounus
- auto connect eduroam (https://inrg.soe.ucsc.edu/howto-connect-raspberry-to-eduroam/)
- ubuntu auto login (https://askubuntu.com/questions/819117/how-can-i-get-autologin-at-startup-working-on-ubuntu-server-16-04-1)
