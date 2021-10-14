*** Settings ***
Documentation  Feature: Product Tile
...            Scenario: Customer verifies the components and its properties in Product Tile
...            and redirecting URL when the button clicked
Resource    ../../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../../Libraries/PageObjects/DBP-256/ProductTileRes.robot
Test Setup    CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

#*** Variables ***

*** Test Cases ***
QA - Button redirect - Customer
    [Documentation]    Customer select the Button on the product tile
    [Tags]    Scenario_DBP-786    UserStory_DBP-256
    Given Site Manager has set the Button on the product tile   ${search1}
    When the Customer select the button on the product tile
    Then the page behind the URL is opened in the same browser tab

QA - Button hover - Customer
    [Documentation]     Customer hovers over the Button on the product tile
    [Tags]    Scenario_DBP-787    UserStory_DBP-256
    Given Site Manager has set the Button on the product tile       ${search1}
    When the Customer hovers over the button
    Then the Button is displayed in hover mode (darker background colour)

QA - Product tile desktop display - Customer
    [Documentation]    Customer open product tile in desktop browser
    [Tags]    Scenario_DBP-789    UserStory_DBP-256
    Given Site Manager has set the Name, Image, Label, Description, Button and at least 4 feature attributes on product tiles
    When the Customer navigate to search tab
    And type keyword like: 'account'
    Then the product tile display with the Product-, Image-Name, Label, Description, Button and 4 feature informations

QA - 1 Featured Attribute Display - Customer
    [Documentation]    Customer displays 1 featured attribute on the product tile
    [Tags]    Scenario_DBP-1147    UserStory_DBP-256
   Given Site Manager has set the Button on the product tile       ${search2}
    And Site Manager has set 1 featured attribute
    When the Article Carousel is displayed
    Then the only 1 featured attribute in Product tile is displayed