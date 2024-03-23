*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
#ForLoop1
#     : FOR  ${i}    IN RANGE    1   10
#     \   Log to console    ${i}

#ForLoop2
#     : FOR  ${i}    IN   1  2   3   4   5   6   7   8
#     \   Log to console    ${i}

#ForLoop3withList
#     @{items}    create list   1    2   3   4   5
#     : FOR  ${i}    IN    @{items}
#     \   Log to console    ${i}

#ForLoop4
#     : FOR  ${i}    IN   john   david   smith  scott
#     \   Log to console    ${i}

#ForLoop5
#      @{namelist}    create list   john   david   smith  scott
#     : FOR  ${i}    IN    @{namelist}
#     \   Log to console    ${i}

ForLoop1
      @{items}    create list   1    2   3   4   5
     : FOR  ${i}    IN    @{items}
     \   Log to console    ${i}
     \   exit for loop if   ${i}==3