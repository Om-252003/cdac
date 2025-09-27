def myfun(fun,*val):
    fun(val)

multiple=lambda *arg:[print(i) for i in arg]

myfun(multiple,10,20,30,40,50)




multiple1=lambda **arg:[print(i,j) for i,j in arg.items()]

multiple1(name="Abc",age=34,rollno=1,address="Mumbai")