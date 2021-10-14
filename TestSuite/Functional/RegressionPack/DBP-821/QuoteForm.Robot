*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-821/QuoteForm.Robot and update
#Library  SeleniumLibrary
Resource   ../../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Test Setup  the Customer has opened the Quote page
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***


*** Test Cases ***
Get Quote Form Form Display Customer
    [Documentation]  Customer displays the Quote form
    [Tags]  Scenario_DBP-1668   UserStory_DBP-821
    Given the Customer opens the Form by selecting "Do I qualify?" on Guided Selling Listing Page
    Then Verify the Quote form fields are displayed as text fields
    And Verify the Quote form labels are displayed as expected
    And A checkbox with confirmation text is displayed
    And The info with a lock symbol and the text is displayed
    And The SUBMIT button is displayed

Get Quote Form - Submit Form with text as ID Number - Customer
    [Documentation]  Customer submits the form with invalid ID Number
    [Tags]  Scenario_DBP-1671  UserStory_DBP-821
#    Given the Customer has opened the form
    Given the Customer opens the Form by selecting "Do I qualify?" on Guided Selling Listing Page
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field     ${IDNumberInvalid}
    And deselects the field
    Then a 'South African ID number is invalid' is displayed beneath the field
    And the SUBMIT button is disabled

Get Quote Form - Customer displays tooltips on mouse hover
    [Documentation]  Get Quote Form - Display Tooltips
    [Tags]  Scenario_DBP-1673  UserStory_DBP-821
#    Given the Customer has opened the form
    Given the Customer opens the Form by selecting "Do I qualify?" on Guided Selling Listing Page
    And the Customer hovers the tip icon at the GROSS MONTHLY INCOME
    Then GROSS MONTHLY INCOME tool tip descirption is appeared
    And hovers the tip icon at the TOTAL MONTHLY EXPENSES
    And TOTAL MONTHLY EXPENSES tool tip descirption is appeared

Get Quote Form- Customer selects the Cancel button
    [Documentation]  Get Quote Form - Select Cancel button
    [Tags]  Scenario_DBP-1675  UserStory_DBP-821
#    Given the Customer has opened the form
    Given the Customer opens the Form by selecting "Do I qualify?" on Guided Selling Listing Page
    When the Customer selects the CANCEL button
    Then the previous page is displayed


Get Quote Form-Customer submits the form with valid input
    [Documentation]  Get Quote Form - Submit Form successfully
    [Tags]  Scenario_DBP-1674  UserStory_DBP-821
#    Given the Customer has opened the form
    When the Customer opens the Form by selecting "Do I qualify?" on Guided Selling Listing Page
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    When the Customer selects the 'SUBMIT' button
    Then the Get Quote Results Page is displayed

Get Quote Form- Customer submits the form without mandatory input
    [Documentation]  Get Quote Form - Submit Form successfully
    [Tags]  Scenario_DBP-1669   UserStory_DBP-821
#    Given the Customer has opened the form
    Given the Customer opens the Form by selecting "Do I qualify?" on Guided Selling Listing Page
    When has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    And the Customer remove value from all mandatory fields
    And clicks another field
    Then a 'This field is required' info is displayed beneath all mandatory field
    And the SUBMIT button is disabled



