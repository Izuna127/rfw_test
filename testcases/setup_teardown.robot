*** Settings ***
Library    path1/TestFunction1.py
Variables    F:/Python/RFW/profiles/profile.yaml
Test Setup    事前準備    setup1    setup2
Test Teardown    後処理    teardown1    teardown2

*** Test Cases ***
テストだよ
    Print Message    test1    ${True}
    Error Occurred    ${True}    ${True}
    Print Message    test2    ${True}

*** Keywords ***
事前準備
    [Arguments]    ${arg1}    ${arg2}
    Print Message    ${arg1}    ${True}
    Error Occurred    ${True}    ${True}
    Print Message    ${arg2}    ${True}

後処理
    [Arguments]    ${arg1}    ${arg2}
    Print Message    ${arg1}    ${True}
    Error Occurred    ${True}    ${True}
    Print Message    ${arg2}    ${True}