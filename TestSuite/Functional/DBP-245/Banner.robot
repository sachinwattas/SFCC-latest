*** Settings ***
Library    SeleniumLibrary
Documentation   	Feature:Banner

Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource   ../../../Libraries/PageObjects/DBP-237-Footer/Footer.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***
${personalMenuLocator}    //*[@id="personal"]/span
${bannerContainerLocator}  //*[@id="Personal"]/div[2]/div/div[6]/div/div
${bannerHeadingLocator}    //div[contains(@class,'banner-normal')]/div[1]/div[1]/div
${bannerHeadingTxt}    INTRODUCING STANDARD BANK MOBILE
${bannerDescriptionLocator}    //p[contains(text(),'Get your monthly bank account fees back in airtime')]
${bannerDescriptionTxt}    Get your monthly bank account fees back in airtime or data when using our Standard Bank SIM Card.
${bannerDescription1Locator}    //p[contains(text(),'Get free data as you swipe your bank cards.')]
${bannerDescription1Txt}    Get free data as you swipe your bank cards.
${bannerRegisterButtonLocator}    //a[contains(text(),'REGISTER NOW')]
${bannerRegisterButtonCSSLocator}    css=div[class*='banner-normal'] > div:nth-of-type(1) > div:nth-of-type(3) > div > a
${bannerRegisterButtonTxt}    REGISTER NOW
${bannerRegisterUrl}    https://mobile.standardbank.co.za/
${bannerImageLocator}    //html/body/div[1]/div/div[2]/div[2]/div/div[6]/div/div/div[2]/picture/img
${bannerPositionLocator}    //*[@id="Personal"]/div[2]/div/div[6]/div/div
${bannerExpectedAttribute}    banner-inner banner-normal
${mobilePageLink}    https://mobile.standardbank.co.za/
${simPageLocation}    //u[contains(text(),'Standard Bank SIM Card')]
${simPageLink}    /southafrica/personal/products-and-services/bank-with-us/standard-bank-mobile
${expBgColor}    rgba(0, 137, 255, 1)

*** Test Cases ***

Customer displays Banner component
    [Documentation]  Feature: Banner Component
    ...    Scenario: Customer displays Banner component
    [Tags]  Scenario_DBP-823  UserStory_DBP-245

#    Given Site manager add Title, Text, Button and Image in Banner component
    When the Customer displays the Banner component
    Then content area (Title, Text, Button) displayed on the left side
    And the Image is displayed on the right side (desktop and tablet)
#    And the Image is displayed above content area on mobile

Customer hovers over the Call to Action button on the banner
    [Documentation]  Feature: Banner Component
    ...    Scenario: Customer hovers over the Call to Action button on the banner
    [Tags]  Scenario_DBP-707  UserStory_DBP-245
#    Given the Site Manager has set the Call to Action URL
    When the Customer hovers over (tab and hold on Mobile) the button on the slide
    Then the button is displayed in hover mode (darker background)

Customer selects the Call to Action button on the banner
    [Documentation]  Feature: Banner Component
    ...    Scenario: Customer hovers over the Call to Action button on the banner
    [Tags]  Scenario_DBP-706  UserStory_DBP-245
#   Given the Site Manager has set the Call to Action URL
    When the Customer selects the Call to Action button
    Then the page behind the URL is opened

Customer clicks the link Standard Bank SIM Card on banner description
    [Documentation]  Feature: Banner Component
    ...    Scenario: Customer hovers over the Call to Action button on the banner
    [Tags]  Scenario_Adhoc  UserStory_DBP-245
#   Given the Site Manager has set the Call to Action URL
    When Run Keyword And Continue On Failure    the Customer clicks on Standard Bank SIM Card text
    Then Run Keyword And Continue On Failure    the standard bank mobile page should display


*** Keywords ***
the Customer displays the Banner component
    Run Keyword And Continue On Failure    Check the headings

Check the headings
    HandleConsentYes
    Click Element    ${personalMenuLocator}
    wait until element is visible    ${bannerContainerLocator}
    mouse over    ${bannerContainerLocator}
    Element Should Be Visible    ${bannerImageLocator}

content area (Title, Text, Button) displayed on the left side
    Run Keyword And Continue On Failure    Verify Banner contents
Verify Banner contents
    Element Should Be Visible    ${bannerHeadingLocator}
    Element Should Contain    ${bannerHeadingLocator}    ${bannerHeadingTxt}
    Element Should Be Visible    ${bannerDescriptionLocator}
    Element Should Contain    ${bannerDescriptionLocator}    ${bannerDescriptionTxt}
    Element Should Be Visible    ${bannerDescription1Locator}
    Element Should Contain    ${bannerDescription1Locator}    ${bannerDescription1Txt}
    Element Should Be Visible    ${bannerRegisterButtonLocator}
    Element Should Contain    ${bannerRegisterButtonLocator}    ${bannerRegisterButtonTxt}
    Element Should Be Enabled    ${bannerRegisterButtonLocator}
    #${hPosition}=    get horizontal position    ${bannerRegisterButtonLocator}
    #${vPosition}=    get vertical position  ${bannerRegisterButtonLocator}
    #log  ${hPosition}
    #log  ${vPosition}

the Image is displayed on the right side (desktop and tablet)
    Run Keyword And Continue On Failure    Verify the position of the picture and text

Verify the position of the picture and text
    capture element screenshot  ${bannerImageLocator}
    element attribute value should be    ${bannerPositionLocator}  class    ${bannerexpectedattribute}
    #${hPosition}=    get horizontal position    ${bannerImageLocator}
    #${vPosition}=    get vertical position  ${bannerImageLocator}
    #log  ${hPosition}
    #log  ${vPosition}
#the Image is displayed above content area on mobile

the Customer hovers over (tab and hold on Mobile) the button on the slide
    Run Keyword And Continue On Failure    Verify the hover over Register now button

Verify the hover over Register now button
    mouse over    ${bannerRegisterButtonLocator}

the button is displayed in hover mode (darker background)
    Verify the hover background color

Verify the hover background color
    ${elem}    Get Webelement    ${bannerRegisterButtonCSSLocator}
    ${bgColor}    Call Method    ${elem}    value_of_css_property    background-color
    log    ${bgColor}
    #evaluate  ${bgColor} == ${expBgColor}
    should be equal    ${bgColor}    ${expBgColor}

the Customer selects the Call to Action button
    Click on register button


Click on register button
    Click Element  ${bannerRegisterButtonLocator}

the page behind the URL is opened
    location should be    ${mobilePageLink}
    go to main home page

the Customer clicks on Standard Bank SIM Card text
    Click Element    ${simPageLocation}

the standard bank mobile page should display
    #location should be    ${simPageLink}
    ${url}      get location
    Should Be True      '${simPageLink}' in '${url}'
    go to main home page