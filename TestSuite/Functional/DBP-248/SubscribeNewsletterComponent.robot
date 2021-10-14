*** Settings ***
Documentation  Feature: Compliments and Complaints Form
...            Scenario: Customer verifies the components and its properties in Compliments and Complaints Form
...            and redirecting URL when the button clicked
Resource    ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-248/SubscribeNewsletter.robot
Test Setup    CommonRepo.Starting Session with Desktop Browser
Test Teardown     CommonRepo.Ending Session by Closing the Desktop Browser

#*** Variables ***

*** Test Cases ***
QA - Subscribe to our newsletter component - Newsletter Subscription form display - Customer
    [Documentation]    The Customer sign up for the Standard Bank newsletter
    [Tags]    Scenario_DBP-887    TestCases/DBP-248/SubscribeNewsletterComponent.robot
    When The Customer click on associated CTA for newsletter subscription
    Then Newsletter Subscription form is displayed

QA - Subscribe to our newsletter component - Close modal - Customer
    [Documentation]    The Customer close the modal and not submitting the form
    [Tags]    Scenario_DBP-894    UserStory_DBP-248
    Given The Customer click on associated CTA for newsletter subscription
    When tapping on outside area of the modal or click X
    And the form is disappeared

QA - Subscribe to our newsletter component - Contents Element - Customer
    [Documentation]    The Customer displays the content in the form
    [Tags]    Scenario_DBP-896    UserStory_DBP-248
    When The Customer click on associated CTA for newsletter subscription
    Then Newsletter Subscription form is displayed
    And following element are displayed: Title: Sign up for our newsletter (all caps),Sub-Title: Please complete your details below,Field to enter: First Name, Surname, Email,Subscription option selection: Select All,Title: CHOOSE AT LEAST ONE TOPIC OR PRODUCT YOU WANT TO SUBSCRIBE TO,Check box: Being better with money, Saving for the future, Buying a home, Global insights, Events/Webinar,Disclaimer title: Show Disclaimer and Conditions of access (arrow for show/collapse option),Legal copy,Sign Up button

QA - Subscribe to our newsletter component - First Name is empty - Customer
    [Documentation]    Input validation - First Name is empty
    [Tags]    Scenario_DBP-898    UserStory_DBP-248
    Given The Customer click on associated CTA for newsletter subscription
    When Newsletter Subscription form is displayed
    Then The Customer doesn't enter or keep the First Name empty
    And the box frame and title are turned to red and below the text 'This field is required' is displayed - First name

QA - Subscribe to our newsletter component - Newsletter Preferences display - Customer
    [Documentation]    The Customer can chose the topic / product for newsletter subscription
    [Tags]    Scenario_DBP-899    UserStory_DBP-248
    Given The Customer click on associated CTA for newsletter subscription
    When Newsletter Subscription form is displayed
    Then The Customer wants to choose the newsletter preference
    And click each the box or Select All option to select all preferences
    And Clear selected option to clear all selections

QA - Subscribe to our newsletter component - Disclaimer display - Customer
    [Documentation]    The Customer can show or collapse Disclaimer Content
    [Tags]    Scenario_DBP-900    UserStory_DBP-248
    Given The Customer click on associated CTA for newsletter subscription
    When Newsletter Subscription form is displayed
    Then The Customer click the disclaimer title
    And disclaimer content is hidden

QA - Subscribe to our newsletter component - Sign Up button display - Customer
    [Documentation]    The sign up button activated (hover)
    [Tags]    Scenario_DBP-901    UserStory_DBP-248
    Given The Customer click on associated CTA for newsletter subscription
    When Newsletter Subscription form is displayed
    Then The Customer at least chose one of newsletter preferences
    And Sign Up button is activated (light blue), hoover (dark blue)

QA - Subscribe to our newsletter component - Sign Up redirect - Customer
    [Documentation]    The Customer click the sign up button in the form
    [Tags]    Scenario_DBP-906    UserStory_DBP-248
    Given The Customer click on associated CTA for newsletter subscription
    When Newsletter Subscription form is displayed
    Then the customer has completed the form
    And click the sign up button
    And confirmation windows is displayed

QA - Subscribe to our newsletter component - Confirmation pop up - Customer
    [Documentation]    The Customer displays newsletter subscription confirmation
    [Tags]    Scenario_DBP-907    UserStory_DBP-248
    Given The Customer click on associated CTA for newsletter subscription
    When Newsletter Subscription form is displayed
    Then the customer has clicked the sign up button
    And confirmation pop up window opens
    And following items are displayed: Title: Success! Sub-title: You have successfully been subscribed to our newsletter Icon:
    And click the X sign or click background outside the pop up window
    And the confirmation modal is closed

QA - Subscribe to our newsletter component - Surname is empty - Customer
    [Documentation]    Input validation - Surname is empty
    [Tags]    Scenario_DBP-1036    UserStory_DBP-248
    Given The Customer click on associated CTA for newsletter subscription
    When Newsletter Subscription form is displayed
    Then The Customer doesn't fill or keep the Surname empty
    And the box frame and title are turned to red and below the box text 'This field is required' is displayed - Surname

QA - Subscribe to our newsletter component - Email Address is empty - Customer
    [Documentation]    Email address Input validation
    [Tags]    Scenario_DBP-1037    UserStory_DBP-248
    Given The Customer click on associated CTA for newsletter subscription
    When Newsletter Subscription form is displayed
    When The Customer has not inserted the email address in the box
    Then the box frame and title are turned to red and below the text 'This field is required' is displayed - Email

QA - Subscribe to our newsletter component - Sign Up button is disabled - Customer
    [Documentation]    Sign up button is grey (not activated) when topic or product for subscription is not selected
    [Tags]    Scenario_DBP-1038    UserStory_DBP-248
    Given The Customer click on associated CTA for newsletter subscription
    When Newsletter Subscription form is displayed
    Then The Customer has not selected the one of newsletter preferences
    And Sign Up button is disabled

QA - Subscribe to our newsletter component - Clear selected newsletter preference - Customer
    [Documentation]    The Customer deselect the newsletter subscription
    [Tags]    Scenario_DBP-1039    UserStory_DBP-248
    Given The Customer click on associated CTA for newsletter subscription
    When Newsletter Subscription form is displayed
    Then The customer has selected one of newsletter preference
    And The Customer wants to clear the selected newsletter preference
    And click Clear selected option
    And all check box are unchecked and the option Clear selected is disappeared

QA - Subscribe to our newsletter component - Email Address is invalid - Customer
    [Documentation]    Invalid email address
    [Tags]    Scenario_DBP-1043    UserStory_DBP-248
    Given The Customer click on associated CTA for newsletter subscription
    When Newsletter Subscription form is displayed
    Then The Customer has inserted invalid email format in the box
    And the box frame and title are turned to red and below the text 'Please enter a valid input' is displayed