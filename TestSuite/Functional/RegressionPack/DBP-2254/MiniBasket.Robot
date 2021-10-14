*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-2254/MiniBasket.Robot and update
#Library  SeleniumLibrary
Resource   ../../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot
Resource    ../../../../Libraries/PageObjects/DBP-2412/QuoteResultsPageCallMeBack.Robot
Resource    ../../../../Libraries/PageObjects/DBP-2254/MiniBasket.Robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
Minibasket displayed when filled - Customer
    [Documentation]  Minibasket icon displayed when filled
    [Tags]  Scenario_DBP-2523 UserStory_DBP-2254
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    When the Customer selects the 'SUBMIT' button
    Then the Get Quote Results Page is displayed
    And selects the choice of insurance
    And the Customer selects the 'continue' button
    And one product was added to the basket
    When the customer displays the header
    Then the Minibasket icon is displayed

Minibasket hidden when empty - Customer
    [Documentation]  No Minibasket icon displayed when empty
    [Tags]  Scenario_DBP-2522 UserStory_DBP-2254
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    When the Customer selects the 'SUBMIT' button
    Then the Get Quote Results Page is displayed
    And selects the choice of insurance
    And the Customer selects the 'continue' button
    When the customer displays the header
    Then the Minibasket icon is not displayed