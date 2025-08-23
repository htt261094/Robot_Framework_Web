*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Ultis/ReadJson.robot

*** Keywords ***
Open Browser From Config
    [Arguments]    ${ENV}    ${BROWSER}
    ${url}    ${browsers}=    Read Config    ${ENV}
    Open Browser    ${url}    ${BROWSER}

Close Browser Session
    Close All Browsers
