#!/usr/bin/env python

import Function as fn
import math
import numpy as np
import matplotlib.pyplot as plt

'''
def search_vmax(acc,T,S,Vmin):
	acc_min=(2*S/T-Vmin)/T*2
	if(acc_min>acc):
		return "impossibile",acc
	acc=(acc-acc_min)/4+acc_min
	print(acc)
	v1=fn.solveQE(-1/acc,T+Vmin/acc,-S,1)
	v2=fn.solveQE(-1/acc,T+Vmin/acc,-S,0)
	if(v1>0 and v1<v2):
		return [int(v1),acc]
	return [int(v2),acc]
'''

def search_vmax(acc,T,S,Vmin):
	acc_min=(2*S/T-Vmin)/T*2
	if(acc_min>acc):
		return "impossibile",acc,0,0
	if(S/Vmin<=T):
		return [int(T*1000000/S)],acc,0,0
	if(acc/acc_min>1.2):
		acc=acc_min*1.2
	tacc=0
	sacc=0
	V=[]
	while True:
		Vmax=Vmin+acc*tacc/1000000
		tacc=tacc+int(1000000/Vmax)
		sacc=sacc+1
		tc=int(((S/2-sacc)*1000000)/Vmax)
		V.append(int(1000000/Vmax))
		if((T*1000000)/2>=tacc+tc):
			return V,acc,sacc,tacc



def treTratti_t(t,acc,T,S,Vmin,Vmax):
	tacc=(Vmax-Vmin)/acc
	if(t<tacc):
		return Vmin+acc*t
	elif(t<T-tacc):
		return Vmax
	else:
		return Vmax-acc*(t-T+tacc)

'''
def treTratti_s(s,acc,T,S,Vmin,Vmax):
	tacc=(Vmax-Vmin)/acc
	sacc=0.5*tacc**2*acc
	if(s<=sacc):
		t1=fn.solveQE(0.5*acc,Vmin,-s,1)
		t2=fn.solveQE(0.5*acc,Vmin,-s,0)
		if(t1>=0 and t1<=tacc):
			return treTratti_t(t1,acc,T,S,Vmin,Vmax)
		else:
			return treTratti_t(t2,acc,T,S,Vmin,Vmax)
	elif(s<(S-sacc)):
		return Vmax
	else:
		t1=fn.solveQE(-0.5*acc,Vmax,-(s-(S-sacc)),1)+T-tacc
		t2=fn.solveQE(-0.5*acc,Vmax,-(s-(S-sacc)),0)+T-tacc
		if(t1>=T-tacc and t1<=T):
			return treTratti_t(t1,acc,T,S,Vmin,Vmax)
		else:
			return treTratti_t(t2,acc,T,S,Vmin,Vmax)
'''

def treTratti_s(s,t,Sacc,tacc,T,acc,S,Vmin,V):
	if(s<=Sacc):
		return V[s-1]
	elif(s<=S-Sacc):
		return V[-1]
	else:
		return V[S-s]


while True:
	T=fn.flt_question("tempo totale:\t")
	S=fn.int_question("passi totali:\t")
	acc=fn.flt_question("accelerazione [passi/s^2]:\t")
	Vmin=fn.flt_question("velocità minima [passi/s]:\t")
	Vmax,acc,Sacc,tacc=search_vmax(acc,T,S,Vmin)
	if(Vmax!="impossibile"):
		print("\n\nVelocità massima [passi/secondo]:\t"+str(1000000/Vmax[-1])+"\nAccelerazione adottata:\t"+str(acc)+"\n\n")
		t=np.linspace(0,T,1000)
		Yt=[treTratti_t(el,acc,T,S,Vmin,1000000/Vmax[-1])for el in t]
		Ys=[]
		ts=0
		for el in range(1,S+1):
			Ys.append(treTratti_s(el,ts,Sacc,tacc,T,acc,S,Vmin,Vmax))
			ts=ts+Ys[-1]
		plt.plot(t,Yt)
		plt.show()
		plt.plot(range(1,S+1),Ys)
		plt.show()
		time=0.0
		for v in Ys:
			time=time+v
		print("tempo effettivo:\t"+str(time/1000000)+"\n\n")
	else:
		print("\n\nVelocità massima [passi/secondo]:\t"+Vmax+"\n\n")