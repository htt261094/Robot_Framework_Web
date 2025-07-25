*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/KeywordsDefinition/LoginPage.robot
Resource    ../Resources/KeywordsDefinition/MenuPage.robot

*** Test Cases ***
Login with wrong username
    Open page
    User input wrong username
    User input password
    User click login button
    User see login error message
    Close_Browser

Login with wrong password
    Open page
    User input username
    User input wrong password
    User click login button
    User see login error message
    Close_Browser

Login with wrong username and password
    Open page
    User input wrong username
    User input wrong password
    User click login button
    User see login error message
    Close_Browser 
    