#!/usr/bin/env python
import rospy
from robotic_arm.srv import *


commands=[[True,[12,30,22,12,60],[2,0],[50,30],[2,0],[30,30,30],[2,0]],
			[True,[12,30,22,12,60],[2,0],[50,30],[2,0],[30,30,30],[2,0]],
			[True,[12,30,22,12,60],[2,0],[50,30],[2,0],[30,30,30],[2,0]],
			[True,[12,30,22,12,60],[2,0],[50,30],[2,0],[30,30,30],[2,0]]]


rospy.init_node("test")
rospy.wait_for_service("interface")
interface=rospy.ServiceProxy("interface",pose_robotic_arm)
msg=pose_robotic_armRequest()
for com in commands:
	msg.is_rel=com[0]
	msg.hand_angle=com[1]
	msg.hand_time=com[2]
	msg.wrist_angle=com[3]
	msg.wrist_time=com[4]
	msg.shoulder_angle=com[5]
	msg.shoulder_time=com[6]
	print(interface(msg))
	print("press somthing")
	c=input()