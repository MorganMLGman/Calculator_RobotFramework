***Settings***
Documentation       Test Suite to test modulo operation between two numbers

Resource            keywords.robot

Test Template       Modulo

***Test Cases***        num_a           num_b           expected
Integer Modulo Test 
    [Tags]  Smoke
                        5               5               0
                        5               4               1
                        5               3               2
                        5               2               1
                        5               1               0
                        0               5               0
                        -5              5               0
                        -5              4               -1
                        -5              3               -2
                        -5              2               -1
                        -5              1               0
                        -5              -5              0
                        -5              -4              -1
                        -5              -3              -2
                        -5              -2              -1
                        -5              -1               0       

Float Modulo Test
    [Tags]  Non-Essential
                        5.5             5.5              0
                        5.5             3.5              2
                        5.5             3.0              2.5       
                        5               2.7              2.3
                        0               5                0
                        0               5.5              0
                        -5.5            5.5              0
                        -5.5            5.0              -0.5 
                        -5.5            3.8              -1.7   
                        5.5             -5.5             0
                        5.5             -5.0             0.5
                        5.5             -3.6             1.9             
                        -5.5            -5.5             0
                        -5.5            -5.0             -0.5
                        # -5.5            -0.1             0  # Błąd w dokładności float 
                        -5.5            -1.0             -0.5
                        -5.5            -0.2             -0.1
                        -2.2            -0.1             0
                        -2.2            -0.2             0

***Keywords***
Modulo
    [Arguments]         ${num_a}        ${num_b}        ${expected}
    Mod from numbers    ${num_a}        ${num_b}
    Result should be    ${expected}
    Clear Calculator
