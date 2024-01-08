*** Settings ***
Library    path1/TestFunction1.py
Test Template    てすとけ～す

*** Variables ***
${var1}    Data_Value_1
${var2}    Data_Value_2

*** Test Cases ***
データ駆動1    ${var1}    ${var2}

*** Keywords ***
てすとけ～す
    [Arguments]    ${arg1}    ${arg2}
    Print Message    ${arg1}    ${True}
    Print Message    ${arg2}    ${True}
    