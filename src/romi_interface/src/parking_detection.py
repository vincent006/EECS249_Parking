#!/usr/bin/env python

import rospy
import numpy as np
from laser_line_extraction.msg import LineSegment
from laser_line_extraction.msg import LineSegmentList
from geometry_msgs.msg import Pose2D
from romi_interface.msg import ParkingInfo


# state variable
# 1: parking spot not identified, reference direction not yet updated, 
#    action: move forward
# 2: parking spot not identified, reference direction updated,
#    action: adjust direction and distance to the reference line, move forward
# 3: parking spot identified
#    action: calculated the relative position with the parking spot as the origin, move to the start position
# 4: start parking
#    action: keep updating the relative position and move
# 5: finish
#    action: None
state = 1
# reference direction for the robot to drive forward
ref_direction = 0.0
# profile of the parking spot, each line consists of the starting pt and ending pt
parking_profile = {'top_y': 0.0, 'bottom_y': 0.0, 'out_x': 0.0, 'in_x': 0.0, 'center':np.array([0, 0])}
# current postion with respect to the parking space
cur_pos = np.array([0.0, 0.0])
cur_angle = 0.0

direction_mixing = 0.5
profile_mixing = 0.5
line_thres = 15.0


def calculate_direction(start_pt, end_pt):
    dx = end_pt[0] - start_pt[0]
    dy = end_pt[1] - start_pt[1]
    angle_to_x = np.arctan2(dy, dx) * 180 / np.pi
    # if the angle is negative, swap start and end point
    if angle_to_x < -135:
        temp = start_pt
        start_pt = end_pt
        end_pt = temp
        angle_to_x += 180
    elif angle_to_x > 135:
        temp = start_pt
        start_pt = end_pt
        end_pt = temp
        angle_to_x -= 180
    return start_pt, end_pt, angle_to_x

def rotate(point, angle):
    angle = np.deg2rad(angle)
    R = np.array([[np.cos(angle), -np.sin(angle)], [np.sin(angle), np.cos(angle)]])
    return R.dot(point)

