*** Settings ***
Documentation  Feature: Header
...            Scenario: Customer verifies the components and its properties in Header
Resource    ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-236/Header.robot
Test Setup      CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser


*** Test Cases ***
QA - Header Secondary Navigation open elements in new tab - Customer
    [Documentation]    Scenario: Customer opens element of Secondary Navigation in a new browser tab
    [Tags]    Scenario_DBP-595    UserStory_DBP-236
    Given the Site Manager has set an element on Secondary Navigation to open in a new tab
    When the Customer selects an element on the Secondary Navigation - Shop
    Then the element is opened in a new browser tab - secondary

QA - Header Secondary Navigation open elements in same tab - Customer
    [Documentation]    Scenario: Customer opens element of Secondary Navigation in same browser tab
    [Tags]    Scenario_DBP-596    UserStory_DBP-236
    Given the Site Manager has set an element on Secondary Navigation to open in the same tab
    When the Customer clicks an element on the Primary Navigation
    Then the element is opened in the same browser tab

QA - Header Quaternary Navigation open elements in new tab - Customer
    [Documentation]    Scenario: Customer opens element of Quaternary Navigation in a new browser tab
    [Tags]    Scenario_DBP-627    UserStory_DBP-236
    Given the Site Manager has set an element on Quaternary Navigation to open in a new tab
    When the Customer selects an element on the Quaternary Navigation
    Then the element is opened in a new browser tab - Quaternary

QA - Header Quaternary Navigation open elements in same tab - Customer
    [Documentation]    Scenario: Customer opens element of Quaternary Navigation in same browser tab
    [Tags]    Scenario_DBP-628    UserStory_DBP-236
    Given the Site Manager has set an element on Quaternary Navigation to open in the same tab
    When the Customer selects an element on the Quaternary Navigation
    Then the element is opened in the same browser tab - Forex

QA - Header Account Sign In Login links - Customer
    [Documentation]    Scenario: Customer displays the Account Sign In links
    [Tags]    Scenario_DBP-651    UserStory_DBP-236
    When the Customer hovers over the Account Sign In
    Then the Sign In link to "INTERNET BANKING" with URL "https://onlinebanking standardbank co za/#/login?intcmp=coza-sitewide-headernav-direct-login" is displayed
    And the Sign In link to "BUSINESS ONLINE" with URL "https://www businessonline standardbank co za/bolsa/businessonline" is displayed

QA - Header Quaternary Navigation open elements in same tab - Customer
    [Documentation]    Scenario: Customer opens the Account Sign In links
    [Tags]    Scenario_DBP-652    UserStory_DBP-236
    When the Customer hovers over the Account Sign In
    And selects a Account Sign In link
    Then the Sign In link is displayed with a darker background color
    And the page is opened in a new browser tab

QA - Header Logo redirect - Customer
    [Documentation]    Scenario: Customer is redirected to Personal Homepage
    [Tags]    Scenario_DBP-583    UserStory_DBP-236
    Given the Customer has not opened the Personal Homepage
    When the Customer selects the Logo
    Then the Personal Homepage is displayed

QA - Header Logo on Homepage - Customer
    [Documentation]    Scenario: Customer is not redirected to Personal Homepage when on Homepage
    [Tags]    Scenario_DBP-584    UserStory_DBP-236
    Given the Customer has opened the Personal Homepage
    When the Customer selects the Logo
    Then the Customer stays on the same page

QA - Header Primary Navigation elements - Customer
    [Documentation]    Scenario: Customer is displays Primary Navigation
    [Tags]    Scenario_DBP-586    UserStory_DBP-236
    When the Customer displays the Primary Navigation
    Then "Personal" is displayed as navigation element
    And "Shop" is displayed as navigation element
    And "UCount Rewards" is displayed as navigation element
    And "Learn" is displayed as navigation element
    And "COVID19" is displayed as navigation element
    And the currently selected navigation element is displayed in Active State

QA - Header Primary Navigation open elements in new tab - Customer
    [Documentation]    Scenario: Customer opens element of Primary Navigation in a new browser tab
    [Tags]    Scenario_DBP-587    UserStory_DBP-236
    Given the Site Manager has set an element on Primary Navigation to open in a new tab
    When the Customer selects an element on the Primary Navigation
    Then the element is opened in a new browser tab

QA - Header Primary Navigation open elements in same tab - Customer
    [Documentation]    Scenario: Customer opens element of Primary Navigation in same browser tab
    [Tags]    Scenario_DBP-590    UserStory_DBP-236
    Given the Site Manager has set an element on Primary Navigation to open in the same tab
    When the Customer clicks an element on the Primary Navigation
    Then the page is opened in the same browser tab

