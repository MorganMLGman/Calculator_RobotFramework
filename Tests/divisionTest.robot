***Settings***
Documentation       Test Suite to test dividing two numbers

Resource            keywords.robot

Test Template       Division

***Test Cases***    num_a       num_b       expected
Integer Division test
    [Tags]  Smoke
                    0           1           0.0
                    1           1           1.0
                    2           1           2.0
                    4           2           2.0
                    -2          2           -1.0
                    2           -2          -1.0
                    -2          -2          1.0
                    10000       1000        10.0

Float Division Test
    [Tags]  Non-Essential
                    0           0.1         0
                    5.5         2.5         2.2
                    -5.5        2.5         -2.2
                    5.5         -2.5        -2.2
                    -5.5        -2.5        2.2
                    8           5           1.6
                    -8          5           -1.6
                    8           -5          -1.6
                    -8          -5          1.6


***Keywords***
Division
    [Arguments]         ${num_a}        ${num_b}        ${expected}
    Div two numbers     ${num_a}        ${num_b}
    Result should be    ${expected}
    Clear Calculator