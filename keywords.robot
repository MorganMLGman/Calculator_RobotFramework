*** Settings ***
Documentation   Set of keywords.
Library         CallCalculator.py


*** Test Cases ***
Addition_numbers
    add_numbers     1       1
    check_result        3