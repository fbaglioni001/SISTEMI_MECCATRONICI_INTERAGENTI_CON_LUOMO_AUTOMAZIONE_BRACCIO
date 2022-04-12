#!/usr/bin/env python
import rospy
from robotic_arm.srv import *
import Function
from std_msgs.msg import Bool

def callback(msg):
        rospy.wait_for_service("i2c")
        i2c=rospy.ServiceProxy("i2c",i2c_srv)
        resp=i2c_srvResponse()
        resp.is_working=True
        resp.is_ok=True
        reply=pose_robotic_armResponse()
        reply.is_ok=True
        while resp.is_working and resp.is_ok:
                d=list(msg.hand)
                d.insert(0,int(msg.is_rel))
                print(d)
                resp=i2c(data=d,length=len(msg.hand)+1,address=data[0][0],pin=data[1][0],is_question=False)
                pass
        if not resp.is_ok:
                reply.is_ok=False
                return reply
        resp.is_working=True
        resp.is_ok=True
        while resp.is_working and resp.is_ok:
                d=list(msg.wrist)
                d.insert(0,int(msg.is_rel))
                resp=i2c(data=d, length=len(msg.wrist)+1,address=list[0][1],pin=list[1][1],is_question=False)
                pass
        if not resp.is_ok:
                reply.is_ok=False
                return reply
        resp.is_working=True
        resp.is_ok=True
        while resp.is_working and resp.is_ok:
                d=list(msg.shoulder)
                d.insert(0,int(msg.is_rel))
                resp=i2c(data=d, length=len(msg.shoulder)+1,address=list[0][2],pin=list[1][2],is_question=False)
                pass
        if not resp.is_ok:
                reply.is_ok=False
                return reply
        return reply

data=Function.open_data("data.txt")
print(data)
rospy.init_node("robotic_arm_node")
s=rospy.Service('interface',pose_robotic_arm,callback)
rospy.loginfo("ready")
rospy.spin()
