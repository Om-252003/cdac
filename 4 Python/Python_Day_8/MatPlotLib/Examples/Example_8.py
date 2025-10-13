"""
Scenario:

Students are attending classes at a training institute
in Juhu, and they come from different parts of Mumbai:

Virar

Thane

Dombivli

We’ll record some fictional but realistic commute
times in minutes for students coming from each area.

"""
# Violin Plot with Real Mumbai Locations

from matplotlib import pyplot as py

# Commute times (in minutes) for students from each area
virar = [90, 95, 100, 110, 105, 100, 98, 102, 107]
thane = [60, 65, 70, 75, 72, 68, 66, 74, 69]
dombivli = [70, 75, 78, 80, 76, 74, 72, 79, 77]

# Combine the data
data = [virar, thane, dombivli]

# Create the violin plot
py.violinplot(data, showmedians=True)

# Customize the plot
py.title("Commute Time to Juhu from Various Mumbai Locations")
py.xlabel("Locations")
py.ylabel("Commute Time (minutes)")
py.grid(True)
py.xticks([1, 2, 3], ['Virar', 'Thane', 'Dombivli'])

# Show the plot
py.show()

"""
virar = [90, 95, 100, 110, 105, 100, 98, 102, 107]

	Minimum commute time: 90 minutes

	Maximum commute time: 110 minutes
	
	Median commute time: 100 minutes

Interpretation:

Students from Virar take between 90 and 110 minutes 
to reach Juhu. Most students take around 100 minutes, 
which is the median.


thane = [60, 65, 70, 75, 72, 68, 66, 74, 69]

	Minimum commute time: 60 minutes

	Maximum commute time: 75 minutes

	Median commute time: 69 minutes

Interpretation:

Students from Thane take between 60 and 75 minutes to reach 
Juhu. The median is 69 minutes, meaning most students 
take around that much time. 


dombivli = [70, 75, 78, 80, 76, 74, 72, 79, 77]

	Minimum commute time: 70 minutes

	Maximum commute time: 80 minutes

	Median commute time: 75 minutes

Interpretation:

Students from Dombivli take between 70 and 80 minutes 
to reach Juhu. The median is 75 minutes, meaning most 
students take around that much time to reach Juhu 
from Dombivali.

"""