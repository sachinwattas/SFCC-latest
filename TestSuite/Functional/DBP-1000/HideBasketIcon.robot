*** Settings ***
Documentation    Feature: Hide Basket

Resource    ../../../Libraries/PageObjects/DBP-1000/HideBasket.robot

*** Variables ***


*** Test Cases ***


Scenario-1: Customer opens Commerce when Basket icon is activated
    [Documentation]     QA - Show Basket Icon - Customer
    [Tags]    Scenario_DBP-1056    UserStory_DBP-1000

    Given the Site Manager has turned on the Basket
    When the Customer opens Commerce
    Then the basket is displayed in the Header


Scenario-2: Customer opens Commerce when Basket icon is deactivated
    [Documentation]    QA - Hide Basket Icon - Customer  &    QA - Hide Basket Icon - Site Manager
    [Tags]    Scenario_DBP-1055    Scenario_DBP-1150    UserStory_DBP-1000

    Given the Site Manager has turned off the Basket
    When the Customer opens Commerce
    Then the basket is not displayed in the Header

*** Keywords ***



