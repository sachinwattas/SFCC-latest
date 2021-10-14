*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-287/StructuredDataMarkup.robot and update
#Library  SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-287/StructuredDataMarkup.robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
Displays attribute called Homepage's Structured Mark-up
    [Documentation]  Structured Data Markup - Homepage is implemented
    [Tags]  Scenario_DBP-2361 UserStory_DBP-287
    Then is stored in a Site Preference attribute called Homepage's Structured Mark-up

