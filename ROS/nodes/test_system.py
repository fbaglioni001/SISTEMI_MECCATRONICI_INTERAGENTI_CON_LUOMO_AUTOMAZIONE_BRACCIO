#!/usr/bin/env python
import rospy
from robotic_arm.srv import *


commands=[[,[],[],[],[],[],[]],
			[,[],[],[],[],[],[]],
			[,[],[],[],[],[],[]],
			[,[],[],[],[],[],[]]]


rospy.init_node("robotic_arm_node")
rospy.wait_for_service("interface")
interface=rospy.ServiceProxy("interface",pose_robotic_arm)
msg=pose_robotic_arm()
for com in commands:
	msg.is_rel=com[0]
	msg.hand_angle=com[1]
	msg.hand_time=com[2]
	msg.wrist_angle=com[3]
	msg.wrist_time=com[4]
	msg.shoulder_angle=com[5]
	msg.shoulder_time=com[6]
	print(interface(msg).is_ok)