*** Settings ***
Library   SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library     DataDriver    ../TestData/LoginData.xlsx    sheet_name=Sheet1

Suite Setup  Open my Browser
Suite Teardown  Close Browsers
Test Template  Invalid login

*** Test Cases ***

LoginTestwithExcel  using   ${username}  and  ${password}

*** Keywords ***
Invalid login
    [Arguments]   ${username}       ${password}
    Input username   ${username}
    Input password     ${password}
    click login button
    Error message should be visible