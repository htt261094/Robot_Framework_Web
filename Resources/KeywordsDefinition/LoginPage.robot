*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    ../Locators/LoginPageLocators.py
Resource    ../Ultis/ReadJson.robot

*** Keywords ***
Login with Edit permission
    ${username}    ${password}=    Read Account Detail    Edit
    Input Text    ${username_txtbox}    ${username}
    Input Text    ${password_txtbox}    ${password}
    Click Element    ${signin_btn}

Login with View persmission
    ${username}    ${password}=    Read Account Detail    View
    Input Text    ${username_txtbox}    ${username}
    Input Text    ${password_txtbox}    ${password}
    Click Element    ${signin_btn}

Login with Check permission
    ${username}    ${password}=    Read Account Detail    Check
    Input Text    ${username_txtbox}    ${username}
    Input Text    ${password_txtbox}    ${password}
    Click Element    ${signin_btn}

Login with Delete permission
    ${username}    ${password}=    Read Account Detail    Delete
    Input Text    ${username_txtbox}    ${username}
    Input Text    ${password_txtbox}    ${password}
    Click Element    ${signin_btn}

Login with No Permission
    ${username}    ${password}=    Read Account Detail    No_Permission
    Input Text    ${username_txtbox}    ${username}
    Input Text    ${password_txtbox}    ${password}
    Click Element    ${signin_btn}

Login with View and Check permission
    ${username}    ${password}=    Read Account Detail    View_n_Check
    Input Text    ${username_txtbox}    ${username}
    Input Text    ${password_txtbox}    ${password}
    Click Element    ${signin_btn}

Login with Edit and Check permission
    ${username}    ${password}=    Read Account Detail    Edit_n_Check
    Input Text    ${username_txtbox}    ${username}
    Input Text    ${password_txtbox}    ${password}
    Click Element    ${signin_btn}

Login with All Permission
    ${username}    ${password}=    Read Account Detail    All_Permission
    Input Text    ${username_txtbox}    ${username}
    Input Text    ${password_txtbox}    ${password}
    Click Element    ${signin_btn}

Login with wrong account
    ${username}    ${password}=    Read Account Detail    Wrong_account
    Input Text    ${username_txtbox}    ${username}
    Input Text    ${password_txtbox}    ${password}
    Click Element    ${signin_btn}

User see error message
    Wait Until Element Is Visible    ${error_message}
    Element Text Should Be    ${error_message}    Request failed with status code 400

Select tenant
    [Arguments]    ${tetantID}
    Wait Until Element Is Visible    ${tenant_ddl}
    IF    ${tetantID} == 1
        Click Element    ${tenant_ddl}
        Click Element    ${tetant0001_option}
    ELSE IF    ${tetantID} == 2
        Click Element    ${tenant_ddl}
        Click Element    ${tetant0002_option}     
    ELSE IF    ${tetantID} == 3
        Click Element    ${tenant_ddl}
        Click Element    ${tetant0003_option}      
    ELSE IF    ${tetantID} == 4
        Click Element    ${tenant_ddl}
        Click Element    ${tetant0004_option} 
    ELSE IF    ${tetantID} == 5
        Click Element    ${tenant_ddl}
        Click Element    ${tetant0005_option}
    ELSE IF    ${tetantID} == 6
        Click Element    ${tenant_ddl}
        Click Element    ${tetant0006_option}
    END