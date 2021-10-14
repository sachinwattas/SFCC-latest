*** Settings ***
Documentation    Feature:Hero Banner Component


Library    SeleniumLibrary
Resource    ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-240/HeroBannerComponentResources.robot
Suite Setup  Starting Session with Desktop Browser
Suite Teardown  Ending Session by Closing the Desktop Browser

*** Variables ***

${slide1-Area}    css=div[class='side banner-left bg-white container']
${slideBackgroundColor}     rgba(255, 255, 255, 1)

*** Test Cases ***

Scenario: Customer show Top Banner slide when no button is defined
    [Documentation]
    [Tags]    Scenario_DBP-1058    UserStory_DBP-834
#    Given the Site Manager has not set a text for button on a slide
    When the Customer displays this 3rd slide
    Then the button is not displayed

Scenario: Customer displays the Hero Banner Component with white background color
    [Documentation]
    [Tags]    Scenario_DBP-1148    UserStory_DBP-834
#    Given the Site Manager has set White as the color for the background
    When the Customer displays the slide
    Then the background is displayed in White


*** Keywords ***

the Customer displays this 3rd slide
    Go To  ${PersonalPageLocation1}
    Mouse Over    ${slide-3-Navigation}
    Run Keyword And Continue On Failure    Click Element    ${slide-3-Navigation}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${slide-3-Block}

the button is not displayed
    element should not be visible     ${slide-3-Button}

the background is displayed in White
    ${elem}    Get Webelement    ${slide1-Area}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    Run Keyword And Continue On Failure    should be equal    ${bgColor}    ${slideBackgroundColor}
    Capture Element Screenshot    ${slide-1-Navigation}