QA - Header Primary Navigation element in bold text - Customer
    [Documentation]    Scenario: Customer displays element of Primary Navigation
    [Tags]    Scenario_DBP-591    UserStory_DBP-236
    Given the Site Manager has set an element text on Primary Navigation to display in bold text
    When the Customer displays the element on the Primary Navigation
    Then the element is displayed in bold text

QA - Header Secondary Navigation elements - Customer
    [Documentation]    Scenario: Customer is displays Secondary Navigation
    [Tags]    Scenario_DBP-592    UserStory_DBP-236
    Given the Customer has selected an element of the Primary Navigation
    When the Customer displays the Secondary Navigation
    Then all Secondary Navigation elements related to the Primary Navigation are displayed

QA - Header Secondary Navigation element in bold text - Customer
    [Documentation]    Scenario: Customer displays element of Secondary Navigation
    [Tags]    Scenario_DBP-597    UserStory_DBP-236
    Given the Site Manager has set an element text on Secondary Navigation to display in bold text
    When the Customer displays the element on the Secondary Navigation
    Then the secondary element is displayed in bold text

QA - Header Search - Customer
    [Documentation]    Scenario: Customer selects Search field
    [Tags]    Scenario_DBP-598    UserStory_DBP-236
    When the Customer selects the Search field
    Then the search expands to a field to type in the search term

QA - Header Account Sign in (Large) - Customer
    [Documentation]    Scenario: Customer hovers over Account Sign in field (Desktop)
    [Tags]    Scenario_DBP-599    UserStory_DBP-236
    Given the Customer uses a desktop
    When the Customer hovers over the Account Sign in field
    Then the Account Sign in expands

QA - Header Sub Navigation - Customer
    [Documentation]    Scenario: Customer opens element from Sub Navigation in same browser tab
    [Tags]    Scenario_DBP-600    UserStory_DBP-236
    Given the Site Manager has set an element on Quaternary Navigation to open in the same tab
    When the Customer selects an element on the Quaternary Navigation
    Then the element is opened in the same browser tab - Forex

QA - Header Country Selector - Customer
    [Documentation]    Scenario: Customer opens Country Selector
    [Tags]    Scenario_DBP-601    UserStory_DBP-236
    When the Customer selects the Country
    Then the Country Selector is displaying the full page

QA - Header Basket - Customer
    [Documentation]    Scenario: Customer displays Basket icon
    [Tags]    Scenario_DBP-602    UserStory_DBP-236
    When the Customer opens the Shop
    Then the Basket icon is displayed

QA - Header Shop Partner Logos - Customer
    [Documentation]    Scenario: Customer displays Partner Logos on Shop
    [Tags]    Scenario_DBP-650    UserStory_DBP-236
    Given the Site Manager has set the Partner Logos
    When the Customer open the Shop page
    Then the Partner Logos are displayed

QA - Header Links on Account Sign In - Customer
    [Documentation]    Scenario: Customer displays the links on Account Sign In
    [Tags]    Scenario_DBP-653    UserStory_DBP-236
    When the Customer hovers over the Account Sign in field
    Then the option "ONLINE SHARE TRADING", "STOCKBROKING", "MERCHANT ONLINE", "FOREIGN EXCHANGE RATES" and "MARKET DATA" should be displayed under Business Online
    And the link to "ONLINE SHARE TRADING", "WEB TRADER", "INTERNATIONAL BANKING", "INSURANCE ONLINE", "LIFE INSURANCE ONLINE" and "STANLIB ONLINE" should be displayed under Internet Banking

QA - Header hover over Links on Account Sign In - Customer
    [Documentation]    Scenario: Customer opens link on the Account Sign In
    [Tags]    Scenario_DBP-654    UserStory_DBP-236
    When the Customer hovers over link on Account Sign In
    And selects a link
    Then the link is displayed underlined
    And the page is opened in a new browser tab

QA - Header Sticky State - Customer
    [Documentation]    Scenario: Customer scrolls the page beneath the Header
    [Tags]    Scenario_DBP-657    UserStory_DBP-236
    When the Customer scrolls down the page so that the header would not be visible
    Then the Header stays sticky at the top of the page

QA - Header Cookie Banner - Customer
    [Documentation]    Scenario: Customer displays the Cookie Banner
    [Tags]    Scenario_DBP-660    UserStory_DBP-236
    When the Customer launches the Homepage
    Then the Cookie Banner is displayed

QA - Header Close Cookie Banner - Customer
    [Documentation]    Scenario: Customer closes the Cookie Banner
    [Tags]    Scenario_DBP-661    UserStory_DBP-236
    When the Customer closes the Cookie Banner
    Then the Cookie Banner is not displayed