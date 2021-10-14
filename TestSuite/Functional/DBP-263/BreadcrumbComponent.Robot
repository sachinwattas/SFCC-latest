*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-263/BreadcrumbComponent.Robot and update
#Library  SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot
Resource    ../../../Libraries/PageObjects/DBP-263/BreadcrumbComponent.Robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
Customer displays Breadcrumb Component
    [Documentation]  Customer displays Breadcrumb Component
    [Tags]  Scenario_DBP-1074 UserStory_DBP-263
    Given the Customer has open guided selling
    And the links are set up as clickable
    And the Customer has navigated to a page on the Tertiary Navigation level
    When the Customer displays the Breadcrumb Component
    Then the first node is displayed as 'Home' with link to Primary Navigation level
    And the second node is displayed with its label with link to Secondary Navigation level
    And the third node is displayed with its label to Tertiary Navigation level

Customer selects last node of Breadcrumb Component
    [Documentation]  Customer selects last node of Breadcrumb Component
    [Tags]  Scenario_DBP-1075 UserStory_DBP-263
    Given the Customer has open guided selling
    And the links are set up as clickable
    And the Customer has navigated to a page on the Tertiary Navigation level
    And the first node is displayed as 'Home' with link to Primary Navigation level
    And the second node is displayed with its label with link to Secondary Navigation level
    And the third node is displayed with its label to Tertiary Navigation level
    When the Customer clicks the last node of the Breadcrumb Component
    Then the page behind the link is opened

Customer selects first node of Breadcrumb Component
    [Documentation]   Customer selects first node of Breadcrumb Component
    [Tags]  Scenario_DBP-1077 UserStory_DBP-263
    Given the Customer has open guided selling
    And the links are set up as clickable
    And the third node is displayed with its label to Tertiary Navigation level
    When the Customer clicks the first node of the Breadcrumb Component
    Then the page behind the link is opened for first node
    And no breadcrumb navigation is displayed

Customer selects unclickable nodes of Breadcrumb Component
    [Documentation]   Customer selects unclickable nodes of Breadcrumb Component
    [Tags]  Scenario_DBP-1078 UserStory_DBP-263
    Given the Customer has open guided selling
    And the links are set up as clickable
    And the third node is displayed with its label to Tertiary Navigation level
    When the Customer clicks a node of the Breadcrumb Component
    Then the node is displayed without a link