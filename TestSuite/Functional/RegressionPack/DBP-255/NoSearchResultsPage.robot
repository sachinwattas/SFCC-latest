*** Settings ***
Documentation  Feature: No Search Results Page
...            Scenario: Customer verifies the components and its properties in No Search Results Page
Resource    ../../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../../Libraries/PageObjects/DBP-255/NoSearchResults.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

#*** Variables ***

*** Test Cases ***
QA - No results message display - Customer
    [Documentation]    Customer displays no result message
    [Tags]     Scenario_DBP-764    UserStory_DBP-255
    Given Site Manager has set the title, image and advices
    When the Customer types a keyword that does not relevant, for example: asdafdasdasf on the search header
    And hit the enter
    Then the No results found message appended with search term and Search advice message are displayed
    And the title, image and advices are displayed