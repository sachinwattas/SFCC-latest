*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-2442/MiniBasketCalculation.Robot and update
#Library  SeleniumLibrary
Resource   ../../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot
Resource   ../../../../Libraries/PageObjects/DBP-2272/ExistingQuoteDetection.Robot
Resource   ../../../../Libraries/PageObjects/DBP-3085/HypercareGetQuoteForm.Robot

Suite Setup    CommonRepo.Starting Session with Desktop Browser
#Suite Teardown    CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***

QA - Existing Quote detection - Applicant Name displays - Logged in Customer
    [Documentation]   Hypercare: Get Quote Form - Logged in state
    [Tags]  Scenario_DBP-3112       UserStory_DBP-3085
    Given the Customer is logged in
    When the Customer has opened the form
    Then "Is this you? If not Sign out"
    And "Hi <Customer First Name> you're signed into your account"          UAT

QA - Get Quote Form Logged in Logout - Customer
    [Documentation]  Customer displays Get Quote Form when logged in
    [Tags]  Scenario_DBP-3113      UserStory_DBP-3085
     And selects "Sign Out"
    And reloads the page"
     Then it is displayed without the Logged in area

*** Keywords ***
the Customer is logged in
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${ExistingApplicationID}
    And the Customer selects the 'SUBMIT' button
    And the Customer hit the 'Sign In 'button
    And the Customer is redirected to to Application page in core

