***Settings***
Documentation       Test Suite for testing different calculator functionality

Resource            keywords.robot

Test Template       Expression

***Test Cases***    string                      expected
Expression Calculation Test
    [Tags]  Functionality
                    2 + 2 + 2                   6
                    2 - 2 + 2 + 8 % 3           1
                    2 * 1 + 2 / 3               1.3333
                    -0.1 * 8 + -5.3             -6.1
                    -0.1 * 8 + -5.3 * -8.1      49.41
                    0.1 / 0                     0
                    24.2 % 0.2                  0
                    24.2 % 12                   0.2
                    -24.2 % 12                  -0.2


***Keywords***
Expression
    [Arguments]             ${string}       ${expected}
    Expression calculation  ${string}
    Result should be        ${expected}
    Clear Calculator


