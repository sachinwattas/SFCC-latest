*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-1860/ArticleCarousel.robot and update
#Library  SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-1860/ArticleCarousel.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Test Setup    the Customer has opened the Quote page
Suite Teardown  CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
SEO Article Carousel Block Component Alt and Title for Find the right bank account
    [Documentation]  Business Manager displays Image Alt and Title attributes for Find the right bank account
    [Tags]  Scenario_DBP-2155 UserStory_DBP-1860
    When the images in Article Carousel Block Component displays for Find the right bank account
    Then it shows images to have alt and title attributes for Find the right bank account

SEO Article Carousel Block Component Alt and Title for personal loans
    [Documentation]  Business Manager displays Image Alt and Title attributes for personal loans
    [Tags]  Scenario_DBP-2155 UserStory_DBP-1860
    When the images in Article Carousel Block Component displays for personal loans
    Then it shows images to have alt and title attributes for personal loans

SEO Article Carousel Block Component Alt and Title for Debt Care
    [Documentation]  Business Manager displays Image Alt and Title attributes for Debt Care
    [Tags]  Scenario_DBP-2155 UserStory_DBP-1860
    When the images in Article Carousel Block Component displays for Debt Care
    Then it shows images to have alt and title attributes for Debt Care