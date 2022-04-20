#!/usr/bin/env python
import Function
import rospy
from robotic_arm.msg import settings_msg
from std_msgs.msg import Bool

def callback(msg):
        print(msg)
        if msg.is_write:
                Function.save_data([msg.address,msg.pin],"data.txt")
                pub.publish(True)
        else:
                print(Function.open_data("data.txt"))
                pub.publish(True)

rospy.init_node("settings_node")
sub=rospy.Subscriber("settings_tx",settings_msg, callback)
pub=rospy.Publisher("settings_rx", Bool, queue_size=10)
rospy.loginfo("ready")
rospy.spin()
