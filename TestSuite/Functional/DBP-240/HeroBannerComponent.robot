*** Settings ***
Documentation    Feature:Hero Banner Component


Library    SeleniumLibrary
Resource    ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-240/HeroBannerComponentResources.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown  CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***


*** Test Cases ***

Scenario 1: Customer displays slides
    [Documentation]  1: Customer displays slides
    [Tags]    TestScenario_DBP-564    UserStory_DBP-240
#    Given the Site Manager has set the Title, Text, Button, Background color, Divider and Background image on the slide
    When Run Keyword And Continue On Failure    the Customer displays the slide
    Then Run Keyword And Continue On Failure    Title, Text, Button, Background color, Divider and Background image are displayed


Scenario 2: Customer selects button on slide
    [Documentation]  2: Customer selects button on slide
    [Tags]    TestScenario_DBP-565    UserStory_DBP-240
#    Given the Site Manager has set the Button URL on the slide
    When the Customer selects button on the slide
    Then the page behind the URL is opened in the same browser tab

Scenario 3: Customer hovers over button on slide
    [Documentation]  3: Customer hovers over button on slide
    [Tags]    TestScenario_DBP-566    UserStory_DBP-240

#   Given the Site Manager has set the Button URL on the slide
    When the Customer hovers over (tab and hold on Mobile) the button on the slide
    Then the button is displayed in hover mode (darker background)

Scenario 4: Customer displays slides
    [Documentation]  4: Customer displays slides
    [Tags]    TestScenario_DBP-567    UserStory_DBP-240

#   Given the Site Manager has set at least three slides
    When the Customer displays the slide
#    And waits
    Then the current slide element is marked on the navigation
    And the other slide elements on the navigation are greyed out
    And the next slide is displayed after 7 seconds
    And the first is displayed after the last one
    And the Apply for component is displayed fix

Scenario 5: Customer selects Products on Apply for
    [Documentation]  5: Customer displays slides
    [Tags]    TestScenario_DBP-568    UserStory_DBP-240
#    Given the Site Manager has set options for Product Dropdown on Apply for
    When the Customer selects the Product Dropdown
#    And selects a Product
    Then Products to select are displayed
    And the Product the Customer hovers over is underlined
    And Page of selected Product is opened in the same browser tab

Scenario 6: Customer selects Help Text on Apply for
    [Documentation]  6: Customer selects Help Text on Apply for
    [Tags]    TestScenario_DBP-569    UserStory_DBP-240

#    Given the Site Manager has set for options for Help Text on Apply for
    When the Customer selects the Help Text
    Then page of selected Help Text is opened in the same browser tab


#Scenario 7: Customer selects specific slide
#    [Documentation]  Scenario-7: Customer selects specific slide
#    [Tags]    Scenario_DBP-639    UserStory_DBP-240
#    Given the Site Manager has set at least four slides
#    When the Customer selects a specific slide
#    And waits
#    Then the selected slide element is displayed
#    And the selected slide element is marked on the navigation
#    And the other slide elements on the navigation are greyed out
#    And the next slide is displayed after 7 seconds

*** Keywords ***
