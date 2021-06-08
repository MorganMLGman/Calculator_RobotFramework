from ctypes import *
from os import error, terminal_size


class CallCalculator:
    def __init__(self) -> None:
        self.libc = cdll.LoadLibrary("./src/calculator.dll")
        self.libc.calculator.argtypes = [c_wchar, c_float, c_float]
        self.libc.calculator.restype = c_float
        self.result = 0
        self.stdout = ""
        self.operators = ['+', '-', '*', '/', '%']

    def add_numbers(self, num_a: float, num_b: float) -> None:
        sign = c_wchar("+")
        num_a = c_float(num_a)
        num_b = c_float(num_b)
       
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

    def mod_numbers(self, num_a: float, num_b: float) ->None:
        sign = c_wchar("%")
        num_a = c_float(num_a)
        num_b = c_float(num_b)
        
        self.result = round(self.libc.calculator(sign, num_a, num_b), 4)

    def calculate_expression(self, expression: str) -> None:
        expression = expression.split(" ")
        index = expression.index(next(x for x in expression if x in self.operators))

        if expression[index] == "+":
            self.add_numbers(float(expression[index - 1]), float(expression[index + 1]))
        elif expression[index] == "-":
            self.sub_numbers(float(expression[index - 1]), float(expression[index + 1]))
        elif expression[index] == "*":
            self.mul_numbers(float(expression[index - 1]), float(expression[index + 1]))
        elif expression[index] == "/":
            self.div_numbers(float(expression[index - 1]), float(expression[index + 1]))
        elif expression[index] == "%":
            self.mod_numbers(float(expression[index - 1]), float(expression[index + 1]))

        for position in range(index + 2, len(expression) - 1, 2):
            if expression[position] == "+":
                self.add_numbers(self.result, float(expression[position + 1]))
            elif expression[position] == "-":
                self.sub_numbers(self.result, float(expression[position + 1]))
            elif expression[position] == "*":
                self.mul_numbers(self.result, float(expression[position + 1]))
            elif expression[position] == "/":
                self.div_numbers(self.result, float(expression[position + 1]))
            elif expression[position] == "%":
                self.mod_numbers(self.result, float(expression[position + 1]))
        
        print(self.result)


        


# test = CallCalculator()

# test.calculate_expression("2 + 2 * 4")
# test.calculate_expression("2 - 2 + 2 + 8 % 3")
# test.calculate_expression("2 * 2")
# test.calculate_expression("2 / 2")
# test.calculate_expression("2 % 2")
