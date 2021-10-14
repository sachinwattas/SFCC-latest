*** Settings ***
Documentation    Feature: Needs and Goals Banner Component
Library    SeleniumLibrary
Resource    ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-244/NeedAndGoals-BannerComponent-Resource.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown  CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***


*** Test Cases ***

TestCase-1: Customer displays slides
    [Documentation]    Scenario: Customer displays slides
    [Tags]    Test_DBP-718    UserStory_DBP-244
#    Given the Site Manager has set the Title, Text, Button, Background color on the Component and the banner the Link Buttons
    When the Customer displays the slide
    Then Title, Text, Button, Background color on the Component and the banner the Link Buttons are displayed

TestCase-2: Customer selects button on slide
    [Documentation]    Scenario: Customer selects button on slide
    [Tags]    Test_DBP-719    UserStory_DBP-244
#    Given the Site Manager has set the Button URL on the slide
    When the Customer selects button on the slide
    Then the page behind the URL is opened in the same browser tab

TestCase-3: Customer hovers over button on slide
    [Documentation]    Scenario: Customer hovers over button on slide
    [Tags]    Test_DBP-720    UserStory_DBP-244
#    Given the Site Manager has set the Button URL on the slide
    When the Customer hovers over (tab and hold on Mobile) the button on the slide
    Then the button is displayed in hover mode (darker background)

TestCase-4: Customer selects specific slide
    [Documentation]    Scenario: Customer selects specific slide
    [Tags]    Test_DBP-721    UserStory_DBP-244
#    Given the Site Manager has set at least 3 slides
    When the Customer selects a specific slide
    Then the selected slide element is displayed
    And the selected slide element is marked on the navigation
    And the other slide elements on the navigation are greyed out

TestCase-5: Customer displays slides
    [Documentation]    Scenario: Customer displays slides
    [Tags]    Test_DBP-722    UserStory_DBP-244
#    Given the Site Manager has set at least three slides
    When the Customer displays the slide
    And click an arrow on the navigation
    Then the next slide element is marked on the navigation
    And the other slide elements on the navigation are greyed out
    And the first is displayed after the last one

TestCase-6: Customer displays Link Buttons
    [Documentation]    Scenario: Customer displays slides
    [Tags]    Test_DBP-723    UserStory_DBP-244
#    Given the Site Manager has set the of icon and the label of the Link Buttons
    When the Customer displays the Link Button
    Then icons and labels are displayed

TestCase-7: Customer selects button on slide
    [Documentation]    Scenario: Customer selects button on slide
    [Tags]    Test_DBP-724    UserStory_DBP-244
#    Given the Site Manager has set the Link Button URL
    When the Customer selects icon button on the slide
    Then the page behind the URL is opened in the same browser tab

TestCase-8: Customer hovers over Link Button
    [Documentation]    Scenario: Customer hovers over Link Button
    [Tags]    Test_DBP-725    UserStory_DBP-244
#    Given the Site Manager has set the URL for the Link Buton
    When the Customer hovers over (tab and hold on Mobile) the icon button on the slide
    Then the button is displayed in hover mode


*** Keywords ***