def callback(data):
    global state, ref_direction, parking_profile, cur_pos, cur_angle
    verti_lines = []
    horiz_lines = []

    # find the line for direction reference
    for line in data.line_segments:
        start_pt = np.array([line.start[1], -line.start[0]])
        end_pt = np.array([line.end[1], -line.end[0]])
        dist_to_start = np.linalg.norm(start_pt)
        dist_to_end = np.linalg.norm(end_pt)
        line_length = np.linalg.norm(start_pt - end_pt)
        start_pt, end_pt, cur_direction = calculate_direction(start_pt, end_pt)
    
        # the line appears within 0.5m of the robot, and the reference line length
        #   should be longer than 0.25m
        if not (dist_to_start < 0.5 or dist_to_end < 0.5):
            continue
        if state == 1: 
            if line_length > 0.25 :
                ref_direction = cur_direction
                state = 2

        if state >= 2:
            # reseting the reference direction if a new reference is detected
            if line_length > 0.25 and abs(cur_direction - ref_direction) > 30:
                state = 1
                continue
            if abs(cur_direction - ref_direction) < 30:
                ref_direction = direction_mixing * cur_direction + (1 - direction_mixing) * ref_direction
                # print("ref_direction: ", ref_direction)
                
            # start storing lines on the right side after rotating wrt to the reference direction
            # rotate the line
            # the rotation after rotated is wrt x-axis
            start_rotated = rotate(start_pt, -(ref_direction-90))
            end_rotated = rotate(end_pt, -(ref_direction-90))
            direction_rotated = cur_direction -(ref_direction-90)
            # print("direction_rotated: ", direction_rotated)

            # store the current line if it is vertical or horizontal
            # swap the start and end so that the start is always closer to the robot

            if start_rotated[0] > -0.1 and end_rotated[0] > -0.10:
                if abs(direction_rotated - 90) < line_thres:
                    if dist_to_start < dist_to_end:
                        verti_lines.append(start_rotated)
                    else:
                        verti_lines.append(end_rotated)
                elif abs(direction_rotated) < line_thres:
                    if dist_to_start < dist_to_end:
                        horiz_lines.append(start_rotated)
                    else: 
                        horiz_lines.append(end_rotated)
            # print("verti arrays: ", verti_lines)
            # print("hori arrays: ", horiz_lines)

    # update the current angle
    cur_angle = 180 - ref_direction

    # check the stored lines, use their start points to identify the location of the goal           
    num_verti_lines = len(verti_lines)
    num_horiz_lines = len(horiz_lines)
    if state == 3 and num_horiz_lines == 0:
        state = 2
        cur_pos = np.array([0.0, 0.0])
        start_x = [verti_lines[i][0] for i in range(num_verti_lines)]
        parking_profile['out_x'] = min(start_x)
    elif num_verti_lines >= 1 and num_horiz_lines >= 1:
        if state == 2:
            state = 3
        start_x = [verti_lines[i][0] for i in range(num_verti_lines)]
        start_x.extend([horiz_lines[i][0] for i in range(num_horiz_lines)])
        start_y = [verti_lines[i][1] for i in range(num_verti_lines)]
        start_y.extend([horiz_lines[i][1] for i in range(num_horiz_lines)])
        parking_profile['top_y']= profile_mixing * parking_profile['top_y']+ (1-profile_mixing) * max(start_y)
        parking_profile['bottom_y']= profile_mixing * parking_profile['bottom_y']+ (1-profile_mixing) * min(start_y)
        parking_profile['out_x'] = profile_mixing * parking_profile['out_x'] + (1-profile_mixing) * min(start_x)
        parking_profile['in_x'] = profile_mixing * parking_profile['in_x'] + (1-profile_mixing) * max(start_x)
    
    # calculate the goal
    if state >= 3:
        parking_profile['center'] = np.array([parking_profile['out_x'] + 0.075, \
                                                 (parking_profile['top_y']+ parking_profile['bottom_y']) / 2])
        cur_pos = -parking_profile['center']
        # print("parking profile: ", parking_profile)
        # print("center: ", parking_profile['out_x'] + 0.075, (parking_profile['top_y']- parking_profile['bottom_y']) / 2)
        # print("reference direction: ", ref_direction)
        # print("parking position: ", parking_profile['center'])
        # print("current position: ", cur_pos)
        # print("current angle: ", cur_angle)
        # print("---")
    
def publish_cur_pose(cur_pose, pose_pub):
    cur_pose.x = cur_pos[0]
    cur_pose.y = cur_pos[1]
    cur_pose.theta = cur_angle
    pose_pub.publish(cur_pose)

def publish_parking_info(p_info, parking_pub):
    width = parking_profile['top_y'] - parking_profile['bottom_y']
    depth = parking_profile['in_x'] - parking_profile['out_x']
    print("publishing, state = ", state, ", width = ", width)

    if state <= 2 or not(width >= 0.2):
        p_info.isParking = False
    else:
        p_info.isParking = True

    p_info.width = width
    p_info.depth = depth
    p_info.top_y = parking_profile['top_y']
    p_info.bottom_y = parking_profile['bottom_y']
    p_info.in_x = parking_profile['in_x']
    p_info.out_x = parking_profile['out_x']
    parking_pub.publish(p_info)


if __name__ == '__main__':
    rospy.init_node('detection_node', anonymous=True)

    rospy.Subscriber("line_segments", LineSegmentList, callback)

    pose_pub = rospy.Publisher("romi_pose", Pose2D, queue_size=10)
    cur_pose = Pose2D()
    parking_pub = rospy.Publisher("parking_info", ParkingInfo, queue_size=10)
    p_info = ParkingInfo()

    r = rospy.Rate(20)

    while not rospy.is_shutdown():
        publish_cur_pose(cur_pose, pose_pub)
        publish_parking_info(p_info, parking_pub)

        r.sleep()