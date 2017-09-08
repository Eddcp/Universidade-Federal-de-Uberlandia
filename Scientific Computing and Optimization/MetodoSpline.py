#coding=utf-8
import scipy
import numpy as np
import math
from scipy.interpolate import interp1d
import matplotlib.pyplot as plt
from oct2py import octave


def MetodoSpline(x,y):

	#oc = octave.Oct2Py()
	#x = np.linspace(x[0], x[len(x)-1])
	#y = oc.eval(spline(x,y))
	
	f = interp1d(x, y)
	f2 = interp1d(x, y, kind='cubic')

	return f2




