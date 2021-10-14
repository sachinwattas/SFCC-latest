*** Settings ***
Documentation     Feature: Get Quote Form
...             Scenario: Customer displays the form
...             For any object, variable, argument changes please goto file Libraries/PageObjects/DBP-254/SearchResultsPage.robotand update
#Library  SeleniumLibrary
Resource   ../../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../../Libraries/PageObjects/DBP-254/SearchResultsPage.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser
*** Variables ***

*** Test Cases ***
Search Results Page
    [Documentation]  Customer displays Sorting Options on search page
    [Tags]  Scenario_DBP-828    UserStory_DBP-254
    When the Customer click the icon search
    And types keyword in the search tab     term loan
    Then the Sorting Options is displayed


displayedArticle Pagination is not displayed - Customer
    [Documentation]  Article pagination is not displayed
    [Tags]  Scenario_DBP-843     UserStory_DBP-254
    When the Customer click the icon search
    And types keyword in the search tab     term loan
    Then the result shown in one page of Article
    And the article pagination is not displayed

On Click Article Pagination - Customer
    [Documentation]    CCustomer click Article pagination
    [Tags]  Scenario_DBP-841     UserStory_DBP-254
    When the Customer click the icon search
    And types keyword in the search tab     Card
    When the Customer click the right arrow Article pagination
    Then the next results page on the right should be displayed Article pagination
    When the customer click the last page of Article pagination
    Then the right arrow should be hidden of Article pagination
    When the Customer click the left arrow of Article pagination
    Then the Article Search Result is displayed
    When the customer click the first page of Article pagination
    Then the left arrow should be hidden of Article pagination

Article Pagination displays - Customer
   [Documentation]   Customer displays Article Pagination on search page
    [Tags]  Scenario_DBP-840    UserStory_DBP-254
    When the Customer click the icon search
    And types keyword in the search tab     card
    Then the number of Article is displayed 6 per page
    And the customer click Hide/Show icon
    Then the number of Article is displayed 4 per page


On Click Product Pagination - Customer
    [Documentation]    Customer click Product paginatio
    [Tags]  Scenario_DBP-836    UserStory_DBP-254
    When the Customer click the icon search
    And types keyword in the search tab     Card
    When the Customer click the right arrow
    Then the next results page on the right should be displayed
    When the customer click the last page
    Then the right arrow should be hidden
    When the Customer click the left arrow
    Then the Product Search Results is displayed
    When the customer click the first page
    Then the left arrow should be hidden

Page Header Banner setting - Site Manager
    [Documentation]    the Site Manager adds image and text for title
    [Tags]  Scenario_DBP-826    UserStory_DBP-254
    When the Customer click the icon search
    And types keyword in the search tab     card
    Then the Header Banner in search page is displayed

Search Results Page
    [Documentation]  Customer displays Hide/Show filter on search page
    [Tags]  Scenario_DBP-827    UserStory_DBP-254
    When the Customer click the icon search
    And types keyword in the search tab     Card
    Then the Hide/Show filter is displayed

Search Refinements displays - Customer
    [Documentation]  Customer displays Search Refinements on search page
    [Tags]  Scenario_DBP-829    UserStory_DBP-254
    When the Customer click the icon search
    And types keyword in the search tab     Card
    And the customer click Hide/Show icon
    Then the Search Refinements is displayed on the left side of the page

Product Search Results displays - Customer
    [Documentation]  Customer displays Product Search Results on search page
    [Tags]  Scenario_DBP-830    UserStory_DBP-254
    When the Customer click the icon search
    And types keyword in the search tab     Card
   Then the Product Search Results is displayed

Product Tile displays - Customer
    [Documentation]  Customer displays Product Tile on search page
    [Tags]  Scenario_DBP-831    UserStory_DBP-254
    When the Customer click the icon search
    And types keyword in the search tab     Card
    Then the Product Tile is displayed on the first row

Product Pagination displays - Customer
    [Documentation]  Customer displays Product Pagination on search page
    [Tags]  Scenario_DBP-832    UserStory_DBP-254
    When the Customer click the icon search
    And types keyword in the search tab     Card
    Then the default number of Products is displayed 3 per page
    And the customer click Hide/Show icon
    Then the number of Products is displayed 2 per page

Product Pagination is not displayed - Customer
    [Documentation]  Product pagination is not displayed
    [Tags]  Scenario_DBP-835     UserStory_DBP-254
    When the Customer click the icon search
    And types keyword in the search tab     term
    Then the result shown in one page
    And the product pagination is not displayed

Article Search Results displays - Customer
    [Documentation]   Customer displays Article Search Result on search page
    [Tags]  Scenario_DBP-837    UserStory_DBP-254
    When the Customer click the icon search
    And types keyword in the search tab     card
    Then the Article Search Result is displayed

