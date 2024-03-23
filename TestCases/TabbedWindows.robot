*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   https://demo.automationtesting.in/windows.html

*** Test Cases ***
TabbedWindowsTest
   create webdriver  chrome  executable_path="C:\Drivers\chrome-win64\chrome.exe"
   open browser      ${url}  ${browser}
   maximize browser window

   click  element   xpath://*[@id="Tabbed"]/a/button
   select  window  title=Sakinalium | Home
   click  element   xpath://*[@id="container"]/header/div/div/div[2]/ul/li[4]/a
   sleep  3

   close all browsers


