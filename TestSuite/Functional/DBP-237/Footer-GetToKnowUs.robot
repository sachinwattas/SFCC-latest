*** Settings ***

Documentation     Feature: Footer
...               Scenario: Customer displays/Opens links/Hovers under "Get To Know US"
...             For any object, variable, argument changes please goto file ../../Libraries/PageObjects/DBP-237-Footer/Footer.robot and update

Library  SeleniumLibrary
Resource    ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-237-Footer/Footer.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser



*** Variables ***

*** Test Cases ***
Customer displays "Get to know us
    [Documentation]  Customer Views "Get to Know Us"
    [Tags]  Scenario_DBP-574  UserStory_DBP-237
    When the Customer displays the "Get to know us" part
    Then the links within SFCC are displayed

Customer opens link on "Get to know us
    [Documentation]  Customer Open links under "Get to Know Us"
    [Tags]  Scenario_DBP-577  UserStory_DBP-237
    When the Customer selects a link in the "Get to know us" section of the footer
    Then the page behind the link is opened

Customer hovers over link on "Get to know us
    [Documentation]  Customer hovers over links under "Get to Know Us"
    [Tags]  Scenario_DBP-575  UserStory_DBP-237
    When the Customer hovers over the links in the "Get to know us" section of the footer
    Then the arrow next to the link moves to the right (5px)


Customer views work with us information
    [Documentation]  Footer - Work with us
    [Tags]  Scenario_DBP-?  UserStory_DBP-237
    When the Customer displays Work with us under footer section
    Then Views the text content under work with us
    And Clicks on View Oppurtunities

Customer views Need help contents under Footer
    [Documentation]  Footer - NeedHelp
    [Tags]  Scenario_DBP-576  UserStory_DBP-237
    When the Customer displays Need Help under footer section
    Then Views the text content under Need Help
    And Clicks on Visit our Community img

Customer views Physical address under footer
    [Documentation]  Footer - Physical address
    [Tags]  Scenario_DBP-?  UserStory_DBP-237
    When the Customer displays Physical Address under footer section
    Then Views the text content under Physical address

Customer views we want your Feedback under footer
    [Documentation]  Footer - Feedback
    [Tags]  Scenario_DBP-669  UserStory_DBP-237
    When the Customer displays Feedback info under footer section
    Then Run Keyword And Continue On Failure    Views the text content on We Want Your Feedback
    And Clicks on Let Us Know img


*** Keywords ***
