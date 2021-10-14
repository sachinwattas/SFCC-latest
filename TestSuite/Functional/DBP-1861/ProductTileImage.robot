*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-1861/ProductTile.Robot and update
#Library  SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-1861/ProductTile.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Test Setup    the Customer has opened the Quote page
Suite Teardown  CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
#Guided Selling Listing Page Product Tile Component alt and title for student loan
#    [Documentation]  Customer displays Image Alt and Title attributes for student loan
#    [Tags]  Scenario_DBP-2147 UserStory_DBP-1861
#    When the Customer has opened the Quote page
#    When the images in Guided Selling Listing Page - Product Tile Component displays for student loan
#    Then it shows images to have alt and title attributes for student loan

Guided Selling Listing Page Product Tile Component alt and title for Vehicle and asset insurance
    [Documentation]  Customer displays Image Alt and Title attributes for Vehicle and asset insurance
    [Tags]  Scenario_DBP-2147 UserStory_DBP-1861
    When the images in Guided Selling Listing Page - Product Tile Component displays for Vehicle and asset insurance
    Then it shows images to have alt and title attributes for Vehicle and asset insurance

Guided Selling Listing Page Product Tile Component alt and title for Overdraft
    [Documentation]  Customer displays Image Alt and Title attributes for Overdraft
    [Tags]  Scenario_DBP-2147 UserStory_DBP-1861
    When the images in Guided Selling Listing Page - Product Tile Component displays for Overdraft
    Then it shows images to have alt and title attributes for Overdraft

Guided Selling Listing Page Product Tile Component alt and title for credit-card
    [Documentation]  Customer displays Image Alt and Title attributes for credit-card
    [Tags]  Scenario_DBP-2147 UserStory_DBP-1861
    When the images in Guided Selling Listing Page - Product Tile Component displays for credit-card
    Then it shows images to have alt and title attributes for credit-card

Guided Selling Listing Page Product Tile Component alt and title for personal-loan
    [Documentation]  Customer displays Image Alt and Title attributes for personal-loan
    [Tags]  Scenario_DBP-2147 UserStory_DBP-1861
    When the images in Guided Selling Listing Page - Product Tile Component displays for personal-loan
    Then it shows images to have alt and title attributes for personal-loan

Guided Selling Listing Page Product Tile Component alt and title for home-loans
    [Documentation]  Customer displays Image Alt and Title attributes for home-loans
    [Tags]  Scenario_DBP-2147 UserStory_DBP-1861
    When the images in Guided Selling Listing Page - Product Tile Component displays for home-loans
    Then it shows images to have alt and title attributes for home-loans