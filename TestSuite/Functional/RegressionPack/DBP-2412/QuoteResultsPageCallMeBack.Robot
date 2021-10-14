*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-821/QuoteForm.Robot and update
#Library  SeleniumLibrary
Resource   ../../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot
Resource    ../../../../Libraries/PageObjects/DBP-2412/QuoteResultsPageCallMeBack.Robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
 Get Quote Results Page Call Me Back
    [Documentation]  Customer displays the Call Me Back button on Get Quote Result page
    [Tags]  Scenario_DBP-2527  UserStory_DBP-2412
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    When the Customer selects the 'SUBMIT' button
    Then the Get Quote Results Page is displayed
    And selects the choice of insurance
    Then the Call Me Back button is displayed beneath the Insurance option
    And for Term Loan the button is displayed at all times

Get Quote Results Page Call me back display - Customer
    [Documentation]  Customer displays the Call Me Back modal
    [Tags]  Scenario_DBP-2528 UserStory_DBP-2412
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    When the Customer selects the 'SUBMIT' button
    Then the Get Quote Results Page is displayed
    And selects the choice of insurance
    When the Customer selects the Call Me Back button
    Then the Call Me Back modal is displayed with the following:
    And Title: "We'll call you back" is displayed
    And Text: "You're one step closer to accessing your selected product. We just need your details and we'll call you back." is displayed
    And Mobile number is displayed
    And When can you call? with radio buttons "Anytime" and "At a specific time" is displayed
    And Submit button is displayed


Get Quote Results Page Call me back modal close - Customer
    [Documentation]   Get Quote Results Page Call Me Back
    [Tags]  Scenario_DBP-2529 UserStory_DBP-2412
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    AND the Customer selects the 'SUBMIT' button
    And the Get Quote Results Page is displayed
    And selects the choice of insurance
    And the Customer selects the Call Me Back button
    And the Customer displays the Call Me Back modal
    When the Customer selects the X button
    Then the Call Me Back modal is closed

Get Quote Results Page Call me back modal number too short - Customer
    [Documentation]    Customer enters a too short mobile number on the Call Me Back modal
    [Tags]  Scenario_DBP-2531 UserStory_DBP-2412
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    AND the Customer selects the 'SUBMIT' button
    And the Get Quote Results Page is displayed
    And selects the choice of insurance
    And the Customer selects the Call Me Back button
    When the Customer enters a mobile number  34
    And leaves the field
    Then the message "Please enter a 10-digit cellphone number." is displayed

Get Quote Results Page Call me back modal text as mobile number - Customer
    [Documentation]   Customer enters text as mobile number on the Call Me Back modal
    [Tags]  Scenario_DBP-2532 UserStory_DBP-2412
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    AND the Customer selects the 'SUBMIT' button
    And the Get Quote Results Page is displayed
    And selects the choice of insurance
    And the Customer selects the Call Me Back button
    When the Customer enters a mobile number    ABCNJSKWKW
    And leaves the field
    Then the message "A valid Phone Number does not contain letters." is displayed

Get Quote Results Page Call me back modal number empty - Customer
    [Documentation]   Customer enters no mobile number on the Call Me Back modal
    [Tags]  Scenario_DBP-2530  UserStory_DBP-2412
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    AND the Customer selects the 'SUBMIT' button
    And the Get Quote Results Page is displayed
    And selects the choice of insurance
    And the Customer selects the Call Me Back button
    When the Customer enters a mobile number    NONE
    And leaves the field
    Then the message "Please enter your cellphone number. The cellphone number field cannot be left blank." is displayed

Get Quote Results Page Call me back modal select time - Customer
    [Documentation]   Customer selects a date on the Call Me Back modal
    [Tags]  Scenario_DBP-2534  UserStory_DBP-2412
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    AND the Customer selects the 'SUBMIT' button
    And the Get Quote Results Page is displayed
    And selects the choice of insurance
    And the Customer selects the Call Me Back button
    When the Customer opens the time picklist
    Then the time options are displayed

Get Quote Results Page Call me back modal select date - Customer
    [Documentation]   Customer selects a date on the Call Me Back modal
    [Tags]  Scenario_DBP-2533  UserStory_DBP-2412
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    AND the Customer selects the 'SUBMIT' button
    And the Get Quote Results Page is displayed
    And selects the choice of insurance
    And the Customer selects the Call Me Back button
    When the Customer opens the time picklist
    AND the Customer opens the date picker
    Then only a future weekday within the next 30 days can be selected  30

Get Quote Results Page Call me back modal success display with specific time - Customer
    [Documentation]   Customer displays success message after submitting Call Me Back form
    [Tags]  Scenario_DBP-2536  UserStory_DBP-2412
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    AND the Customer selects the 'SUBMIT' button
    And the Get Quote Results Page is displayed
    And selects the choice of insurance
    And the Customer selects the Call Me Back button
    When the Customer opens the time picklist
    AND the Customer select the form with specific time    12:00 - 13:00
    AND the Customer opens the date picker
    Then only a future weekday within the next 30 days can be selected  31
#    Then Title : "Your details were successfully submitted"
#    And Text: "A consultant will be in touch on <selected date> at <selected time> to assist with your application. Please make sure you are available at this time."