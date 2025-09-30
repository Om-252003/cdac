"""

Scatter plot


Scenario:
You ask 10 students how many hours they studied
before an exam and what marks they scored. You want
to visualize if there's a relationship between study
time and performance.


"""

from matplotlib import pyplot as py

# Study hours for each student
study_hours = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Marks scored are not perfectly proportional — more realistic
marks_scored = [3, 6, 4, 9, 7, 11, 13, 15, 14, 18]

# Scatter plot
py.scatter(study_hours, marks_scored, color='purple', marker='o')

# Labels and grid
py.title("Study Hours vs Exam Marks ")
py.xlabel("Study Hours")
py.ylabel("Marks Scored")
py.grid(True)

py.xticks(study_hours)
py.yticks(range(0, 21, 2))  # Y-axis ticks from 0 to 20 in steps of 2

py.show()
