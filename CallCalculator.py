from ctypes import *


class CallCalculator:
    def __init__(self) -> None:
        self.libc = cdll.LoadLibrary("./src/calculator.dll")
        self.libc.calculator.argtypes = [c_wchar, c_float, c_float]
        self.libc.calculator.restype = c_float
        self.result = 0

    def add_numbers(self, num_a: float, num_b: float) -> None:
        sign = c_wchar("+")
        num_a = c_float(num_a)
        num_b = c_float(num_b)
       
        self.result = round(self.libc.calculator(sign, num_a, num_b), 4)

    def check_result(self, expected: float) -> None:
        if self.result != expected:
            raise AssertionError(f"{self.result} != {expected}")

    def clear_result(self):
        self.result = 0;

    def sub_numbers(self, num_a: float, num_b: float) ->None:
        sign = c_wchar("-")
        num_a = c_float(num_a)
        num_b = c_float(num_b)

        self.result = round(self.libc.calculator(sign, num_a, num_b), 4)

    def mul_numbers(self, num_a: float, num_b: float) ->None:
        sign = c_wchar("*")
        num_a = c_float(num_a)
        num_b = c_float(num_b)

        self.result = round(self.libc.calculator(sign, num_a, num_b), 4)

    def div_numbers(self, num_a: float, num_b: float) -> None:
        sign = c_wchar("/")
        num_a = c_float(num_a)
        num_b = c_float(num_b)

        self.result = round(self.libc.calculator(sign, num_a, num_b), 4)
