def main(fun):
    fun(10)
    print("inside caller function")

def disp(var):
    print("inside disp function",var )

main(disp)


# place the breakpoint at both the print statements,debug and check the call stack