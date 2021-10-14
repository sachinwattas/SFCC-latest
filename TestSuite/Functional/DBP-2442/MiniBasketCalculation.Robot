
*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-2442/MiniBasketCalculation.Robot and update
#Library  SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot
Resource    ../../../Libraries/PageObjects/DBP-2412/QuoteResultsPageCallMeBack.Robot
Resource    ../../../Libraries/PageObjects/DBP-2254/MiniBasket.Robot
Resource    ../../../Libraries/PageObjects/DBP-2442/MiniBasketCalculation.Robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
Customer displays Basket without Calculations
    [Documentation]  the Customer has added a Product with Insurance to the Basket
    [Tags]  Scenario_DBP-2595   UserStory_DBP-2442
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    When the Customer selects the 'SUBMIT' button
    And the Get Quote Results Page is displayed
    And selects the choice of insurance
    And the Customer selects the 'continue' button
    And one product was added to the basket
    Then Product and Insurance is displayed at the Basket

Customer displays Mini-Basket without Calculations
    [Documentation]  Customer displays Mini-Basket without Calculations
    [Tags]  Scenario_DBP-2596   UserStory_DBP-2442
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    When the Customer selects the 'SUBMIT' button
    Then the Get Quote Results Page is displayed
    And selects the choice of insurance
    And the Customer selects the 'continue' button
    And one product was added to the basket
    When Customer displays the Mini-Basket
    Then Product and Insurance is displayed