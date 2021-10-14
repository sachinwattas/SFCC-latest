*** Settings ***

Documentation    Feature: Supporting Content and Links Component
Library    SeleniumLibrary
Resource    ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-239/SupportingContentLinksComponent.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown  CommonRepo.Ending Session by Closing the Desktop Browser


*** Variables ***


*** Test Cases ***

Customer displays component and content blocks
    [Documentation]    Scenario: Customer displays component and content blocks
    [Tags]    Scenario_DBP-674    DBP-239
#    Given the Site Manager has set the Title for the component
#    And Titles, Text, URLs for all content blocks
    When the Customer displays the content blocks
    Then the Title on component, the title, texts and URLs on the content blocks are displayed

Customer opens link to internal page
    [Documentation]    Scenario: Customer opens link to internal page
    [Tags]    Scenario_DBP-675    DBP-239
#    Given the Site Manager has set URLs for an internal (SFCC) page  in a content block
    When the Customer selects the link
    Then the page behind the link is opened in the same browser tab

Customer opens link to external page
    [Documentation]    Scenario: Customer opens link to external page
    [Tags]    Scenario_DBP-676    DBP-239
#    Given the Site Manager has set URLs for an external (non-SFCC) page in a content block
    When the Customer selects the link
    Then the page behind the link is opened in a new browser tab


*** Keywords ***
