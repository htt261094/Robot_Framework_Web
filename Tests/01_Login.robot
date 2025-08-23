*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/KeywordsDefinition/LoginPage.robot
Resource    ../Resources/hooks.robot

*** Test Cases ***
User login successfull with all permission account
    Open Browser From Config    SIT    chrome
    Set Selenium Speed    0.3
    Login with All Permission
    Select tenant    1