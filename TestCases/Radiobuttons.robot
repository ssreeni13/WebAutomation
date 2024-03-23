*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
   create webdriver  chrome  executable_path="C:\Drivers\chrome-win64\chrome.exe"
   open browser      ${url}  ${browser}
   maximize browser window
   set selenium speed 2seconds

   #Selecting Radio Buttons
   select radio  button sex Female
   select radio  button exp 5

   #Selecting Check Box
   select checkbox  BlackTea
   select checkbox  RedTea

   unselect checkbox  BlackTea
   close browser
