*** Settings ***
Library    SeleniumLibrary
#Resource   ../../../Libraries/PageObjects/CommonRepo.robot
#Resource   ../../../Libraries/PageObjects/DBP-237-Footer/Footer.robot
Resource    ../../../Libraries/PageObjects/SiteManagerCommonKeywords.robot

Suite Setup   Open site manager
Suite Teardown   Log off site Manger and Close Browser


*** Variables ***

*** Test Cases ***
Sitemanger navigation to personal page under page designer
#    Select Site SB COZA
    go to merchant page
    go to content page under merchant tools
    Run Keyword And Continue On Failure    open storefront and switch to business manager

    go to page designer to access page    Personal
    Launch Page Structure and access Tree components    ${tabComponentLocator}
    Exit Page Designer

*** Keywords ***
