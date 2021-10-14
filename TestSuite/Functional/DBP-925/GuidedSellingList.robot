*** Settings ***
Documentation  Feature: Guided Selling Product Tile
Library   	SeleniumLibrary

Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-240/HeroBannerComponentResources.robot
Resource    ../../../Libraries/PageObjects/DBP-925/GuidedSellingProductTile.Robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Test Setup  the Customer has opened the Quote page
Suite Teardown  CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***



*** Test Cases ***

Scenario: Customer displays the tile when 3 of 3 attributes on Featured Attribute is set
    [Documentation]  Scenario:  Customer views the product on guided selling page
    [Tags]  Scenario_DBP-1489    UserStory_DBP-925
#    Given Site Manager has set the Product Tile with at least one Featured Attribute where 3 of 3 attributes are entered
    When Run Keyword And Continue On Failure    the Customer displays the Product Tile
    Then Run Keyword And Continue On Failure    the Product Name is displayed
    And Run Keyword And Continue On Failure    Product Image is displayed
    And Run Keyword And Continue On Failure    Product Description is displayed
    And Run Keyword And Continue On Failure    the 3 attributes for Featured Attribute 1 are displayed
    And Run Keyword And Continue On Failure    the 3 attributes for Featured Attribute 2 are displayed
    And Run Keyword And Continue On Failure    the 3 attributes for Featured Attribute 3 are displayed
    And Run Keyword And Continue On Failure    the 3 attributes for Featured Attribute 4 are displayed
    And Run Keyword And Continue On Failure    the Secondary button is displayed with imported text from Product Index
    And Run Keyword And Continue On Failure    the Tell me more button is displayed with "Tell me more"


Scenario: Customer displays and selects the do i qualify button
    [Documentation]  QA - Guided Selling Product Tile Open Links on Buttons - Customer
    [Tags]  Scenario_DBP-1493  UserStory_DBP-925

#    Given Site Manager has set the URL
    When the Customer selects the button    ${product1DoIQualifyButton}
    Then the page behind the set URL is opened in the same tab    ${quotePage}

Scenario: Customer displays and selects the tell me more buttons
    [Documentation]  QA - Guided Selling Product Tile Open Links on Buttons - Customer
    [Tags]  Scenario_DBP-ADHOC_01  UserStory_DBP-925

#    Given Site Manager has set the URL
    When the Customer selects the button    ${product1TellMeMoreButton}
    Then the page behind the set URL is opened in the same tab      ${productDetailPage}

Scenario: Customer hovers the buttons
    [Documentation]  QA - Guided Selling Product Tile Hover Buttons - Customer
    [Tags]  Scenario_DBP-1494  UserStory_DBP-925
    When the Customer hovers the Secondary/ Tell me more Button    ${product1TellMeMoreButton}
    Then Secondary/ Tell me more Button should highlight background color    ${product1TellMeMoreButtonBgColor}    ${product1TellMeMoreButton}
    When the Customer hovers the Secondary/ Tell me more Button    ${product1DoIQualifyButton}
    Then Secondary/ Tell me more Button should highlight background color   ${product1DoIQualifyButtonBgColor}     ${product1DoIQualifyButton}

*** Keywords ***
