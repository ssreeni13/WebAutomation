*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
LoginTC
   create webdriver  chrome  executable_path="C:\Drivers\chrome-win64\chrome.exe"
   open browser      ${url}  ${browser}
   maximize browser window
   input text  id:txtUsername  Admin
   input text  id:txtPassword  admin123

   #capture element screenshot  xpath://*[@id="divlogo"]/img   C:/Users/Sreenivas Sreeni/PycharmProjects/WebAutomation/logo.png
   #capture element screenshot   C:/Users/Sreenivas Sreeni/PycharmProjects/WebAutomation/loginTC.png

   capture element screenshot  xpath://*[@id="divlogo"]/img   logo.png
   capture element screenshot  loginTC.png
   close all browsers


