*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   http://demowebshop.tricents.com/register

*** Test Cases ***
RegTest
   ${speed} = get selenium speed
   log on to console    ${speed}
   create webdriver  chrome  executable_path="C:\Drivers\chrome-win64\chrome.exe"
   open browser      ${url}  ${browser}
   maximize browser window

   select radio button  Gender  M
   input text   name:FirstName  Sreeni
   input text   name:LastName  vasan
   input text   name:Email  ssreeni13@gmail.com
   input text   name:Password  ssreeni13
   input text   name:ConfirmPassword  ssreeni13

   ${speed} = get selenium speed
   log on to console    ${speed}

   close browser
