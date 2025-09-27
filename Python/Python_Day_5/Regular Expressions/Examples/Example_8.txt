# find out index of "python"  in a text
import re

pattern1="python"
str1="There is a fun in learning Python. It is easy to code python program. Python makes programmer's life easy"

for result in re.finditer(pattern1,str1,re.IGNORECASE):
    print(result)
    mytuple=result.span()
    print(mytuple)



