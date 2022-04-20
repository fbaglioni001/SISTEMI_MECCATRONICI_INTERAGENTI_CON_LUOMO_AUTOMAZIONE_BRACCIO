#!/usr/bin/env python
import rospy
from robotic_arm.srv import *
import Function


angle_2_step=[5493.42561,5493.42561,6400]


def angle2step(angles):
        steps=[]
        i=0
        for angle in angles:
                steps.append(angle/180.0*angle_2_step[i])
                i=i+1
        return steps


def int2byte(ints):
        bytes_data=[]
        for num in ints:
                bytes_data.append(floor(num/256.0))
                bytes_data.append(floor(num - bytes_data[-1]*256.0))
        return bytes_data


def sec2mill(secs):
        mills=[]
        for sec in secs:
                mills.append(sec*1000)
        return mills


def mergeList(list1, list2):
        for el in list2:
                list1.append(el)
        return list1


def callback(msg):
        rospy.wait_for_service("i2c")
        i2c=rospy.ServiceProxy("i2c",i2c_srv)
        resp=i2c_srvResponse()
        resp.is_working=True
        resp.is_ok=True
        reply=pose_robotic_armResponse()
        reply.is_ok=True
        while resp.is_working and resp.is_ok:
                tm=list(msg.hand_time)
                tm=sec2mill(tm)
                tm=int2byte(tm)
                ang=list(msg.hand_angle)
                ang=angle2step(d)
                ang=int2byte(d)
                d=[int(msg.is_rel)]
                d=mergeList(d,tm)
                d=mergeList(d,ang)
                print(d)
                resp=i2c(data=d,length=len(d),address=data[0][0],pin=data[1][0],is_question=False)
                pass
        if not resp.is_ok:
                reply.is_ok=False
                return reply
        resp.is_working=True
        resp.is_ok=True
        while resp.is_working and resp.is_ok:
                tm=list(msg.wrist_time)
                tm=sec2mill(tm)
                tm=int2byte(tm)
                ang=list(msg.wrist_angle)
                ang=int2byte(d)
                d=[int(msg.is_rel)]
                d=mergeList(d,tm)
                d=mergeList(d,ang)
                resp=i2c(data=d, length=len(d),address=list[0][1],pin=list[1][1],is_question=False)
                pass
        if not resp.is_ok:
                reply.is_ok=False
                return reply
        resp.is_working=True
        resp.is_ok=True
        while resp.is_working and resp.is_ok:
                tm=list(msg.shoulder_time)
                tm=sec2mill(tm)
                tm=int2byte(tm)
                ang=list(msg.shoulder_angle)
                ang=int2byte(d)
                d=[int(msg.is_rel)]
                d=mergeList(d,tm)
                d=mergeList(d,ang)
                resp=i2c(data=d, length=len(d),address=list[0][2],pin=list[1][2],is_question=False)
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
