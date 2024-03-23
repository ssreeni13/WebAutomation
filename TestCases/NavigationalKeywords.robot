*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   https://www.google.com/

*** Test Cases ***
MultipleBrowsersTest
   create webdriver  chrome  executable_path="C:\Drivers\chrome-win64\chrome.exe"
   open browser      ${url}  ${browser}
   maximize browser window
   ${loc}=  get  location
   log to console  ${loc}

   sleep  3

   go to  https://www.bing.com/
   ${loc}=  get  location
   log to console  ${loc}

   sleep  3

   go back
   ${loc}=  get  location
   log to console  ${loc}

   close all browsers


