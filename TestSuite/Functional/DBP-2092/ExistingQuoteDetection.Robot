*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-2442/MiniBasketCalculation.Robot and update
#Library  SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot
Resource   ../../../Libraries/PageObjects/DBP-2272/ExistingQuoteDetection.Robot
Resource    ../../../Libraries/PageObjects/DBP-3085/HypercareGetQuoteForm.Robot
Resource        ../../../Libraries/PageObjects/DBP-2092/ExistingQuoteDetection.Robot

Suite Setup    CommonRepo.Starting Session with Desktop Browser
Suite Teardown    CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
QA - Existing Quote pop-up displays - Customer
    [Documentation]  Customer displays Existing Quote detection page
    [Tags]  Scenario_DBP-2213     UserStory_DBP-2092
    When the Customer capture the details in Quote from
    And the Customer selects the 'SUBMIT' button
    Then Existing Quote detection modal is displayed
    And background around modal changes to #000000 with opacity applied

QA - Existing Quote detection - Applicant Name displays - Customer
    [Documentation]  Applicant Name (Surname) displays on the modal
    [Tags]  Scenario_DBP-2216   UserStory_DBP-2092
    Then Existing Quote detection modal is displayed
    Then following text displays: Hi <Name of the applicant>       ${QuoteNameTxt}

QA - Existing Quote detection - Close the modal X button - Customer
    [Documentation]  Customer close the modal
    [Tags]  Scenario_DBP-2214    UserStory_DBP-2092
    When the Customer hit the x sign on top-right of the modal
    Then the modal is closed
    And background opacity removed

QA - Existing Quote detection - Close the modal surrounding area - Customer
    [Documentation]  Customer close the modal
    [Tags]  Scenario_DBP-2524   UserStory_DBP-2092
    When the Customer click the 'SUBMIT' button
    And the Customer hit the area surrounding of the modal
    Then the modal is closed
    And background opacity removed

QA - Existing Quote detection - Sign Up button - Customer
    [Documentation]  Customer click the sign up button
    [Tags]  Scenario_DBP-2215   UserStory_DBP-2092
    When has filled in income fields
    And the Customer click the 'SUBMIT' button
    And the Customer hit the 'Sign In 'button
    Then redirect to sign up page

*** Keywords ***
the Customer capture the details in Quote from
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${ExistingApplicationID}




