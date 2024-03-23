*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot

*** Variables ***
${browser}   chrome
${url}   http://www.newtours.demoaut.com/

*** Test Cases ***
TC1
   create webdriver  chrome  executable_path="C:\Drivers\chrome-win64\chrome.exe"
   ${PageTitle}=  launchBrowser   ${url}  ${browser}
   log to console  ${PageTitle}
   log   ${PageTitle}
   maximize browser window
   input text  id:userName  mercury
   input text  id:password  mercury

#*** Keywords ***
#launchBrowser
#   [Arguments]   ${appurl}  ${appbrowser}
#   open browser  ${appurl}  ${appbrowser}
#   maximize browser window
#   ${title}=  get title
#   [Return]   ${title}



