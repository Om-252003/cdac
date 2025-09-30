"""
Scenario:
Imagine a student has a goal to read a book and they
consistently read 2 pages every day. This graph can show
the number of pages they’ve read over the first 9 days.

x is the number of days the student reads.

y is the total number of pages read, assuming they read
2 pages per day.

So, on day 1 → 2 pages
Day 2 → 4 pages
… Day 9 → 18 pages

The red dotted line shows that the reading progress
increases steadily — a linear growth.


"""

from turtle import color
from numpy import *
from matplotlib import pyplot as py

x = arange(1, 10)       # Days (1 to 9)
y = x * 2               # Pages read (2 pages per day)

py.plot(x, y, color='r', linestyle=':', linewidth=2)
py.title("Pages Read Over Time")
py.xlabel("Day")
py.ylabel("Pages Read")
py.grid(True)
py.show()