*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-1856/BannerComponent.robot and update
#Library  SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-1856/BannerComponent.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
 SEO - Needs and goals banner Component - Alt and Title for banking app
    [Documentation]  Business Manager displays Image Alt and Title attributes for banking app
    [Tags]  Scenario_DBP-2156 UserStory_DBP-1856
    When the images in Needs and goals banner Component displays for banking app
    Then it shows images to have alt and title attributes for banking app

SEO - Needs and goals banner Component - Alt and Title for overdraft
    [Documentation]  Business Manager displays Image Alt and Title attributes for overdraft
    [Tags]  Scenario_DBP-2156 UserStory_DBP-1856
    When the images in Needs and goals banner Component displays for overdraft
    Then it shows images to have alt and title attributes for overdraft

SEO - Needs and goals banner Component - Alt and Title for Personal loans
    [Documentation]  Business Manager displays Image Alt and Title attributes for Personal loans
    [Tags]  Scenario_DBP-2156 UserStory_DBP-1856
    When the images in Needs and goals banner Component displays for Personal loans
    Then it shows images to have alt and title attributes for Personal loans

SEO - Needs and goals banner Component - Alt and Title for Gold Credit Card
    [Documentation]  Business Manager displays Image Alt and Title attributes for Gold Credit Card
    [Tags]  Scenario_DBP-2156 UserStory_DBP-1856
    When the images in Needs and goals banner Component displays for Gold Credit Card
    Then it shows images to have alt and title attributes for Gold Credit Card