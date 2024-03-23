*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
      create webdriver  chrome  executable_path="C:\Drivers\chrome-win64\chrome.exe"
      open browser  http://www.newtours.demoaut.com/    chrome
      maximize browser window
      ${AllLinksCount}=    get element count  xpath://a
      log to console    ${AllLinksCount}

      @{LinkItems}    create list

     : FOR  ${i}    IN RANGE    1   ${AllLinksCount}+1
     \   ${linkText}=   get text  xpath:(//a)[${i}]
     \   log to console    ${linkText}
