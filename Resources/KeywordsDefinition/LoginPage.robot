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

User input wrong username
    Input Text    ${Username_txtbox}    ${Wrong_Username}

User input wrong password
    Input Text    ${Password_txtbox}    ${Wrong_Password}

User click login button
    Click Button    ${Login_btn}

User see login error message
    Element Text Should Be    ${Login_error_Message}    Incorrect username or password. Try again!!

Close_Browser
    Close All Browsers