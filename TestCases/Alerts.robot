*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   https://testautomationpractice.blogspot.com

*** Test Cases ***
HandlingAlerts
   create webdriver  chrome  executable_path="C:\Drivers\chrome-win64\chrome.exe"
   open browser      ${url}  ${browser}
   maximize browser window

   click element  xpath://*[@id="HTML9"]/div[1]/button      #opens alert
   sleep    3
   #handle alert    accept
   #handle alert    dismiss
   #handle alert    Leave
   #alert should not be present  Press a button!


