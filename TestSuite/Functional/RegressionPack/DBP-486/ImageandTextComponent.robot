*** Settings ***
Documentation  Feature: No Search Results Page
...            Scenario: Customer verifies the components and its properties in No Search Results Page
Resource    ../../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../../Libraries/PageObjects/DBP-486/ImageandText.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***


*** Test Cases ***
QA - Image component added in Site Manager should be displayed - Customer
    [Documentation]    Image component added in Site Manager should be displayed - Customer
    [Tags]    Scenario_Adhoc01    UserStory_DBP-486
    Given the image component should be added in site manager
    When the Customer page is navigated    ${imgelement}
    Then the added image should be displayed

QA - Text component added in Site Manager should be displayed - Customer
    [Documentation]    Text component added in Site Manager should be displayed - Customer
    [Tags]    Scenario_Adhoc02   UserStory_DBP-486
    Given the text component should be added in site manager
    When the Customer page is navigated     ${Textcompt}
    Then the added text should be displayed