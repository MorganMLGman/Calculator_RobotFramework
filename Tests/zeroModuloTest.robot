***Settings***
Documentation       Test Suite for testing zero modulo division

Resource            keywords.robot

Test Template       ZeroModulo

***Test Cases***    num_a       num_b       not_expected
Integer Zero Modulo Test
    [Tags]  Smoke
                    1           0           [inf, nan, -inf]
                    -1          0           [inf, nan, -inf]
                    0           0           [inf, nan, -inf]
                    0           1           [inf, nan, -inf]
                    1           1           [inf, nan, -inf]
                    -1          1           [inf, nan, -inf]
                    1           -1          [inf, nan, -inf]
                    0           -1          [inf, nan, -inf]
                    -1          -1          [inf, nan, -inf]


Float Zero Modulo Test
    [Tags]  Smoke
                    1.0         0.0         [inf, nan, -inf]
                    0.1         0.0         [inf, nan, -inf]
                    -1          0.0         [inf, nan, -inf]
                    -0.1        0.0         [inf, nan, -inf]
                    0.0         0.0         [inf, nan, -inf]
                    0.0         1.0         [inf, nan, -inf]
                    0.0         0.1         [inf, nan, -inf]
                    0.0         -1.0        [inf, nan, -inf]
                    0.0         -0.1        [inf, nan, -inf]
                    1.0         1.0         [inf, nan, -inf]
                    1.0         0.1         [inf, nan, -inf]
                    0.1         1.0         [inf, nan, -inf]
                    0.1         0.1         [inf, nan, -inf]
                    1.0         -1.0        [inf, nan, -inf]
                    1.0         -0.1        [inf, nan, -inf]
                    0.1         -1.0        [inf, nan, -inf]
                    0.1         -0.1        [inf, nan, -inf]
                    -1.0        1.0         [inf, nan, -inf]
                    -1.0        0.1         [inf, nan, -inf]
                    -0.1        1.0         [inf, nan, -inf]
                    -0.1        0.1         [inf, nan, -inf]
                    -1.0        -1.0        [inf, nan, -inf]
                    -1.0        -0.1        [inf, nan, -inf]
                    -0.1        -1.0        [inf, nan, -inf]
                    -0.1        -0.1        [inf, nan, -inf]

***Keywords***
ZeroModulo
    [Arguments]         ${num_a}        ${num_b}        ${not_expected}
    Mod from numbers    ${num_a}        ${num_b}
    Result error        ${not_expected}