*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-1857/BannerComponent.robot and update
#Library  SeleniumLibrary
Resource  ../../../../Libraries/PageObjects/CommonRepo.robot
Resource   ../../../../Libraries/PageObjects/DBP-1857/BannerComponent.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown  CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
Banner Component Alt and Title for INTRODUCING STANDARD BANK
    [Documentation]  Business Manager displays Image Alt and Title attributes for INTRODUCING STANDARD BANK
    [Tags]  Scenario_DBP-2157 UserStory_DBP-1857
    When the images in Banner Co mponent displays for INTRODUCING STANDARD BANK
    Then it shows images to have alt and title attributes for INTRODUCING STANDARD BANK