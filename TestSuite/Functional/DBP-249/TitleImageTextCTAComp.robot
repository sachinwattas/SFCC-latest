*** Settings ***
Documentation  Feature: Compliments and Complaints Form
...            Scenario: Customer verifies the components and its properties in Compliments and Complaints Form
...            and redirecting URL when the button clicked
Resource    ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects//DBP-249/TitleImageTextCTA.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

#*** Variables ***

*** Test Cases ***
QA - Button redirect - Customer - MyMo
    [Documentation]    Scenario: Customer selects button on the banner
    [Tags]    Scenario_DBP-731    UserStory-DBP-249    Config_DBP-Adhoc1
    Given the Site Manager has set the Button URL on the banner component - MyMo
    When the Customer selects button on the slide - MyMo
    Then the page behind the URL is opened in the same browser tab - MyMo

QA - Button redirect - Customer - UCount
    [Documentation]    Scenario: Customer selects button on the banner
    [Tags]    Scenario_DBP-731    UserStory-DBP-249    Config_DBP-Adhoc2
    Given the Site Manager has set the Button URL on the banner component - UCount
    When the Customer selects button on the slide - UCount
    Then the page behind the URL is opened in the same browser tab - UCount

QA - Button hover - Customer - MyMo
    [Documentation]    Scenario: Customer selects button on the banner
    [Tags]    Scenario_DBP-732    UserStory-DBP-249    Config_DBP-Adhoc3
    Given the Site Manager has set the Button URL on the banner component - MyMo
    When the Customer hovers over (tab and hold on Mobile) the button on the slide - MyMo
    Then the button is displayed in hover mode - MyMo

QA - Button hover - Customer - UCount
    [Documentation]    Scenario: Customer selects button on the banner
    [Tags]    Scenario_DBP-732    UserStory-DBP-249    Config_DBP-Adhoc4
    Given the Site Manager has set the Button URL on the banner component - UCount
    When the Customer hovers over (tab and hold on Mobile) the button on the slide - UCount
    Then the button is displayed in hover mode - UCount