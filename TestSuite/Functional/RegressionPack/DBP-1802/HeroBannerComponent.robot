*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-1802/HeroBannerComponent.robot and update
#Library  SeleniumLibrary
Resource   .../../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../../Libraries/PageObjects/DBP-1802/HeroBannerComponent.robot
Test Setup    CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***

Banner Component Alt and Title for real-time updates
    [Documentation]  Business Manager displays Image Alt and Title attributes for real-time updates
    [Tags]  Scenario_DBP-2157 UserStory_DBP-1857
    When the images in Banner Component displays for Subscribe for real-time updates
    Then it shows images to have alt and title attributes for Subscribe for real-time updates

*** Test Cases ***
Banner Component Alt and Title for Revolving Loan
    [Documentation]  Business Manager displays Image Alt and Title attributes for Revolving Loan
    [Tags]  Scenario_DBP-2157 UserStory_DBP-1857
    When the images in Banner Component displays for Revolving Loan
    Then it shows images to have alt and title attributes for Revolving Loan

#*** Test Cases ***
#Banner Component Alt and Title for MyMo Plus
#    [Documentation]  Business Manager displays Image Alt and Title attributes for Digital Literacy
#    [Tags]  Scenario_DBP-2157 UserStory_DBP-1857
#    When the images in Banner Component displays for MyMo Plus
#    Then it shows images to have alt and title attributes for MyMo Plus



#SEO - Hero Banner Component - Alt and Text for personal loan
#    [Documentation]  Business Manager displays Image Alt and Title attributes for personal loan
#    [Tags]  Scenario_DBP-2159 UserStory_DBP-1802
#    When the images in Hero Banner Component displays for personal loan
#    Then it shows images to have alt and title attributes for personal loan
#
#SEO - Hero Banner Component - Alt and Text for Funeral Plan
#    [Documentation]  Business Manager displays Image Alt and Title attributes for Funeral Plan
#    [Tags]  Scenario_DBP-2159 UserStory_DBP-1802
#    When the images in Hero Banner Component displays for Funeral Plan
#    Then it shows images to have alt and title attributes for personal loan
#
#
#SEO - Hero Banner Component - Alt and Text for Vishing Scammers
#    [Documentation]  Business Manager displays Image Alt and Title attributes for Vishing Scammers
#    [Tags]  Scenario_DBP-2159 UserStory_DBP-1802
#    When the images in Hero Banner Component displays for Vishing Scammers
#    Then it shows images to have alt and title attributes for Vishing Scammers
#
#SEO - Hero Banner Component - Alt and Text for MyMo Account
#    [Documentation]  Business Manager displays Image Alt and Title attributes for MyMo Account
#    [Tags]  Scenario_DBP-2159 UserStory_DBP-1802
#    When the images in Hero Banner Component displays for MyMo Account
#    Then it shows images to have alt and title attributes for MyMo Account
#
#SEO - Hero Banner Component - Alt and Text for Make more possible
#    [Documentation]  Business Manager displays Image Alt and Title attributes for Make more possible
#    [Tags]  Scenario_DBP-2159 UserStory_DBP-1802
#    When the images in Hero Banner Component displays for Make more possible
#    Then it shows images to have alt and title attributes for Make more possible
#
#SEO - Hero Banner Component - Alt and Text for Pricing 2021
#    [Documentation]  Business Manager displays Image Alt and Title attributes for Pricing 2021
#    [Tags]  Scenario_DBP-2159 UserStory_DBP-1802
#    When the images in Hero Banner Component displays for Pricing 2021
#    Then it shows images to have alt and title attributes for Pricing 2021