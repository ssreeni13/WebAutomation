*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   https://seleniumhq.github.io/selenium/docs/api/java/index

*** Test Cases ***
Testing Frames
   create webdriver  chrome  executable_path="C:\Drivers\chrome-win64\chrome.exe"
   open browser      ${url}  ${browser}
   maximize browser window

   select  frame    packageListFrame     #id  name xpath
   click  link  org.openqa.selenium
   unselect  frame
   sleep  3

   select  frame    packageFrame     #id  name xpath
   click  link  WebDriver
   unselect  frame
   sleep  3

   select  frame    classFrame     #id  name xpath
   click  link  Help
   unselect  frame
   sleep  3

   close browser


