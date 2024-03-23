*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   http://demowebshop.tricents.com/register

*** Test Cases ***
RegTest
   create webdriver  chrome  executable_path="C:\Drivers\chrome-win64\chrome.exe"
   open browser      ${url}  ${browser}
   maximize browser window

   open browser      ${url}  ${browser}
   maximize browser window

#   close browser
    close all browsers
