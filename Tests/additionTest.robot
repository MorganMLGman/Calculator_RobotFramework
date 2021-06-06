***Settings***
Documentation       Test Suite to test adding two numbers

Resource            keywords.robot

Test Template       Addition

***Test Cases***    num_a       num_b       expected
Integer Addition Test       
    [Tags]  Smoke
                    2           2           4
                    1           1           2
                    0           1           1
                    1           0           1
                    -1          1           0
                    -1          -1          -2
                    0           0           0

Float Addition Test
    [Tags]  Non-Essential                    
                    0.5         0.4         0.9
                    0.4         -0.5        -0.1
                    1.1         -1.1        0
                    1.1         1.1         2.2



***Keywords***
Addition
    [Arguments]         ${num_a}        ${num_b}        ${expected}
    Add two numbers     ${num_a}        ${num_b}
    Result should be    ${expected}
    Clear Calculator