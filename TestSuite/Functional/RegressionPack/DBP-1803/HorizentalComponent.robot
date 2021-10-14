*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-1803/HorizentalComponent.robot and update
#Library  SeleniumLibrary
Resource   ../../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../../Libraries/PageObjects/DBP-1803/HorizentalComponent.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
 SEO - Horizontal Links Component - Alt and Title for Insurance
    [Documentation]  Customer displays Image Alt and Title attributes for Insurance
    [Tags]  Scenario_DBP-2160 UserStory_DBP-1803
    When the images in Needs and goals banner Component displays for Insurance
    Then it shows images to have alt and title attributes for Insurance

SEO - Horizontal Links Component - Alt and Title for I Need Account
    [Documentation]  Customer displays Image Alt and Title attributes for I Need Account
    [Tags]  Scenario_DBP-2160 UserStory_DBP-1803
    When the images in Needs and goals banner Component displays for I Need Account
    Then it shows images to have alt and title attributes for I Need Account

SEO - Horizontal Links Component - Alt and Title for I need a home loan
    [Documentation]  Customer displays Image Alt and Title attributes for I need a home loan
    [Tags]  Scenario_DBP-2160 UserStory_DBP-1803
    When the images in Needs and goals banner Component displays for I need a home loan
    Then it shows images to have alt and title attributes for I need a home loan

SEO - Horizontal Links Component - Alt and Title for I need travel assistance
    [Documentation]  Customer displays Image Alt and Title attributes for I need travel assistance
    [Tags]  Scenario_DBP-2160 UserStory_DBP-1803
    When the images in Needs and goals banner Component displays for I need travel assistance
    Then it shows images to have alt and title attributes for I need travel assistance

SEO - Horizontal Links Component - Alt and Title for I need a car
    [Documentation]  Customer displays Image Alt and Title attributes for I need a car
    [Tags]  Scenario_DBP-2160 UserStory_DBP-1803
    When the images in Needs and goals banner Component displays for I need a car
    Then it shows images to have alt and title attributes for I need a car

SEO - Horizontal Links Component - Alt and Title for I need a retirement fund
    [Documentation]  Customer displays Image Alt and Title attributes for I need a retirement fund
    [Tags]  Scenario_DBP-2160 UserStory_DBP-1803
    When the images in Needs and goals banner Component displays for I need a retirement fund
    Then it shows images to have alt and title attributes for I need a retirement fund