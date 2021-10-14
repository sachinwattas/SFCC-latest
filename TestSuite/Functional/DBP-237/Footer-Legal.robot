*** Settings ***
Documentation     Feature: Footer
...               Scenario: Customer displays "Legal related information"
...             For any object, variable, argument changes please goto file ../../Libraries/PageObjects/DBP-237-Footer/Footer.robot and update

Library  SeleniumLibrary
Resource  ../../../Libraries/PageObjects/CommonRepo.robot
Resource   ../../../Libraries/PageObjects/DBP-237-Footer/Footer.robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***

*** Test Cases ***
Customer Views Legal related Information on footer
    [Documentation]  Customer Views "SBSA Legal information"
    [Tags]  Scenario_DBP-578  UserStory_DBP-237
    When the Customer displays the "Legal" part
    Then the links to the legal related pages within SFCC are displayed

*** Keywords ***

