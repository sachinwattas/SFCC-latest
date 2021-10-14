*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-2212/ProceedToAo.Robot and update
#Library  SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot
Resource    ../../../Libraries/PageObjects/DBP-2412/QuoteResultsPageCallMeBack.Robot
Resource    ../../../Libraries/PageObjects/DBP-2254/MiniBasket.Robot
Resource    ../../../Libraries/PageObjects/DBP-2212/ProceedToAo.Robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
AO Proceed to Application
    [Documentation]  AO Proceed to Application
    [Tags]  Scenario_DBP-2212 UserStory_DBP-2212
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    When the Customer selects the 'SUBMIT' button
    Then the Get Quote Results Page is displayed
    And selects the choice of insurance
    And the Customer selects the 'continue' button
    And one product was added to the basket
    And cutomer procced to application
    Then Login page is displayed
    And URL redirect to sign in page


