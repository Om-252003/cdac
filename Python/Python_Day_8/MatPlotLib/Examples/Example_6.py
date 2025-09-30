from turtle import color
from numpy import *
from matplotlib import pyplot as py

years=arange(2016,2022)
dac_batch=array([100,110,120,115,118,120])
dbda_batch=array([38,45,48,50,55,60])
py.scatter(years,dac_batch,marker="*",c='r',s=200)
py.scatter(years,dbda_batch,marker=".",c='brown',s=200)
py.title("VITA DAC_DBDA Batch Summary for last 5 years")
py.xlabel("years")
py.ylabel("DAC and DBDA Total no. of students")
py.show()