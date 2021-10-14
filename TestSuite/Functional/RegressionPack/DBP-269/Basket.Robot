*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-2442/MiniBasketCalculation.Robot and update
#Library  SeleniumLibrary
Resource   ../../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot
Resource    ../../../../Libraries/PageObjects/DBP-2412/QuoteResultsPageCallMeBack.Robot
Resource    ../../../../Libraries/PageObjects/DBP-2254/MiniBasket.Robot
Resource    ../../../../Libraries/PageObjects/DBP-2442/MiniBasketCalculation.Robot
Resource    ../../../../Libraries/PageObjects/DBP-269/Basket.Robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
QA - Basket Display without Insurance - Customer
    [Documentation]  Customer displays Basket
    [Tags]  Scenario_DBP-1960   UserStory_DBP-269
    Given the application displays an quote for a customer
    And selects the choice of insurance as No
    And the Customer selects the 'Add To Cart' button
    When the Customer opens the Basket
    Then the Product Panel is displayed with the Product Name, Product Description
    And the Order Summary is displayed with totals and the Proceed button       1 ITEM(S)

QA - Basket Display with Insurance - Customer
    [Documentation]  the Customer has added one product with insurance to the cart
    [Tags]  Scenario_DBP-1961   Scenario_DBP-1964  UserStory_DBP-269
    Given the application displays an quote for a customer
    And the Customer selects the 'continue' button
    And one product was added to the basket
    When the Customer opens the Basket
    Then the Product Panel is displayed with the Product Name, Product Description
    And the Product Panel for the Insurance is displayed with the Product Name, Product Description
    And the Order Summary is displayed with totals and the Proceed button       2 ITEM(S)
    When the Customer selects the 'X' button on the Insurance
    Then the Insurance is removed from Basket

QA - Basket Display with Insurance - Customer
    [Documentation]  the Customer has added one product with insurance to the cart
    [Tags]  Scenario_DBP-1965      UserStory_DBP-269
    Given the application displays an quote for a customer
    And the Customer selects the 'continue' button
    And one product was added to the basket
    When the Customer opens the Basket
    Then the Product Panel is displayed with the Product Name, Product Description
    When the Customer selects the 'X' button on the Product
    Then the Product is removed from Basket
    And the Insurance is removed from Basket

QA - Basket Proceed as unauthenticated user - Customer
    [Documentation]  Customer proceeds as unauthenticated user
    [Tags]  Scenario_DBP-1967     UserStory_DBP-269
    Given the application displays an quote for a customer
    And the Customer selects the 'continue' button
    And one product was added to the basket
    When the Customer opens the Basket
    Then the Product Panel is displayed with the Product Name, Product Description
    When the Customer selects the 'Proceed' button
    Then the user is taken to the PING authentication page

*** Keywords ***
the application displays an quote for a customer
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    When the Customer selects the 'SUBMIT' button
    Then the Get Quote Results Page is displayed
    And selects the choice of insurance