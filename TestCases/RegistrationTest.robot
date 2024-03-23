
*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}      headless

chrome
${SiteUrl}   http://newtours.demoaut.com/

*** Test Cases ***
RegistrationTest
    Open my Browser     ${SiteUrl}     ${Browser}
    Click Register Link
    Enter FirstName     Sreeni
    Enter LastName      vasan
    Enter Phone         1234567890
    Enter Email         ssreeni13@gmail.com
    Enter Address1      Toronto
    Enter Address2      Canada
    Enter City          Toronto
    Enter State         Brampton
    Enter Postal Code   L3S  1E7
    Enter Country       CANADA
    Enter User Name     vasanxyz
    Enter Password      vasanxyz
    Enter Confirmed Password    vasanxyz
    Click Submit
    Verify Successful Registration
    close my browsers