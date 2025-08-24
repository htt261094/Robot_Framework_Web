*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Keywords ***
Sort collumn by Updated
    Wait Until Element Is Visible    locator=//td[8]    timeout=30s
    ${updatedTime}=    Get WebElements    //td[8]
    ${updatedTime_List}=    Create List
    FOR    ${el}    IN    @{updatedTime}
        ${text}=    Get Text    ${el}
        Append To List    ${updatedTime_List}    ${text}
        Log    ${updatedTime_List}
    END
    ${sortedList}=    Copy List    ${updatedTime_List}
    Sort List    ${sortedList}
    Reverse List    ${sortedList}
    Lists Should Be Equal    ${updatedTime_List}    ${sortedList}

    