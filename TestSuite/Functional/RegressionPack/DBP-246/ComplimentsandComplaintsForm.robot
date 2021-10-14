*** Settings ***
Documentation  Feature: Compliments and Complaints Form
...            Scenario: Customer verifies the components and its properties in Compliments and Complaints Form
...            and redirecting URL when the button clicked
Resource    ../../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../../Libraries/PageObjects/DBP-246/ComplimentsComplaints.robot
Test Setup    CommonRepo.Starting Session with Desktop Browser
Test Teardown     CommonRepo.Ending Session by Closing the Desktop Browser

#*** Variables ***

*** Test Cases ***
QA - Compliments & Complaints Form - Form Display - Customer
    [Documentation]     Customer displays the form
    [Tags]    Scenario_DBP-888    UserStory_DBP-246
    When the Customer opens the Form by selecting the 'Let us know' button in the footer
    Then form is displayed with background color #ffffff
    And the title 'HOW DID WE DO?' is displayed
    And the sub-title 'We're continuously striving to deliver great service' is displayed
    And the following fields are displayed FEEDBACK TYPE,WHAT IS YOUR FEEDBACK RELATED TO?,TITLE,NAME,SURNAME,ID NUMBER,CONTACT NUMBER,ALTERNATIVE CONTACT NUMBER (OPTIONAL *),EMAIL,ARE YOU AN EXISTING STANDARD BANK CUSTOMER?,COMMENTS
    And the info with a lock symbol and the text 'We'll keep your information confidential and will not be shared with any third parties' is displayed
    And the 'SUBMIT' button is displayed

QA - Compliments & Complaints Form - Close Form by selecting 'X' button - Customer
    [Documentation]     Customer closes the form by selecting the 'X' button
    [Tags]    Scenario_DBP-889    UserStory_DBP-246
    Given the Customer opens the Form by selecting the 'Let us know' button in the footer
    When the Customer selects the 'X' in the upper right corner
    Then the form is closed

QA - Compliments & Complaints Form - Close Form by clicking outside of modal - Customer
    [Documentation]    Customer closes the form by clicking outside of the modal
    [Tags]    Scenario_DBP-890    UserStory_DBP-246
    Given the Customer opens the Form by selecting the 'Let us know' button in the footer
    When the Customer clicks outside of the modal
    Then the form is closed

QA - Compliments & Complaints Form - Form Input - Customer
    [Documentation]    Customer provides input
    [Tags]    Scenario_DBP-891    UserStory_DBP-246
    Given the Customer opens the Form by selecting the 'Let us know' button in the footer
    When the Customer provides input
    Then the following fields are dropdowns with respective values FEEDBACK TYPE (Compliment ; Complaint ; Suggestion) WHAT IS YOUR FEEDBACK RELATED TO? (Account in Arrears / Legal ; Card ; Fraud ; Home Loans ; Insurance ; Investment / Savings ; Standard Executors and Trustees ; Transactional ; Vehicle and Asset Finance ; Digital Banking ; Service Related ; ATM ; Unwarranted Marketing ; UCount Rewards) TITLE (Mr ; Ms ; Mrs ; Rev ; Judge ; Advocate ; Doctor ; Professor)
    And upon selection of 'WHAT IS YOUR FEEDBACK RELATED TO?' the dropdown 'PLEASE SELECT A FEEDBACK CATEGORY' (Credit Card ; Cheque Account ; Home Loans ; Insurance ; Overdraft ; Personal Loans ; Vehicle Asset Finance) is displayed
    And the following fields are text fields NAME,SURNAME,ID NUMBER,CONTACT NUMBER,ALTERNATIVE CONTACT NUMBER,EMAIL,COMMENTS
    And 'ARE YOU AN EXISTING STANDARD BANK CUSTOMER?' is displayed as Yes/No Radio buttons

QA - Compliments & Complaints Form - Submit Form without mandatory Fields filled - Customer
    [Documentation]    Customer submits the form without mandatory input
    [Tags]    Scenario_DBP-892    UserStory_DBP-246
    Given the Customer opens the Form by selecting the 'Let us know' button in the footer
    And did not enter anything
    When the Customer selects one of the following fields NAME,SURNAME,ID NUMBER,CONTACT NUMBER,EMAIL
    And clicks another field
    And the 'SUBMIT' button is disabled

QA - Compliments & Complaints Form - Submit Form with text as ID Number - Customer
    [Documentation]    Customer submits the form with invalid ID Number
    [Tags]    Scenario_DBP-893    UserStory_DBP-246
    Given the Customer opens the Form by selecting the 'Let us know' button in the footer
    And has filled in all mandatory fields
    When the Customer enters text into the field 'ID NUMBER'
    And deselects the field
    Then a 'South African ID number is invalid' is displayed beneath the field
    And the 'SUBMIT' button is disabled

QA - Compliments & Complaints Form - Submit Form with too short ID Number - Customer
    [Documentation]    Customer submits the form with too short ID Number
    [Tags]    Scenario_DBP-895    UserStory_DBP-246
    Given the Customer opens the Form by selecting the 'Let us know' button in the footer
    And has filled in all mandatory fields
    When the Customer enters a number with less than 13 digits into the field 'ID NUMBER'
    And selects the 'SUBMIT' button
    Then a 'South African ID number is invalid' is displayed beneath the field
    And the 'SUBMIT' button is disabled

QA - Compliments & Complaints Form - Submit Form successfully - Customer
    [Documentation]    Customer submits the form with valid input
    [Tags]    Scenario_DBP-897    UserStory_DBP-246
    Given the Customer opens the Form by selecting the 'Let us know' button in the footer
    And has filled in all mandatory fields
    And has entered a valid ID Number
    When the Customer selects the 'SUBMIT' button
    Then the message 'Your feedback has been received' is displayed