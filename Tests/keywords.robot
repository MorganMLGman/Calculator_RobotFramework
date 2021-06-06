*** Settings ***
Documentation   Set of keywords.
Library         ../CallCalculator.py
Library         ../LibBuild.py


*** Keywords ***
Build Library
    build_calculator_lib

Add two numbers
    [Arguments]     ${num_a}        ${num_b}
    add_numbers     ${num_a}        ${num_b}

Result should be
    [Arguments]     ${expected}
    check_result    ${expected}

Clear Calculator
    clear_result

Sub two numbers
    [Arguments]     ${num_a}        ${num_b}
    sub_numbers     ${num_a}        ${num_b}