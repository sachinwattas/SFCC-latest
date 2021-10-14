*** Settings ***
Documentation     Feature: Footer
...               Scenario: Customer views SBSA Mobile App information"
...             For any object, variable, argument changes please goto file ../../Libraries/PageObjects/DBP-237-Footer/Footer.robot and update

Library  SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource   ../../../Libraries/PageObjects/DBP-237-Footer/Footer.robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***



*** Test Cases ***
Customer Views SBSA App information
    [Documentation]  Customer Views SBSA Mobile Apps information
    [Tags]  Scenario_DBP-578  UserStory_DBP-237
    When the Customer displays the "Apps" part
    Then the link to the Standard Bank App on Google Play Store ("https://play.google.com/store/apps/details?id=com.sbg.mobile.phone") is displayed
    And the link to the Standard Bank App on Apple App Store ("https://apps.apple.com/za/app/standard-bank-stanbic-bank/id528239110") is displayed


*** Keywords ***

