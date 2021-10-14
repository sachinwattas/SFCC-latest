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
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
QA - Minibasket Open - Customer
    [Documentation]  the Customer has added on one product with insurance in the cart
    [Tags]  Scenario_DBP-1738   UserStory_DBP-268
    Given the application displays an quote for a customer
    And the Customer selects the 'continue' button
    And one product was added to the basket
    When Customer displays the Mini-Basket
    And the back of the icon background changes to White
    And the background of the page is defocused

Minibasket Display with Product - Customer
    [Documentation]  the Customer has added one product with insurance to the cart
    [Tags]  Scenario_DBP-1739   UserStory_DBP-268
    Given the application displays an quote for a customer
    And the Customer selects the 'continue' button
    And one product was added to the basket
    And Customer displays the Mini-Basket
    And Product and Insurance is displayed
    And the option for each product to remove it from the basket is displayed
    And a close button is displayed
    And a checkout button is displayed

Customer displays Minibasket
    [Documentation]  Customer displays Minibasket
    [Tags]  Scenario_DBP-1740   UserStory_DBP-269
    Given the application displays an quote for a customer
    And the Customer selects the 'continue' button
    And one product was added to the basket
    And Customer displays the Mini-Basket
    When the Customer selects the X icon
    Then the basket modal is not displayed
    And the back of the icon background changes back to Blue


Customer removes product without insurance from Minibasket and Undo Removal of Product
    [Documentation]  Customer removes product without insurance from Minibasket and Customer undoes removal of product
    [Tags]  Scenario_DBP-1741   Scenario_BP-1743    UserStory_DBP-268
    Given the application displays an quote for a customer
    And selects the choice of insurance as No
    And the Customer selects the 'Add To Cart' button
    And Customer displays the Mini-Basket
    When the Customer selects the remove button on the product
    Then the product is removed from the basket
    And an "Undo" button is displayed
    When the Customer selects the undo button
    Then the product is restored in the basket

QA - Minibasket Remove Product with Insurance - Customer and Minibasket Undo Removal of Product and Insurance
    [Documentation]   Minibasket Remove Product with Insurance - Customer and Minibasket Undo Removal of Product and Insurance
    [Tags]  Scenario_DBP-1742 Scenario_DBP-1744  UserStory_DBP-268
    Given the application displays an quote for a customer
    And the Customer selects the 'continue' button
    And one product was added to the basket
    And Customer displays the Mini-Basket
    When the Customer selects the remove button on the product
    Then the product is removed from the basket
    And the related Insurance is removed
    And an "Undo" button is displayed
    When the Customer selects the undo button
    Then the product with its related insurance is restored in the basket

QA - Minibasket Display empty - Customer and Minibasket Back to Homepage button
    [Documentation]  Minibasket Display empty - Customer and Minibasket Back to Homepage button
    [Tags]  Scenario_DBP-1745   Scenario_DBP-1746   UserStory_DBP-268
     Given the application displays an quote for a customer
    And the Customer selects the 'continue' button
    And one product was added to the basket
    And Customer displays the Mini-Basket
    When the Customer selects the remove button on the product
    When the Customer displays the Minibasket
    Then the basket modal is displayed
    And the "Your cart is empty" message is displayed
    And a "Back to Homepage" button is displayed
    When the Customer selects the "Back to Homepage" button
    Then the Homepage is opened

QA - Minibasket Checkout button - Customer
    [Documentation]  QA - Minibasket Checkout button - Customer
    [Tags]   Scenario_DBP-1747   UserStory_DBP-268
    Given the application displays an quote for a customer
    And the Customer selects the 'continue' button
    And one product was added to the basket
    And Customer displays the Mini-Basket
    And Product and Insurance is displayed
    When the Customer selects the "Checkout" button
    Then the Check out process starts

*** Keywords ***
the application displays an quote for a customer
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    When the Customer selects the 'SUBMIT' button
    Then the Get Quote Results Page is displayed
    And selects the choice of insurance