*** Settings ***
Library    path1/TestFunction1.py
Variables    F:/Python/RFW/profiles/profile.yaml
Test Template    てすとけ～す

*** Test Cases ***
データ駆動1    ${string_model}
データ駆動2    ${integer_number}
データ駆動3    ${host_dict}
データ駆動4    ${host_dict.ip_address}
データ駆動5    ${host_dict.username}
データ駆動6    ${host_dict.password}

*** Keywords ***
てすとけ～す
    [Arguments]    ${arg1}
    Print Message    ${arg1}    ${True}
