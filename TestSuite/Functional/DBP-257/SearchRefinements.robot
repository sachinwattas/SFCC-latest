*** Settings ***
Documentation  Feature: Product Tile
...            Scenario: Customer verifies the components and its properties in Product Tile
...            and redirecting URL when the button clicked
Resource    ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-257/SearchRefine.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

#*** Variables ***

*** Test Cases ***
QA - Search Refinements display (Large and Medium) - Customer
    [Documentation]    Customer displays Search
    [Tags]    Scenario_DBP-1060    UserStory_DBP-257
    When the Customer enters a search term
    And submits the search
    Then a search refinement category 'Banking Category' is displayed with the options 'Personal Banking' and 'Business Banking'
    And a search refinement category 'Choose what you need' is displayed with the options 'Products', 'Services', 'Articles', 'Campaigns', 'Newsletter' and 'COVID19-Support'

QA - Search Refinements apply Banking Category refinement (Large and Medium) - Customer
    [Documentation]    Customer applies Banking Category
    [Tags]    Scenario_DBP-1061    UserStory_DBP-257
    Given Products, Services and Articles are set with attributes 'Personal Banking' / 'Business Banking'
    And submits the search
    When the Customer applies a filter from the Banking Category
    Then the search results show only the Products, Services and Articles with the selected attribute

QA - Search Refinements deselect Banking Category refinement (Large and Medium) - Customer
    [Documentation]    Customer applies Banking Category
    [Tags]    Scenario_DBP-1062    UserStory_DBP-257
    When the Customer deselects filter from the Banking Category
    Then the search results show all results

QA - Search Refinements apply Product Choose what do you need refinement (Large and Medium) - Customer
    [Documentation]    Customer applies Choose what you need for Products
    [Tags]    Scenario_DBP-1063    UserStory_DBP-257
    When the Customer applies either 'Products' or 'Services' from Choose what you need
    Then the search results show only the Products, Services with the selected attribute

QA - Search Refinements deselect Choose what you need refinement (Large and Medium) - Customer
    [Documentation]    Customer applies Banking Category
    [Tags]    Scenario_DBP-1064    UserStory_DBP-257
    And applied a filter from Choose what you need
    When the Customer deselects filter from Choose what you need
    Then the search results show all results - Article

QA - Search Refinements apply Article Choose what do you need refinement (Large and Medium) - Customer
    [Documentation]    Customer applies Choose what you need for articles
    [Tags]    Scenario_DBP-1065    UserStory_DBP-257
    When the Customer applies either 'Articles', 'Campaigns', 'Newsletters' or 'COVID-19 Support' from Choose what you need
    Then the search results show only the Articles with the selected attribute

QA - Search Refinements reset refinement (Large and Medium) - Customer
    [Documentation]    Customer resets search refinement on desktop and tablet
    [Tags]    Scenario_DBP-1066    UserStory_DBP-257
    When the Customer selects 'Reset'
    Then all filters are not applied anymore
    And the search results show all results