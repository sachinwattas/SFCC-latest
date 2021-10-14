*** Settings ***

Library    SeleniumLibrary
Resource


Suite Setup    openbrowser
Suite Teardown    closebrowser


*** Variables ***

${url}  uat.standarbank.co.za



*** Test Cases ***
Test case one to verify the screen
    first step to launch url
    2nd step to click homepage

Test case one to verify the screen
    first step to launch url
    2nd step to click homepage


Test case one to verify the screen
    first step to launch url
    2nd step to click homepage


*** Keywords ***
openbrowser
Arg
    open browser    ${url}    ${browser}

Closebrowser
    Close All Browsers

first step to launch url

    Go To    ${url}
    Click Element    //x/d/d/f
    Get WebElement    css=dasdasdsadsa
    Get WebElements
    evaluate
    Element Should Contain
    element should be disabled
    Element Should Be Enabled
