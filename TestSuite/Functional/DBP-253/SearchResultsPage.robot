*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-254/SearchResultsPage.robotand update
#Library  SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-254/SearchResultsPage.robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
Search bar - Customers
    [Documentation]  Customers searches
    [Tags]  Scenario_DBP-838 UserStory_DBP-253
    When the Customer click the icon search
    Then Search bar Contains placeholder  What are you searching for?
    And On input placeholder disappears
    And On submission returns sends to "Results Page"

No Search results displays - Customer
    [Documentation]  No Search result displays
    [Tags]  Scenario_DBP-1670 UserStory_DBP-253
    When the Customer click the icon search
    And the Customer put in the 3rd character     uzt
    Then No Results panel is displayed

