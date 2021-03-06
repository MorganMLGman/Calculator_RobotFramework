# Projekt mający na celu pokazanie możliwości testowania kodu napisanego w języku C, przy wykorzystaniu języka Python oraz RobotFramework

## Instrukcja kompilacji kodu C do współdzielonej biblioteki dll

1. Edycja projektu w C.

    Przed wykonaniem kompilacji kodu w C do biblioteki DLL, należy dokonąć jego kilku modyfikacji.

    **Do linii zawierających funkcje, które chcemy eksportować do biblioteki DLL należy dodać fragment kodu `__declspec(dllexport)`**

    | Wygląd pliku przed edycją                                         | Wygląd pliku po edycji                                        |
    | :---: | :---: |
    | ![Plik calculator.h przed edycją](images/calculator.h_before.png) | ![Plik calculator.h po edycji](images/calculator.h_after.png) |
    | ![Plik calculator.c przed edycją](images/calculator.c_before.png) | ![Plik calculator.c po edycji](images/calculator.c_after.png) |

2. Należy skompilować projekt jak zwykły kod C do pliku **_obcject_**
   
   Wykorzystać do tego należy polecenie `gcc -c plik.c`. W tym przypadku `gcc -c calculator.c`. Projekt zostanie skompilowany oraz utworzony zostanie plik `calculator.o`.

3. Teraz należy skompliować plik do biblioteki współdzielonej **_DLL_**

    Wykorzystać należy do tego polecenie `gcc -shared -o plik_wy.dll -Wl,--out-implib,libtstdll.a plik_we.o`. Utworzony zostanie plik biblioteki DLL.

4. Skompilowany plik **_DLL_** należy podać jako parametr funkcji _LoadLibrary_ z biblioteki _ctypes_

    ![Load Library](images/load_library.png)
    