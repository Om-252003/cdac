"""
first is the number of hours worked (1 to 10 hours).

second is the money earned, calculated as ₹200 per hour.

So, if you work 1 hour, you earn ₹200.
If you work 2 hours, you earn ₹400, and so on.

The graph will show a straight line, which represents
a linear relationship — for every extra hour you work,
you earn ₹200 more.

"""

from numpy import *
from matplotlib import pyplot as py

first=arange(1,11)     #  Number of hours worked (1 to 10)
second=200*first         #  Total money earned (₹200 per hour)

print(first)
print("\n")
print(second)
py.plot(first,second)     #  line plot  just displays lists
#  here "first"  is  x-axis
#  "second" is y-axis
py.xlabel("Hours Worked")   # X-axis label
py.ylabel("Money Earned (₹)")  # Y-axis label
py.title("Hours Worked vs Money Earned")  # Title for the graph

py.show()       # displays the graph
