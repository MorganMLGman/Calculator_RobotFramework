***Settings***
Documentation       Test Suite to test adding two numbers

Resource            keywords.robot

Test Template       Addition

***Test Cases***    num_a       num_b       expected
Addition Test       
    [Tags]  Smoke
                    2           2           4
                    1           1           2
                    0           1           1
                    1           0           1
                    -1          1           0
                    -1          -1          -2
                    0           0           0



***Keywords***
Addition
    [Arguments]         ${num_a}        ${num_b}        ${expected}
    Add two numbers     ${num_a}        ${num_b}
    Result should be    ${expected}
    Clear Calculator