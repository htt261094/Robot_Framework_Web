*** Settings ***
Library    JSONLibrary

*** Keywords ***
Read Config
    [Arguments]    ${ENV}
    ${json}=    Load JSON From File    ${CURDIR}/../TestData/evn.json
    ${url_list}=     Get Value From Json    ${json}    $.${ENV}.URL
    ${browser_list}=     Get Value From Json    ${json}    $.${ENV}.Browser
    ${url}=    Set Variable    ${url_list[0]}
    ${browser}=    Set Variable    ${browser_list[0]}
    RETURN    ${url}    ${browser}


Read Account Detail
    [Arguments]    ${Permission}
    ${json}=    Load Json From File    ${CURDIR}/../TestData/account.json
    ${usernames_list}=    Get Value From Json    ${json}    $.${Permission}.username
    ${passwords_list}=    Get Value From Json    ${json}    $.${Permission}.password
    ${username}=    Set Variable    ${usernames_list[0]}
    ${password}=    Set Variable    ${passwords_list[0]}
    RETURN    ${username}    ${password}

    