#!/usr/bin/env python

import Function as fn
import math
import numpy as np
import matplotlib.pyplot as plt

'''
function to find max velocity reach during movimentation
INPUT:
- acc  -> value of acceleration
- T    -> time of movimentation
- S    -> steps of movimentatio
- Vmin -> minum velocity
'''
def search_vmax(acc,T,S,Vmin):
	acc_min = (2*S/T-Vmin)/T*2
	if(acc_min>acc):
		return "impossibile",acc,0,0
	if(S/Vmin<=T):
		return [int(T*1000000/S)],acc,0,0
	if(acc/acc_min>1.2):
		acc = acc_min*1.2
	tacc = 0
	sacc = 0
	V = []
	while True:
		Vmax = Vmin+acc*tacc/1000000
		tacc = tacc+int(1000000/Vmax)
		sacc = sacc+1
		tc = int(((S/2-sacc)*1000000)/Vmax)
		V.append(int(1000000/Vmax))
		if((T*1000000)/2 >= tacc+tc):
			return V,acc,sacc,tacc

'''
function that calculate 
'''
def treTratti_t(t,acc,T,S,Vmin,Vmax):
	tacc = (Vmax-Vmin)/acc
	if(t < tacc):
                return Vmin+acc*t
	elif(t < T-tacc):
		return Vmax
	else:
		return Vmax-acc*(t-T+tacc)

def treTratti_s(s,t,Sacc,tacc,T,acc,S,Vmin,V):
	if(s<=Sacc):
		return V[s-1]
	elif(s<=S-Sacc):
		return V[-1]
	else:
		return V[S-s]

while True:
	T = fn.flt_question("total time:\t")
	S = fn.int_question("total step:\t")
	acc = fn.flt_question("acceleration [passi/s^2]:\t")
	Vmin = fn.flt_question("minum speed [passi/s]:\t")
	Vmax,acc,Sacc,tacc=search_vmax(acc,T,S,Vmin)
	T1 = fn.flt_question("total time:\t")
	S1 = fn.int_question("total step:\t")
	acc1 = fn.flt_question("acceleration [passi/s^2]:\t")
	Vmin1 = fn.flt_question("minum speed [passi/s]:\t")
	Vmax1,acc1,Sacc1,tacc1=search_vmax(acc1,T1,S1,Vmin1)
	
	if(Vmax!="impossible"):
		print("\n\nmaximum speed [step/s]:\t"+str(1000000/Vmax[-1])+"\nacceleration:\t"+str(acc)+"\n\n")
		t=np.linspace(0,T,1000)
		Yt=[treTratti_t(el,acc,T,S,Vmin,1000000/Vmax[-1])for el in t]
		Ys=[]
		t1=np.linspace(0,T1,1000)
		Yt1=[treTratti_t(el1,acc1,T1,S1,Vmin1,1000000/Vmax1[-1])for el1 in t1]
		Ys1=[]

		
		ts=0
		ts1=0

		for el in range(1,S+1):
			Ys.append(treTratti_s(el,ts,Sacc,tacc,T,acc,S,Vmin,Vmax))
			ts=ts+Ys[-1]
			
		for el1 in range(1,S1+1):
			Ys.append(treTratti_s(el1,ts1,Sacc1,tacc1,T1,acc1,S1,Vmin1,Vmax1))
			ts1=ts1+Ys1[-1]
			
		#for el2 in range(1,S2+1):	
		#	Ys.append(treTratti_s(el2,ts2,Sacc2,tacc2,T2,acc2,S2,Vmin2,Vmax2))
		#	ts2=ts2+Ys2[-1]
			
		plt.plot(t,Yt,t1,Yt1,linewidth=2.0)
		plt.xlabel('time [s]')
		plt.ylabel('velocity[step/s]')
		plt.grid(True)
		plt.title('time -> step/s')
		plt.show()
		plt.plot(range(1,S+1),Ys,linewidth=2.0)
		plt.xlabel('step')
		plt.ylabel('period[us]')
		plt.title('step -> period')
		plt.grid(True)
		plt.show()
		
		time=0.0
		for v in Ys:
			time=time+v
		print("time:\t"+str(time/1000000)+"\n\n")
	else:
		print("\n\nmaximu speed [passi/secondo]:\t"+Vmax+"\n\n")
