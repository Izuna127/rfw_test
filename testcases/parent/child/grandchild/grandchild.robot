*** Settings ***
Library    path1/TestFunction1.py

*** Keywords ***
てすとけ～すgrandchild
    [Arguments]    ${arg1}
    Print Message    ${arg1}    ${True}
    Print Message    grandchild-dayo    ${True}
