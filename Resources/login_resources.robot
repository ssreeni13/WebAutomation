*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com
${BROWSER}      chrome

*** Keywords ***
Open my Browser
    open browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window
Close Browsers
    close all browsers
Open Login Page
    go to  ${LOGIN URL}
Input username
    [Arguments]    ${username}
    input text   id:Email   ${username}
Input password
    [Arguments]    ${password}
    input text   id:Password   ${password}
Click login button
    click element   xpath://input[@class='button-1 Login-button']
Click logout button
    click link  Logout

Error message should be visible
    page should contain  Login was unsuccessful

Dashboard message should be visible
    page should contain  Dashboard