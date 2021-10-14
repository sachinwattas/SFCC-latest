*** Settings ***
Documentation  Feature: Product Tile
...            Scenario: Customer verifies the components and its properties in Product Tile
...            and redirecting URL when the button clicked
Resource    ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-909/GuidedSelling.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

#*** Variables ***

*** Test Cases ***
QA - Guided Selling Listing Page - Check Eligibility Component Display - Customer
    [Documentation]    Customer displays the component
    [Tags]    Scenarios_DBP-1507    UserStory_DBP-909
    Given the Site Manager has entered text for the button
    When the Customer displays the component
    Then the image is displayed
    And the title is displayed
    And the text is displayed
    And the button is displayed

QA - Guided Selling Listing Page - Check Eligibility Component title, text, button character limit - Customer
    [Documentation]    Customer displays the component
    [Tags]    Scenarios_DBP-1508    UserStory_DBP-909
    Given the Site Manager has entered more than 25 characters for the title
    And entered more than 90 characters for the text
    And entered more than 25 characters for the button
    When the Customer displays the component
    Then the title is displayed with the first 25 entered characters
    And the text is displayed with the first 90 entered characters
    And the button is displayed with the first 25 entered characters

QA - Guided Selling Listing Page - Check Eligibility Component Button redirect - Customer
    [Documentation]    Customer selects button
    [Tags]    Scenarios_DBP-1510    UserStory_DBP-909
    Given the Site Manager has set the Button URL
    When the Customer selects button
    Then the page behind the URL is opened in the same browser tab

QA - Guided Selling Listing Page - Check Eligibility Component Button hover - Customer
    [Documentation]    Customer hovers over button
    [Tags]    Scenarios_DBP-1511    UserStory_DBP-909
    Given the Site Manager has set the Button URL
    When the Customer hovers over (tab and hold on Mobile) the button
    Then the button is displayed in hover mode (darker background)

QA - Guided Selling Listing Page - Check Eligibility Component Display without Button - Customer
    [Documentation]    Customer displays the component without button
    [Tags]    Scenarios_DBP-1512    UserStory_DBP-909
    Given the Site Manager has entered no text for the button
    When the Customer displays the component
    Then the image is displayed
    And the title is displayed
    And the text is displayed
    And the button is not displayed