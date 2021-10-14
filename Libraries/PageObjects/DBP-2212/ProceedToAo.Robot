*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary.Get WebElements
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot

*** Variables ***
#Lending solution page
${ProceedToApplictionBtn}      (//*[@data-text="proceed to application button click"])[1]
${LoginPageTitle}       //*[contains(text(),"Sign in with your Standard Bank ID")]




*** Keywords ***
cutomer procced to application
            wait until keyword succeeds        5       5s    click element  ${ProceedToApplictionBtn}
Login page is displayed
            sleep                              10s
            wait until element is visible       ${LoginPageTitle}
            ELEMENT SHOULD BE VISIBLE          ${LoginPageTitle}
URL redirect to sign in page
            ${CurrentURL}           get location
            log to console          ${CurrentURL}
            should contain          ${CurrentURL}    authorization.oauth2

