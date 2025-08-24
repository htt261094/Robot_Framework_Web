*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/KeywordsDefinition/Dashboard.robot
Resource    ../Resources/KeywordsDefinition/LoginPage.robot
Resource    ../Resources/Ultis/SortingElement.robot
Resource    ../Resources/hooks.robot

*** Test Cases ***
User go to Approved Customer Management screen and verify sort by Updated is default
    Open Browser From Config    SIT    chrome
    Maximize Browser Window
    Set Selenium Speed    0.3   
    Login with All Permission
    Select tenant    1
    User go to Customer Management Approved screen
    Sort collumn by Updated