***Settings***
Documentation       Test Suite to test multpilication of two numbers

Resource            keywords.robot

Test Template       Multiplication

***Test Cases***    num_a       num_b       expected
Integer Multiplication Test       
    [Tags]  Smoke
                    1           1           1
                    0           1           0
                    1           0           0
                    -1          1           -1
                    1           -1          -1
                    -1          -1          1
                    2           2           4
                    100         100         10000

Float Multiplication Test
    [Tags]  Non-Essential
                    0.5         0.5         0.25
                    -0.5        0.5         -0.25
                    0.5         -0.5        -0.25
                    -0.5        -0.5        0.25
                    1           0.5         0.5
                    0.5         1           0.5
                    0.01        0.01        0.0001



***Keywords***
Multiplication
    [Arguments]         ${num_a}        ${num_b}        ${expected}
    Mul two numbers     ${num_a}        ${num_b}
    Result should be    ${expected}
    Clear Calculator