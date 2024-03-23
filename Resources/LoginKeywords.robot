*** Settings ***
Library     SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}     ${Browser}
    open browser    ${SiteUrl}     ${Browser}
    Maximize Browser Window

Enter Username
    [Arguments]  ${username}
    Input Text  ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]  ${password}
    Input Text  ${txt_loginPassword}    ${password}

Click SignIn
    click button    ${btn_signIn}

Verify Successful Login
    title should be Find a Flight: Mercury Tours:

close my browsers
    close all browsers


