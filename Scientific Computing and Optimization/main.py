#coding=utf-8
#métodos
import MetodoNewton as mn
import MetodoLagrange as la
import MetodoSpline as ms
import lagrange as ml
#import MetodoSpline as ms
#from oct2py import octave
#Usando funcionalidades do python para plotar 
from numpy import *
import math
import matplotlib.pyplot as plt
import numpy as np
from scilab import Scilab as sci




def runge(X):
	return 1/(1+25*(pow(X,2)))


while True:
	print("Digite 1: Para inserir os pontos")
	print("Digite 2: Para dar o intervalo e quantidade de pontos")
	op = input()

	if op==1:
		#Digita quantos pontos deseja adicionar
		n = int(raw_input("Digite quantos pontos(mínimo quatro):"))
		X = []
		Y = []
		XY = []
		for i in range(n):
				X.append(float(raw_input("Digite o x:\n")))
				Y.append(float(raw_input("Digite o y:\n")))

		x = float(raw_input("Digite o x desejado:\n"))
		#Função que interpola pelo método de Newton
		#mn.MetodoNewton(n,X,Y,x)

		xteste = []
		yteste = []

		# testezin = ml.Lagrange(x,X,Y,xteste,yteste)

		# print(testezin)
		# raw_input()

		while True:
			print("Digite o ponto ou q para sair\n")
			op = raw_input()
			if op=="q":
				break
			else:
				x1 = float(raw_input("Digite o x:\n"))
				y1 = float(raw_input("Digite o y:\n"))
				XY = []

				for k in range(len(X)):
				 	XY.append((X[k],Y[k]))
				
				xteste.append(x1)
				yteste.append(y1)

				XY.append((x1,y1))
				XY = sorted(XY)
				n=n+1
				print(XY)

				X = []
				Y = []

				for k in range(len(XY)):
					X.append(XY[k][0])
					Y.append(XY[k][1])

				# testezin = ml.Lagrange(x,X,Y,xteste,yteste)

				# print(testezin)
				# raw_input()

		print("Deseja interpolar mais pontos - y/n?")
		yesno = raw_input()
		if yesno == "y":
			print("Quantos pontos deseja interpolar?")
			qtdpontos = raw_input()

			XX = linspace(X[0], X[len(X)-1], qtdpontos)
			YY = []
			for i in range(len(XX)):
				YY.append(mn.MetodoNewton(X,Y,XX[i]))

			plt.plot(XX,YY,'r', label ="Newton")
			plt.legend(loc = "best", numpoints=1)

			XX = linspace(X[0], X[(len(X))-1], qtdpontos)
			YY = []

			print(XX)
			raw_input()
			for i in range(len(XX)):
				YY.append(la.MetodoLagrange(X,Y,XX[i]))

			plt.plot(XX,YY,'b', label ="Lagrange")
			plt.legend(loc = "best", numpoints=1)

			Y = ms.MetodoSpline(X,Y)
				
			plt.plot(XX,Y(XX),'g', label ="Spline")
			plt.legend(loc = "best", numpoints=1)

			plt.show()
		elif yesno == "n":

			mn.MetodoNewton(X,Y,x)
			plt.plot(X,Y,'r', label ="Lagrange")
			plt.legend(loc = "best", numpoints=1)

			la.MetodoLagrange(X,Y,x)
			plt.plot(X,Y,'b', label ="Lagrange")
			plt.legend(loc = "best", numpoints=1)

			Y = ms.MetodoSpline(X,Y)
				
			plt.plot(X,Y(X),'g', label ="Spline")
			plt.legend(loc = "best", numpoints=1)

			plt.show()


	elif op==2:
		#Geramos inicialmente 5 pontos no intervalo -1, 1
		print("Digite o intervalo")
		inf = float(raw_input())
		sup = float(raw_input())
		print("Digite a quantidade de pontos no intervalo")
		pontos = float(raw_input())
		X = linspace(inf,sup,pontos)
		Y = []
		for i in X:
			Y.append(runge(i))

		print("Quantos pontos deseja interpolar?")
		interp = float(raw_input())
		#Geramos novos x para interpolarmos
		XX = linspace(inf,sup, interp)
		YY = []
		for i in range(len(XX)):
			YY.append(mn.MetodoNewton(X,Y,XX[i]))


		plt.plot(XX,YY,'r', label ="Newton")
		plt.legend(loc = "best", numpoints=1)


		# ml.Lagrange(x,X,Y,xteste,yteste)
		XX = linspace(inf,sup, interp)
		YY = []
		for i in range(len(XX)):
			YY.append(la.MetodoLagrange(X,Y,XX[i]))
		#la.MetodoLagrange(X,Y,x)
		plt.plot(XX,YY,'b', label ="Lagrange")
		plt.legend(loc = "best", numpoints=1)


		Y = ms.MetodoSpline(X,Y)
			
		plt.plot(XX,Y(XX),'g', label ="Spline")
		plt.legend(loc = "best", numpoints=1)

		X = linspace(inf,sup, interp)
		Y = []
		for i in X:
			Y.append(runge(i))

		plt.plot(X,Y,'c', label ="TRUE")
		plt.legend(loc = "best", numpoints=1)
		#ms.MetodoSpline(X,Y)
		# plt.plot(X,Y,'b')
		# plt.legend(['cubic'], loc='best')
		plt.show()
		raw_input()
			
