"""  Box Plot displays the five-number summary of
a set of data.
The five-number summary is the minimum, first quartile,
median, third quartile, and maximum.  """

""" 
The first quartile (Q1), is defined as the middle number 
between the smallest number and the median of the data set, 
the second quartile (Q2) – median of the given data set 
while the third quartile (Q3), is the middle number 
between the median and the largest value of the data set.
 """

"""
Scenario:
Imagine a class of students took exams in
Math, English,and Science. You have their scores
for each subject, and you want to compare the
distribution of marks in all three.

"""
from matplotlib import pyplot as py
import statistics

# Test scores for 3 subjects
math_scores = [1,2,3,4,5,6,7,8,9]       # Gradual increase — wider spread
english_scores = [1,2,3,4,5,4,3,2,1]    # Symmetric, centered at 3–5
science_scores = [6,7,8,9,8,7,6,5,4]    # Higher performance cluster

# Displaying medians
print("Median of Math scores:", statistics.median(math_scores))
print("Median of English scores:", statistics.median(english_scores))
print("Median of Science scores:", statistics.median(science_scores))

# Combine the data
data = [math_scores, english_scores, science_scores]

# Create the box plot
py.boxplot(data, tick_labels=['Math', 'English', 'Science'])
py.title("Distribution of Marks in Three Subjects")
py.ylabel("Marks")
py.grid(True)
py.show()


"""
Summary of Students' performance in three subjects

Math: Wide range of scores — some students did well, 
others struggled. Big variation in performance.

English: Most students scored around average. 
Performance was consistent, but not outstanding.

Science: Most students scored well and their marks 
are grouped at the higher end. Strong and consistent 
performance.

"""