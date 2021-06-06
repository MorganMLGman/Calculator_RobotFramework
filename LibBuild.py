from subprocess import call


def build_calculator_lib():
    compile_cmd = 'gcc -c calculator.c'
    build_dll = 'gcc -shared -o calculator.dll -Wl,--out-implib,libtstdll.a calculator.o'

    call(compile_cmd)
    call(build_dll)

build_calculator_lib()