*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
LoginTC
   create webdriver  chrome  executable_path="C:\Drivers\chrome-win64\chrome.exe"
   open browser      ${url}  ${browser}
   maximize browser window
#   execute  javascript  window.scrollTo(0,2500)
   scroll element into view   xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img

   execute  javascript  window.scrollTo(0,document.body.scrollHeight)   #end of page
   sleep   5
   execute  javascript  window.scrollTo(0,-documnt.body.scrollHeight)   #starting page

