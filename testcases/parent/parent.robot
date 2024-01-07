*** Settings ***
Library    path1/TestFunction1.py
Variables    F:/Python/RFW/profiles/profile.yaml
Resource    child/child.robot
Test Template    てすとけ～す

*** Test Cases ***
データ駆動1    ${string_model}

*** Keywords ***
てすとけ～す
    [Arguments]    ${arg1}
    Print Message    ${arg1}    ${True}
    # 引数1を2倍した値を取得
    ${returnValue}=    Has Return Value Func    10    ${True}
    # 子テストケースに値を渡してみる
    てすとけ～すchild    ${returnValue}
