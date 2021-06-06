from ctypes import *


class CallCalculator:

    def __init__(self):
        self.libc = cdll.LoadLibrary("./calculator.dll")
        self.libc.calculator.argtypes = [c_wchar, c_float, c_float]
        self.libc.calculator.restype = c_float
        self.result = 0

    def add_numbers(self, num_a: float, num_b: float):
        sign = c_wchar("+")
        num_a = c_float(num_a)
        num_b = c_float(num_b)
       
        answer = self.libc.calculator(sign, num_a, num_b)
        self.result += answer

    def check_result(self, expected: float):
        if self.result != expected:
            raise AssertionError(f"{self.result} != {expected}")

