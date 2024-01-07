*** Settings ***
Library    path1/TestFunction1.py
Test Template    てすとけ～す

*** Variables ***
${variable1}    var1
&{host_dict}    ip=127.0.0.1    user=user    password=password

*** Test Cases ***
データ駆動1    ${variable1}    2    3    4    5
データ駆動2    ${host_dict}    ${host_dict}[ip]    30    40    50

*** Keywords ***
てすとけ～す
    [Arguments]    ${arg1}    ${arg2}    ${arg3}    ${arg4}    ${arg5}
    Print Message    ${arg1}    ${True}
    Print Message    ${arg2}    ${False}
    Print Message    ${arg3}    ${True}
    Print Message    ${arg4}    ${False}
    Print Message    ${arg5}    ${True}
    Print Message    1919dayo    ${False}
    