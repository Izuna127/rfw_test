*** Settings ***
Library    path1/TestFunction1.py
Variables    F:/Python/RFW/profiles/profile.yaml
Test Template    てすとけ～す

*** Variables ***
${var1}    Data_Value_1
${var2}    Data_Value_2
${var3}    Data_Value_3

*** Test Cases ***
データ駆動1    ${var1}    ${var2}    ${var3}

*** Keywords ***
てすとけ～す
    [Arguments]    ${arg1}    ${arg2}    ${arg3}
    ${is_supported} =    Is Supported    ${model}    ${config}
    Set Suite Variable    ${is_supported}
    Print Message    ${arg1}    ${True}
    Run Keyword If    ${is_supported}    Print Message    hogehoge    ${True}
    Run Keyword If    not ${is_supported}   Print Message    fugapiyo    ${True}
    Run Keyword And Ignore Error    Error Occurred    ${True}    ${True}
    Print Message    ${arg2}    ${True}
    Print Message    ${arg3}    ${True}
    