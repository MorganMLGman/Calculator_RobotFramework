from subprocess import check_call
import sys


def build_calculator_lib():
    compile_cmd = 'gcc -c calculator.c'
    build_dll = 'gcc -shared -o calculator.dll -Wl,--out-implib,libtstdll.a calculator.o'

    check_call(compile_cmd)
    check_call(build_dll)

build_calculator_lib()