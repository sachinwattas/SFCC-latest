*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-1361/RelativeURL.Robot and update
#Library  SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-1361/RelativeURL.Robot

Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
Home Page-Absolute links are not present in URL
    [Documentation]  Absolute links not present in Home page
    [Tags]  Scenario_DBP-3288  UserStory_DBP-1361
    Then Link does not contains absolute URL    www.standardbank.co.za


Quote Page-Absolute links are not present in URL
    [Documentation]  Absolute links not present in Quote page
    [Tags]  Scenario_DBP-3289  UserStory_DBP-1361
    When the Customer has opened the form
    Then Link does not contains absolute URL    www.standardbank.co.za
