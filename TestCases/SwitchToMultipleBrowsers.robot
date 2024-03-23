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

   sleep  3

   open browser      https://www.bing.com/    chrome
   maximize browser window

   switch browser  1
   ${title1}=  get  title
   log to console  ${title1}

   switch browser  2
   ${title2}=  get  title
   log to console  ${title2}

   sleep   3
   close all browsers


