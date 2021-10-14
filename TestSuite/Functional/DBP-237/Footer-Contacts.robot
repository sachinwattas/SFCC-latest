*** Settings ***

Documentation     Feature: Footer
...               Scenario: Customer displays/Opens links/Hovers under "Get To Know US"
...             For any object, variable, argument changes please goto file ../../Libraries/PageObjects/DBP-237-Footer/Footer.robot and update

#Library  SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource   ../../../Libraries/PageObjects/DBP-237-Footer/Footer.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

#Test Template   get given locator text

*** Variables ***

*** Test Cases ***

Customer views fraudline contacts under footer
    [Documentation]  Footer - FraudLine contacts validation
    [Tags]  Scenario_DBP-Adhoc1  UserStory_DBP-237
    When the Customer displays Fraudline info under footer section
    Then Views the text content on Fraudline
    And Click on south africa fraudline contact
    And Click on international fraudline contact


Customer views Get in touch contacts under footer
    [Documentation]  Footer - Get in touch contacts
    [Tags]  Scenario_DBP-570  Scenario_DBP-572  Scenario_DBP-573  UserStory_DBP-237
    When the Customer displays GetInTouch info under footer section
    Then Views the text content on GetInTouch
    And Click on south africa GetInTouch contact
    And Click on international GetInTouch contact

Customer views Lost or stolen cards contacts under footer
    [Documentation]  Footer - Lost or Stolen cards contacts
    [Tags]  Scenario_DBP-Adhoc2  UserStory_DBP-237
    When the Customer displays LostOrStolenCards info under footer section
    Then Views the text content on LostOrStolenCards
    And Click on south africa LostOrStolenCards contact
    And Click on international LostOrStolenCards contact

Customer views contacts us under footer
    [Documentation]  Footer - contact us
    [Tags]  Scenario_DBP-Ahoc3  UserStory_DBP-237
    When the Customer displays ContactUs info under footer section
    Then Views the text content on ContactUs
    And Click on Contact us link

Customer views Give us a call under footer
    [Documentation]  Footer - see all contact details
    [Tags]  Scenario_DBP-Ahoc4  UserStory_DBP-237
    When the Customer displays GiveUsACall under footer section
    Then View the text content of GiveUsACall
    And Click on GiveUsACall

*** Keywords ***
#get given locator text
#    [Arguments]    ${locator}    ${attribute}
#    HandleConsentYes
#    ${getValue}=    Get Element Attribute    ${locator}   ${attribute}
#    log    ${getValue}
#    log    ${compareValue}
#    should be true    """${getValue}""".strip() == """${compareValue}""".strip()
