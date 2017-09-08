#coding=utf-8


def Lagrange(xdado,lX, lY, lnovaX=[], lnovaY=[]):

	dNum=Lagrange.dNum
	dDen=Lagrange.dDen
	dCoef=Lagrange.dCoef
	R = 0
	if lnovaX: #adicionando novos pontos
		for i, xi in enumerate(lX):
			if xi not in dNum:
				continue
			num=dNum[xi]
			den=dDen[xi]
			for j, xj in enumerate(lnovaX):
				if xi==xj:
					continue
				num= num*(xdado-xj)
				den= den*(xi - xj)
			dNum[xi]= num
			dDen[xi]= den
			dCoef[xi]= num/den
			R = R + lY[i] * dCoef[xi]
			#--------
			# TO DO fazer a interpolação para esses novos Xs
			#--------
		for i, xi in enumerate(lnovaX):
			num=1
			den=1
			for j, xj in enumerate(lX):
				if xi==xj: 
					continue

				num= num*(xdado-xj)
				den= den*(xi - xj)

			dNum[xi]= num
			dDen[xi]= den
			dCoef[xi]= num/den
			R = R + lnovaY[i] * dCoef[xi]
			
	else: #computando a interpolação do zero(primeira vez)
		R = 0
		for i, xi in enumerate(lX):
			num=1
			den=1
			for j, xj in enumerate(lX):
				if i==j: 
					continue

				num= num*(xdado-xj)
				den= den*(xi - xj)

			dNum[xi]= num
			dDen[xi]= den
			dCoef[xi]= num/den
			R = R + lY[i] * dCoef[xi]
	return R

Lagrange.dNum={}
Lagrange.dDen={}
Lagrange.dCoef={}
