from ctypes import *
from os import error, terminal_size


class CallCalculator:
    def __init__(self) -> None:
        self.libc = cdll.LoadLibrary("./src/calculator.dll")
        self.libc.calculator.argtypes = [c_wchar, c_double, c_double]
        self.libc.calculator.restype = c_double
        self.result = 0
        self.stdout = ""

    def add_numbers(self, num_a: float, num_b: float) -> None:
        sign = c_wchar("+")
        num_a = c_double(num_a)
        num_b = c_double(num_b)
       
        self.result = round(self.libc.calculator(sign, num_a, num_b), 4)

    def check_result(self, expected: float) -> None:
        if self.result != expected:
            raise AssertionError(f"Expected: {expected} != Result: {self.result}, {type(expected)}, {type(self.result)}")


    def check_error(self, not_expected: str):
        if str(self.result) in not_expected:
            raise AssertionError(f"Division by 0 is allowed {type(self.result)}, {str(self.result)}")
        else:
            pass

    def clear_result(self):
        self.result = 0

    def sub_numbers(self, num_a: float, num_b: float) ->None:
        sign = c_wchar("-")
        num_a = c_double(num_a)
        num_b = c_double(num_b)

        self.result = round(self.libc.calculator(sign, num_a, num_b), 4)

    def mul_numbers(self, num_a: float, num_b: float) ->None:
        sign = c_wchar("*")
        num_a = c_double(num_a)
        num_b = c_double(num_b)

        self.result = round(self.libc.calculator(sign, num_a, num_b), 4)

    def div_numbers(self, num_a: float, num_b: float) -> None:
        sign = c_wchar("/")
        num_a = c_double(num_a)
        num_b = c_double(num_b)
        
        self.result = round(self.libc.calculator(sign, num_a, num_b), 4)    

    def mod_numbers(self, num_a: float, num_b: float) ->None:
        sign = c_wchar("%")
        num_a = c_double(num_a)
        num_b = c_double(num_b)
        
        self.result = round(self.libc.calculator(sign, num_a, num_b), 4)


# test = CallCalculator()

# test.div_numbers(5, 0)
# test.check_result("inf")