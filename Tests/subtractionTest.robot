***Settings***
Documentation       Test Suite to test substracting two numbers

Resource            keywords.robot

Test Template       Subtraction

***Test Cases***    num_a       num_b       expected
Subtraction Test       
    [Tags]  Smoke
                    2           2           0
                    1           1           0
                    0           1           -1
                    1           0           1
                    -1          1           -2
                    -1          -1          0
                    0           0           0



***Keywords***
Subtraction
    [Arguments]         ${num_a}        ${num_b}        ${expected}
    Sub two numbers     ${num_a}        ${num_b}
    Result should be    ${expected}
    Clear Calculator