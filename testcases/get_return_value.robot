*** Settings ***
Library    path1/TestFunction1.py
Variables    F:/Python/RFW/profiles/profile.yaml
Test Template    てすとけ～す

*** Test Cases ***
データ駆動1    ${string_model}

*** Keywords ***
てすとけ～す
    [Arguments]    ${arg1}
    # 引数1の数値を2倍にして返す
    ${returnValue}=    Has Return Value Func    4    ${True}
    # ↑の戻り値が10ならPrint Messageを実行する
    Run Keyword If    ${returnValue} == 10    Print Message    ${arg1}    ${True}