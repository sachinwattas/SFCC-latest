*** Settings ***
Documentation     Feature: Footer
...               Scenario: Customer displays "Financial Statement"
...             For any object, variable, argument changes please goto file ../../Libraries/PageObjects/DBP-237-Footer/Footer.robot and update

Resource    Libraries/PageObjects/CommonRepo.robot
Resource    Libraries/PageObjects/DBP-237-Footer/Footer.robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***

*** Test Cases ***
Customer Views Financial Statement
    [Documentation]  Customer Views "Financial Statement"
    [Tags]  Scenario_DBP-580  UserStory_DBP-237
    When the Customer displays the "Financial Statement" part
    Then the fix text is displayed

*** Keywords ***

