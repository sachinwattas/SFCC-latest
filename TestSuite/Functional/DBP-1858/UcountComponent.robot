*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-1859/CTAComponent.robot and update
#Library  SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-1858/UcountComponent.robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
SEO - Guided Selling Listing Page - Image and Text Component
    [Documentation]  Business Manager displays Image Alt and Title attributes
    [Tags]  Scenario_DBP-2151 UserStory_DBP-1858
    When the images in Image and Text Component displays
    Then it shows images to have alt and title attributes