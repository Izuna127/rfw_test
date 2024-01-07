*** Settings ***
Library    path1/TestFunction1.py
Resource    grandchild/grandchild.robot

*** Keywords ***
てすとけ～すchild
    [Arguments]    ${arg1}
    Print Message    ${arg1}    ${True}
    # 引数1を2倍した値を取得
    ${returnValue}=    Has Return Value Func    22    ${True}
    てすとけ～すgrandchild    piyo-${returnValue}
    Print Message    child-dayo    ${True}
