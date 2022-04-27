#!/usr/bin/env python
import rospy
from robotic_arm.srv import *
import Function
import math as m


angle_2_step=[5493.42561,5493.42561,25600]


def angle2step(angles):
    steps=[]
    i=0
    for angle in angles:
        steps.append(m.floor(angle/180.0*angle_2_step[i]))
        i=i+1
    return steps


def int2byte(ints):
    bytes_data=[]
    for num in ints:
        bytes_data.append(int(m.floor(num/256.0)))
        bytes_data.append(int(m.floor(num - int(bytes_data[-1])*256.0)))
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
    msg_request=i2c_srvRequest()
    while resp.is_working and resp.is_ok:
        tm=list(msg.hand_time)
        tm=sec2mill(tm)
        tm=int2byte(tm)
        ang=list(msg.hand_angle)
        d=[int(msg.is_rel)]
        d=mergeList(d,tm)
        d=mergeList(d,ang)
        msg_request.data=d
        msg_request.length=len(d)
        msg_request.address=addr_pin[0][0]
        msg_request.pin=addr_pin[1][0]
        msg_request.is_question=False
        resp=i2c(msg_request)
    if not resp.is_ok:
        reply.is_ok=False
        if resp.is_i2c_available==False:
            reply.msg="i2c device ("+str(addr_pin[0][0])+",hand) not found"
        return reply
    resp.is_working=True
    resp.is_ok=True
    while resp.is_working and resp.is_ok:
        tm=list(msg.wrist_time)
        tm=sec2mill(tm)
        tm=int2byte(tm)
        ang=list(msg.wrist_angle)
        d=[int(msg.is_rel)]
        d=mergeList(d,tm)
        d=mergeList(d,ang)
        print(d)
        msg_request.data=d
        msg_request.length=len(d)
        msg_request.address=addr_pin[0][1]
        msg_request.pin=addr_pin[1][1]
        msg_request.is_question=False
        resp=i2c(msg_request)
    if not resp.is_ok:
        reply.is_ok=False
        if resp.is_i2c_available==False:
            reply.msg="i2c device ("+str(addr_pin[0][1])+",wrist) not found"
        return reply
    resp.is_working=True
    resp.is_ok=True
    while resp.is_working and resp.is_ok:
        tm=list(msg.shoulder_time)
        tm=sec2mill(tm)
        tm=int2byte(tm)
        ang=list(msg.shoulder_angle)
        ang=angle2step(ang)
        ang=int2byte(ang)
        d=[int(msg.is_rel)]
        d=mergeList(d,tm)
        d=mergeList(d,ang)
        print(d)
        msg_request.data=d
        msg_request.length=len(d)
        msg_request.address=addr_pin[0][2]
        msg_request.pin=addr_pin[1][2]
        msg_request.is_question=False
        resp=i2c(msg_request)
    if not resp.is_ok:
        reply.is_ok=False
        if resp.is_i2c_available==False:
            reply.msg="i2c device ("+str(addr_pin[0][2])+",shoulder) not found"
        return reply
    return reply

addr_pin=Function.open_data("data.txt")
print(addr_pin)
rospy.init_node("robotic_arm_node")
s=rospy.Service('interface',pose_robotic_arm,callback)
rospy.loginfo("interface: ready")
rospy.spin()
