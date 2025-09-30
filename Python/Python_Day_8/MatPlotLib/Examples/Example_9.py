# pie chart

""" Autopct — The autopct parameter specifies the format of the text that will be displayed inside the pie slices. It allows you to customize how the percentage of each slice is shown. """

from matplotlib import pyplot as py

fruits=['Apple','Mango','Banana','Water_melon']
quantity=[30,50,15,5]

# inside "autopct" 0.1  means 1 decimal point

py.pie(quantity,labels=fruits,autopct='%0.1f%%',colors=['red','blue','yellow','pink'])
#py.pie(quantity,labels=fruits,colors=['red','blue','yellow','pink'])
py.legend()

"""
bbox_to_anchor=(x, y)
Means:

x = 1 → Move the legend to the right edge of the plot (1 means 100% from the left).

y = 0.5 → Center the legend vertically (50% height = halfway from bottom to top).

"""

#py.legend(bbox_to_anchor=(1,0.5))

py.show()