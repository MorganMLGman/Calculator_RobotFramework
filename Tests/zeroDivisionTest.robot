***Settings***
Documentation       Test Suite to test dividing numbers by 0

Resource            keywords.robot
Library             Process

Test Template       ZeroDivision

***Test Cases***    num_a       num_b       not_expected
Integer Zero Division Test
    [Tags]  Smoke
                    1           0           [inf, nan, -inf]
                    0           1           [inf, nan, -inf]
                    0           0           [inf, nan, -inf]
                    1           1           [inf, nan, -inf]
                    -1          0           [inf, nan, -inf]
                    0           -1          [inf, nan, -inf]
                    -1          -1          [inf, nan, -inf]

Fload Zero Division Test
    [Tags]  Smoke
                    1.5         0.0         [inf, nan, -inf]
                    0.0         1.5         [inf, nan, -inf]
                    0.0         0.0         [inf, nan, -inf]
                    0.1         0.1         [inf, nan, -inf]
                    -1.5        0.0         [inf, nan, -inf]
                    0.0         -1.5        [inf, nan, -inf]
                    -1.5        -1.5        [inf, nan, -inf]


***Keywords***
ZeroDivision
    [Arguments]         ${num_a}        ${num_b}        ${not_expected}
    Div two numbers     ${num_a}        ${num_b}
    Result error        ${not_expected}