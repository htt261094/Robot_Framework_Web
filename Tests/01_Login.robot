*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/KeywordsDefinition/LoginPage.robot
Resource    ../Resources/hooks.robot

*** Test Cases ***
User login with Wrong Account information
    Open Browser From Config    SIT    chrome
    Maximize Browser Window
    Set Selenium Speed    0.3    
    Login with wrong account
    User see error message

User login successfull with all permission account
    Login with All Permission
    Select tenant    1