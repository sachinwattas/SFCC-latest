*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-2442/MiniBasketCalculation.Robot and update
#Library  SeleniumLibrary
Resource   ../../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot
Resource   ../../../../Libraries/PageObjects/DBP-2272/ExistingQuoteDetection.Robot

Suite Setup    CommonRepo.Starting Session with Desktop Browser
Suite Teardown    CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
QA - Existing Quote pop-up displays
    [Documentation]  The customer already submit at least one application
    [Tags]  Scenario_DBP-2322   UserStory_DBP-2272
    When the Customer SUBMIT the quote form
    And the Customer has opened the form
    And is logged in
    And has filled in income fields
    And the Customer selects the 'SUBMIT' button
    Then Existing Quote detection modal is displayed
    And background around modal changes to #000000 with opacity applied

QA - Existing Quote detection - Close the modal
    [Documentation]  The customer already submit at least one application
    [Tags]  Scenario_DBP-2323   UserStory_DBP-2272
    When the Customer hit the x sign on top-right of the modal
    Then the modal is closed
    And background opacity removed

QA - Existing Quote detection - Applicant Name displays - Logged in Customer
    [Documentation]   Existing Quote detection after login
    [Tags]  Scenario_DBP-2325   UserStory_DBP-2272
    Given is logged in
    And the Customer click the 'SUBMIT' button
    Then Existing Quote detection modal is displayed
    Then following text displays: Hi "Name of the applicant"

QA - Existing Quote detection - Proceed to Application button - Logged in Customer
    [Documentation]  Customer click the sign up button
    [Tags]  Scenario_DBP-2324   UserStory_DBP-2272
     When the Customer hit the 'Proceed to application 'button
     Then the Customer is redirected to to Application page in Community Cloud

*** Keywords ***
the Customer SUBMIT the quote form
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${ExistingApplicationID}
    And the Customer selects the 'SUBMIT' button
    And the Customer hit the 'Sign In 'button
    And the Customer is redirected to to Application page in core

