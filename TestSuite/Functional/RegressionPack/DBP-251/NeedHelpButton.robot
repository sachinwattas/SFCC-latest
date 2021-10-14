*** Settings ***
Documentation  Feature: Need Help Button
...            Scenario: Customer verifies the components and its properties in Need Help?
...            and redirecting URL when the button clicked
Resource    ../../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../../Libraries/PageObjects/DBP-251/NeedHelp.robot
Test Setup    CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

*** Test Cases ***
QA - Need Help Button - Call Me Back tab submit Form with text as Phone Number - Customer
    [Documentation]     Customer enters text as Phone Number on a request in the 'Call Me Back' tab
    [Tags]    Scenario_DBP-916    UserStory_DBP-251
    Given the Customer has selected the 'Need Help' Button
    And has chosen the 'Call Me Back' tab
    And has filled all mandatory fields
    When the Customer enters text into the PHONE NUMBER field
    And selects the 'CALL ME BACK' button
    Then a 'This contact number is invalid' message is displayed

QA - Need Help Button - Button display - Customer
    [Documentation]    Customer displays the button
    [Tags]    Scenario_DBP-902    UserStory_DBP-251
    When the Customer opens any page in the Shop
    Then scrolls the page
    And the Need Help button is displayed fix in the bottom right corner with text 'Need Help?'( Large, Medium) resp '?' (Small)

QA - Need Help Button - Select Button - Customer
    [Documentation]    Customer selects the button
    [Tags]    Scenario_DBP-903    UserStory_DBP-251
    When the Customer has selected the 'Need Help' Button
    Then the two tabs 'Contact Us' and 'Call Me Back' are displayed
    And 'Contact Us' tab is selected
    And the Need Help button displays with an 'X'

QA - Need Help Button - Close Need Help (Large, Medium) - Customer
    [Documentation]    Customer closes Need Help
    [Tags]    Scenario_DBP-904    UserStory_DBP-251
    Given the Customer has selected the 'Need Help' Button
    When the Customer selects the 'X' button
    Then the two tabs 'Contact Us' and 'Call Me Back' are closed
    And the button reads 'Need Help' again

QA - Need Help Button - Display Contact Us tab - Customer
    [Documentation]    Customer displays the 'Contact Us' tab
    [Tags]    Scenario_DBP-905    UserStory_DBP-251
    Given the Customer has selected the 'Need Help' Button
    When the Customer displays the Contact Us tab
    Then the Contact Us details are displayed

QA - Need Help Button - Contact Us links - Customer
    [Documentation]    Customer selects the links in the 'Contact Us' tab
    [Tags]    Scenario_DBP-908    UserStory_DBP-251
    Given the Customer has selected the 'Need Help' Button
    And the Customer displays the Contact Us tab
    When the Customer selects 'See all contact details' link
    Then the page for the URL 'https://wwwstandardbankcoza/southafrica/personal/contact-us/contact-us-details' is opened
    And selects the 'Find a Branch or Atm' link
    And the page with the branch locator is displayed

QA - Need Help Button - Display Call Me Back tab - Customer
    [Documentation]    Customer displays the 'Call Me Back' tab
    [Tags]    Scenario_DBP-912    UserStory_DBP-251
    Given the Customer has selected the 'Need Help' Button
    When has chosen the 'Call Me Back' tab
    Then the line 'Submit your details and we'll get in touch with you to answer your questions' is displayed
    And the following fields are displayed FIRST NAME,SURNAME,PHONE NUMBER,SA ID NUMBER / PASSPORT NUMBER,WHAT IS YOUR CALL ME BACK RELATED TO,COMMENTS
    And a line 'Your information will be managed securely' with a lock symbol is displayed
    And a 'CALL ME BACK' button is displayed

QA - Need Help Button - Call Me Back tab input - Customer
    [Documentation]    Customer inputs the 'Call Me Back' tab
    [Tags]    Scenario_DBP-913    UserStory_DBP-251
    Given the Customer has selected the 'Need Help' Button
    And has chosen the 'Call Me Back' tab
    When the Customer provides input
    Then the following fields are displayed as text fields FIRST NAME,SURNAME,PHONE NUMBER,COMMENTS
    And the 'SA ID NUMBER / PASSPORT NUMBER' field has radio buttons for 'ID NUMBER' and PASSPORT' with a text field
    And the 'WHAT IS YOUR CALL ME BACK RELATED TO' field is a dropdown list with the values 'Account in Arrears / Legal' ; 'Card' ; 'Fraud' ; 'Home Loans' ; 'Insurance' ; 'Investment / Savings' ; 'Standard Executors and Trustees' ; 'Transactional' ; 'Vehicle and Asset Finance' ; 'Digital Banking' ; 'Service Related' ; 'ATM' ; 'Unwarranted Marketing' ; 'UCount Rewards



