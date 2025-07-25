*** Settings ***
Library    SeleniumLibrary
Variables    ../Test Data/TestData.py
Variables    ../Locators/LoginPage.py

*** Variables ***
${Base_URL}    https://play1.automationcamp.ir/login.html
${Browser}    chrome

*** Keywords ***
Open page
    Open Browser    ${Base_URL}    ${Browser}

User input username
    Input Text    ${Username_txtbox}    ${Username}

User input password
    Input Password    ${Password_txtbox}    ${Password}

User click login button
    Click Button    ${Login_btn}

Close_Browser
    Close All Browsers