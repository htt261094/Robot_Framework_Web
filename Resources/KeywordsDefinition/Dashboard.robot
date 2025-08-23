*** Settings ***
Library    SeleniumLibrary
Library    ../../Resources/Locators/DashboardLocators.py

*** Keywords ***
User go to Variable Management Approved screen
    ${desiredScreen}=    Set Variable    Variable Management
    ${leftMenu}=    Get Left Menu Xpath    ${desiredScreen}
    ${Approved}=    Get To Approved Screen    ${desiredScreen}
    Click Element    ${leftMenu}
    Click Element    ${Approved}

User go to Variable Management Pending Approval screen
    ${desiredScreen}=    Set Variable    Variable Management
    ${leftMenu}=    Get Left Menu Xpath    ${desiredScreen}
    ${Pending_Approval}=    Get To Pending Approval Screen    ${desiredScreen}
    Click Element    ${leftMenu}
    Click Element    ${Pending_Approval}

User go to Customer Management Approved screen
    ${desiredScreen}=    Set Variable    Customer Management
    ${leftMenu}=    Get Left Menu Xpath    ${desiredScreen}
    ${Approved}=    Get To Approved Screen    ${desiredScreen}
    Click Element    ${leftMenu}
    Click Element    ${Approved}

User go to Customer Management Pending Approval screen
    ${desiredScreen}=    Set Variable    Customer Management
    ${leftMenu}=    Get Left Menu Xpath    ${desiredScreen}
    ${Pending_Approval}=    Get To Pending Approval Screen    ${desiredScreen}
    Click Element    ${leftMenu}
    Click Element    ${Pending_Approval}

User go to Scenario Management Approved screen
    ${desiredScreen}=    Set Variable    Scenario Management
    ${leftMenu}=    Get Left Menu Xpath    ${desiredScreen}
    ${Approved}=    Get To Approved Screen    ${desiredScreen}
    Click Element    ${leftMenu}
    Click Element    ${Approved}

User go to Scenario Management Pending Approval screen
    ${desiredScreen}=    Set Variable    Scenario Management
    ${leftMenu}=    Get Left Menu Xpath    ${desiredScreen}
    ${Pending_Approval}=    Get To Pending Approval Screen    ${desiredScreen}
    Click Element    ${leftMenu}
    Click Element    ${Pending_Approval}

User go to Close Monitoring Approved screen
    ${List_Management}=    Set Variable    List Management
    ${desiredScreen}=    Set Variable    Close Monitoring
    ${leftMenu}=    Get Left Menu Xpath    ${List_Management}
    ${Approved}=    Get To Approved Screen    ${desiredScreen}
    Click Element    ${List_Management}
    Click Element    ${desiredScreen}

User go to Close Monitoring Pending Approval screen
    ${List_Management}=    Set Variable    List Management
    ${desiredScreen}=    Set Variable    Close Monitoring
    ${leftMenu}=    Get Left Menu Xpath    ${List_Management}
    ${Approved}=    Get To Pending Approval Screen    ${desiredScreen}
    Click Element    ${List_Management}
    Click Element    ${desiredScreen}

User go to White List Approved screen
    ${List_Management}=    Set Variable    List Management
    ${desiredScreen}=    Set Variable    White list
    ${leftMenu}=    Get Left Menu Xpath    ${List_Management}
    ${Approved}=    Get To Approved Screen    ${desiredScreen}
    Click Element    ${List_Management}
    Click Element    ${desiredScreen}

User go to White List Pending Approval screen
    ${List_Management}=    Set Variable    List Management
    ${desiredScreen}=    Set Variable    White list
    ${leftMenu}=    Get Left Menu Xpath    ${List_Management}
    ${Approved}=    Get To Pending Approval Screen    ${desiredScreen}
    Click Element    ${List_Management}
    Click Element    ${desiredScreen}

User go to Risk Classes Approved screen
    ${List_Management}=    Set Variable    List Management
    ${desiredScreen}=    Set Variable    Risk Classes
    ${leftMenu}=    Get Left Menu Xpath    ${List_Management}
    ${Approved}=    Get To Approved Screen    ${desiredScreen}
    Click Element    ${List_Management}
    Click Element    ${desiredScreen}

User go to Risk Classes Pending Approval screen
    ${List_Management}=    Set Variable    List Management
    ${desiredScreen}=    Set Variable    Risk Classes
    ${leftMenu}=    Get Left Menu Xpath    ${List_Management}
    ${Approved}=    Get To Pending Approval Screen    ${desiredScreen}
    Click Element    ${List_Management}
    Click Element    ${desiredScreen}

User go to Reference List Approved screen
    ${List_Management}=    Set Variable    List Management
    ${desiredScreen}=    Set Variable    Reference list
    ${leftMenu}=    Get Left Menu Xpath    ${List_Management}
    ${Approved}=    Get To Approved Screen    ${desiredScreen}
    Click Element    ${List_Management}
    Click Element    ${desiredScreen}

User go to Reference List Pending Approval screen
    ${List_Management}=    Set Variable    List Management
    ${desiredScreen}=    Set Variable    Reference list
    ${leftMenu}=    Get Left Menu Xpath    ${List_Management}
    ${Approved}=    Get To Pending Approval Screen    ${desiredScreen}
    Click Element    ${List_Management}
    Click Element    ${desiredScreen}