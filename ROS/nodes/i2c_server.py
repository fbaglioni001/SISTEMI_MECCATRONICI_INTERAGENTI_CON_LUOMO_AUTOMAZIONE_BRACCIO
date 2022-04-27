#!/usr/bin/env python
import rospy
from robotic_arm.srv import i2c_srv, i2c_srvResponse
from smbus2 import SMBus, i2c_msg
import RPi.GPIO as GPIO

def callback(data):
    res=i2c_srvResponse()
    res.is_ok=True
    res.is_working=False
    res.is_i2c_available=True
    bus=SMBus(1)
    GPIO.setup(data.pin, GPIO.IN, pull_up_down = GPIO.PUD_UP)
    if GPIO.input(data.pin):
        res.is_working=True
        return res
    if data.length>0:
        msg = i2c_msg.write(data.address,data.data)
        try:
            bus.i2c_rdwr(msg)
        except:
            res.is_i2c_available=False
            resp.is_ok=False
            return res
    if data.is_question:
        msg = i2c_msg.read(data.address,data.question_length)
        bus.i2c_rdwr(msg)
        res.data=msg.buff
    return res

GPIO.setmode(GPIO.BOARD)
rospy.init_node("i2c_server")
s=rospy.Service('i2c',i2c_srv,callback)
rospy.loginfo("i2c server is ready")
rospy.spin()
