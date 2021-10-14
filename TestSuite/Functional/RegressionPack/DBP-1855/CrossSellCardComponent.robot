*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-1855/CrossSellCardComponent.robot and update
#Library  SeleniumLibrary
Resource   ../../../../Libraries/PageObjects/CommonRepo.robot
Resource   ../../../../Libraries/PageObjects/DBP-1855/CrossSellCardComponent.robot
Suite Setup    CommonRepo.Starting Session with Desktop Browser
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
 SEO - Horizontal Links Component - Alt and Title for Credit Card Business
    [Documentation]  Business Manager displays Image Alt and Title attributes
    [Tags]  Scenario_DBP-2158_001    UserStory_DBP-1855
    When the images in Cross-sell carousel card Component displays for Credit Card Business
    Then it shows images to have alt and title attributes for Credit Card Business

SEO - Horizontal Links Component - Alt and Title for Insurance business
    [Documentation]  Business Manager displays Image Alt and Title attributes
    [Tags]  Scenario_DBP-2158_002        UserStory_DBP-1855
    When the images in Cross-sell carousel card Component displays for Insurance business
    Then it shows images to have alt and title attributes for Insurance business

SEO - Horizontal Links Component - Alt and Title for Pre-Owned Car
    [Documentation]  Business Manager displays Image Alt and Title attributes for Pre-Owned Car
    [Tags]  Scenario_DBP-2158_003       UserStory_DBP-1855
    When the images in Cross-sell carousel card Component displays for Pre-Owned Car
    Then it shows images to have alt and title attributes for Pre-Owned Car

SEO - Horizontal Links Component - Alt and Title for Home buying tips
    [Documentation]  Business Manager displays Image Alt and Title attributes for Home buying tips
    [Tags]  Scenario_DBP-2158_004   UserStory_DBP-1855
    When the images in Cross-sell carousel card Component displays for Home buying tips
    Then it shows images to have alt and title attributes for Home buying tips

