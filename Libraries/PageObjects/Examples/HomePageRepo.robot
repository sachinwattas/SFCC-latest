*** Settings ***

Library     SeleniumLibrary


*** Keywords ***
search topic
    input text  //*[@id="searchInput"]  SalesForce
    press key   //*[@id="searchInput"]  \\13
    page should contain   Salesforce
Language Selection
    click element  //*[@id="js-link-box-en"]/strong
Content view
    click element  //*[@id="n-contents"]/a
    page should contain  Wikipedia:Contents
    ${Text} =   get text  //*[@id="n-contents"]/a
    log  ${Text}
Current Events view
    click element  //*[@id="n-currentevents"]/a
    page should contain  Portal:Current events
    ${Text} =   get text  //*[@id="n-currentevents"]/a
    log  ${Text}