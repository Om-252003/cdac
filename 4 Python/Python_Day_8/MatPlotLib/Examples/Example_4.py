# Bar plot

"""
Scenario:
You want to show how much mobile data a person used
on average each month over a 6-month period.

Highest usage: June (20 GB)

Lowest usage: January (12 GB)

"""
from matplotlib import pyplot as py

# X-axis: Months
months = ['January', 'February', 'March', 'April', 'May', 'June']

# Y-axis: Data usage in GB
data_usage = [12, 15, 13, 18, 17, 20]

# Create the bar plot
py.bar(months, data_usage, color='green')

# Title and labels
py.title("Average Monthly Mobile Data Usage")
py.xlabel("Months")
py.ylabel("Data Used (in GB)")
py.grid(axis='y', linestyle='--', linewidth=0.5)

# Show the plot
py.show()