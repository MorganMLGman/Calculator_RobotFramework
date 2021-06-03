from ctypes import *


def add():
    libc = cdll.LoadLibrary("./calculator.dll")
    plus_sign = c_wchar("+")
    num_a = c_float(4.5)
    num_b = c_float(5.0)

    libc.calculator.argtypes = [c_wchar, c_float, c_float]
    libc.calculator.restype = c_float
    answer = libc.calculator(plus_sign, num_a, num_b)
    print(answer)


add()
