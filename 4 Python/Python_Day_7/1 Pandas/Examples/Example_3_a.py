# we can change the labels or indexes
from pandas import *

first=Series([10,20,30,40,50],index=['p','q','r'])   # ValueError: Length of values (5) does not match length of index (3)
print(first)

'''
Traceback (most recent call last):
  File "D:\cdac\Python\Practice\Example_1.py", line 4, in <module>
    first=Series([10,20,30,40,50],index=['p','q','r'])   # ValueError: Length of values (5) does not match length of index (3)
  File "D:\cdac\Python\Practice\.venv\lib\site-packages\pandas\core\series.py", line 575, in __init__
    com.require_length_match(data, index)
  File "D:\cdac\Python\Practice\.venv\lib\site-packages\pandas\core\common.py", line 573, in require_length_match
    raise ValueError(
ValueError: Length of values (5) does not match length of index (3)
'''