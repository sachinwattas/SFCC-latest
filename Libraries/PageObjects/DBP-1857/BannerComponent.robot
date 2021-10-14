*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***

${StandardBankMobileImg}                       //*[@class="banner-container container px-0 px-sm-auto"]//img
${StandardBankMobileAltTxt}                    Get your monthly bank account fees back in airtime or data when using our Standard Bank SIM Card.Get free data as you swipe your bank cards.
${StandardBankMobileTitleTxt}                  INTRODUCING STANDARD BANK MOBILE


*** Keywords ***

the images in Banner Component displays for INTRODUCING STANDARD BANK
            Wait Until Keyword Succeeds  1 Min     5 Sec   scroll element into view            ${StandardBankMobileImg}
            wait until element is visible      ${StandardBankMobileImg}
	        page Should Contain Element   ${StandardBankMobileImg}

it shows images to have alt and title attributes for INTRODUCING STANDARD BANK
            ${getAltAtrribute}=         Get Element Attribute           ${StandardBankMobileImg}       attribute=alt
            should contain              ${getAltAtrribute}              ${StandardBankMobileAltTxt}
            ${getTitleAtrribute}=       Get Element Attribute            ${StandardBankMobileImg}          attribute=title
            should contain              ${StandardBankMobileTitleTxt}         ${getTitleAtrribute}
