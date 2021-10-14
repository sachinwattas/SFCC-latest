*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-2120/NoQuoteEligibility.Robot and update
#Library  SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot
Resource    ../../../Libraries/PageObjects/DBP-2120/NoQuoteEligibility.Robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***


*** Test Cases ***
No Quote Eligibility - Existing Quote pop-up displays - Customer
    [Documentation]  the Customer has submitted the Quote Form
    [Tags]  Scenario_DBP-2178  UserStory_DBP-2120
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    When the Customer selects the 'SUBMIT' button
    Then No Quote result modal is displayed
   # And background around modal changes to #000000 with opacity applied
     And Title: Loan Quote Result
     And Subtitle: Unfortunately, You do not qualify for this product!
     And Icon Image is displayed
     And the Close button is displayed


No Quote Eligibility - Existing Quote pop-up - Close (x) modal - Customer
    [Documentation]  Guided Selling - No Quote Eligibility modal
    [Tags]  Scenario_DBP-2179  UserStory_DBP-2120
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    When the Customer selects the 'SUBMIT' button
    Then No Quote result modal is displayed
    When the Customer hit the x sign on top-right of the modal
    Then No Quote result modal is closed
   # And background opacity removed

Existing Quote pop-up - 'CLOSE' button - Customer
    [Documentation]   Customer click the 'CLOSE' button
    [Tags]  Scenario_DBP-2180 UserStory_DBP-2120
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    When the Customer selects the 'SUBMIT' button
    Then No Quote result modal is displayed
   When the Customer hit the 'CLOSE' button
    Then No Quote result modal is closed

No Quote Eligibility - Existing Quote pop-up -Tapping on an area surrounding the modal closes the modal - Customer
    [Documentation]    Customer tapping on an area surrounding the modal
    [Tags]  Scenario_DBP-2181 UserStory_DBP-2120
    Given the Customer has opened the form
    And has filled in all mandatory fields
    And the Customer enters IdNumber into the field    ${IDNumberValid}
    When the Customer selects the 'SUBMIT' button
    Then No Quote result modal is displayed
    When the Customer is tapping on an area surrounding the modal
    Then No Quote result modal is closed
