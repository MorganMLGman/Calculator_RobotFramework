from subprocess import call


def build_calculator_lib():
    compile_cmd = 'gcc -c src/calculator.c -o src/calculator.o'
    build_dll = 'gcc -shared -o src/calculator.dll -Wl,--out-implib,src/libtstdll.a src/calculator.o'

    call(compile_cmd)
    call(build_dll)

build_calculator_lib()