QA - Need Help Button - Call Me Back tab button without required fields - Customer
    [Documentation]    Customer submits a request in the 'Call Me Back' tab without providing any info
    [Tags]    Scenario_DBP-914    UserStory_DBP-251
    Given the Customer has selected the 'Need Help' Button
    And has chosen the 'Call Me Back' tab
    And did not enter anything
    When the Customer navigates to the 'CALL ME BACK' button
    Then the button is disabled

QA - Need Help Button - Call Me Back tab name, surname field character limit - Customer
    [Documentation]    Customer enters more than 50 characters into Name and Surname on a request in the 'Call Me Back' tab
    [Tags]    Scenario_DBP-915    UserStory_DBP-251
    Given the Customer has selected the 'Need Help' Button
    And has chosen the 'Call Me Back' tab
    When the Customer enters more than 50 characters into the NAME field
    Then all entered characters from the 51st are not entered into the NAME field
    And Customer enters more than 50 characters into the SURNAME field
    And all entered characters from the 51st are not entered into the SURNAME field

QA - Need Help Button - Call Me Back tab submit Form with insufficient Phone Number digits - Customer
    [Documentation]    Customer enters a Phone Number with insufficient number of digits on a request in the 'Call Me Back' tab
    [Tags]    Scenario_DBP-917    UserStory_DBP-251
    Given the Customer has selected the 'Need Help' Button
    And has chosen the 'Call Me Back' tab
    And has filled all mandatory fields
    When the Customer enters a number with more or less than 10 digits into PHONE NUMBER field
    And deselects the field
    And verify the error message displayed    ${phNumbererror}    ${iderrtext}
    Then a 'South African contact numbers are 10 digits' message is displayed

QA - Need Help Button - Call Me Back tab submit Form with text as ID Number - Customer
    [Documentation]    Customer enters text on SA ID on a request in the 'Call Me Back' tab
    [Tags]    Scenario_DBP-918    UserStory_DBP-251
    Given the Customer has selected the 'Need Help' Button
    And has chosen the 'Call Me Back' tab
    And has filled all mandatory fields
    And has selected SA ID radio button on SA ID / PASSPORT
    When the Customer enters text into the SA ID PASSPORT field
    And deselects the field - SA ID
    And verify the error message displayed    ${idfielderr}    ${saIDerrtext}
    Then a 'South Africa ID number is invalid' message is displayed

QA - Need Help Button - Call Me Back tab submit Form with too short ID Number - Customer
    [Documentation]    Customer submits the form with too short ID Number on SA ID on a request in the 'Call Me Back' tab
    [Tags]    Scenario_DBP-919    UserStory_DBP-251
    Given the Customer has selected the 'Need Help' Button
    And has chosen the 'Call Me Back' tab
     And has chosen the 'Call Me Back' tab
    And has selected SA ID radio button on SA ID / PASSPORT
    When the Customer enters a number with less than 13 digits into the SA ID PASSPORT field
    And deselects the field - SA ID
    And verify the error message displayed    ${idfielderr}    ${invalidSAIDerr}
    Then a 'South Africa ID is 13 digits' message is displayed

QA - Need Help Button - Call Me Back tab submit Form with special characters in Passport Number - Customer
    [Documentation]    Customer enters special characters on SA ID on a request in the 'Call Me Back' tab
    [Tags]    Scenario_DBP-920    UserStory_DBP-251
    Given the Customer has selected the 'Need Help' Button
    And has chosen the 'Call Me Back' tab
    And has filled all mandatory fields
    And has selected PASSPORT radio button on SA ID / PASSPORT
    When the Customer enters special characters into the SA ID PASSPORT field
    And deselects the field - passport
    And verify the error message displayed    ${idfielderr}    ${remsplcharerr}
    Then a 'Please remove special characters' message is displayed

QA - Need Help Button - Call Me Back tab comment field character limit - Customer
    [Documentation]     Customer enters more than 500 characters into Comments on a request in the 'Call Me Back' tab 
    [Tags]    Scenario_DBP-921    UserStory_DBP-251
    Given the Customer has selected the 'Need Help' Button
    And has chosen the 'Call Me Back' tab
    When the Customer enters more than 500 characters into the COMMENTS field
    Then all entered characters from the 501st are not entered into the COMMENTS field

QA - Need Help Button - Call Me Back tab submit Form successfully - Customer
    [Documentation]    Customer submits request in the 'Call Me Back' tab successfully
    [Tags]    Scenario_DBP-922    UserStory_DBP-251
    Given the Customer has selected the 'Need Help' Button
    And has chosen the 'Call Me Back' tab
    And has filled all mandatory fields - SA ID
    When has chosen the 'Call Me Back' tab
    Then a Case is created in Service Cloud
    And a Success Screen is displayed