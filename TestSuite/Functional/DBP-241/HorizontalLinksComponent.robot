*** Settings ***
Documentation  Feature: Horizontal Links Component
...            Scenario: Customer verifies the components and its properties in Horizonatal links component
...            and redirecting URL when the button clicked
Resource    ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-241/HorizontalLinks.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***
${Link1}    //*[@data-text="I need insurance tile click"]
${Link2}    //*[@title="I need a bank account"]
${Link3}    //*[@title="I need a loan"]
${Link4}    //*[contains(@data-text,"I need travel assistance tile click")]
${Link5}    //*[@title="I need a car"]
${Link6}    //*[@title="I need to save"]

${Link1_element}    //div/div/div[3]/div/div/h1
${other_elements}    //div/div/div[2]/div/div/h1
${Link3_element}  //*[@class="title title--page" and contains(text(),"Borrow for your needs")]

*** Test Cases ***
QA - Link Button Hover Desktop & Tablet - Customer
    [Documentation]    QA - Link Button Hover Desktop & Tablet - Customer
    [Tags]  Scenario_DBP-655    UserStory_DBP-241    Config_DBP-001
    Given the Site Manager has set the URL of Link Button    ${Link1}
    When the Customer hovers over the button    ${Link1}
    Then the Link Button is displayed in hover mode (Icon and label text turns to white and background turns to different colour)    ${Link1}

QA - Link Button Hover Desktop & Tablet - Customer
    [Documentation]    QA - Link Button Hover Desktop & Tablet - Customer
    [Tags]  Scenario_DBP-655    UserStory_DBP-241    Config_DBP-002
    Given the Site Manager has set the URL of Link Button    ${Link2}
    When the Customer hovers over the button    ${Link2}
    Then the Link Button is displayed in hover mode (Icon and label text turns to white and background turns to different colour)    ${Link2}

QA - Link Button Hover Desktop & Tablet - Customer
    [Documentation]    QA - Link Button Hover Desktop & Tablet - Customer
    [Tags]  Scenario_DBP-655    UserStory_DBP-241    Config_DBP-003
    Given the Site Manager has set the URL of Link Button    ${Link3}
    When the Customer hovers over the button    ${Link3}
    Then the Link Button is displayed in hover mode (Icon and label text turns to white and background turns to different colour)    ${Link3}

QA - Link Button Hover Desktop & Tablet - Customer
    [Documentation]    QA - Link Button Hover Desktop & Tablet - Customer
    [Tags]  Scenario_DBP-655    UserStory_DBP-241    Config_DBP-004
    Given the Site Manager has set the URL of Link Button    ${Link4}
    When the Customer hovers over the button    ${Link4}
    Then the Link Button is displayed in hover mode (Icon and label text turns to white and background turns to different colour)    ${Link4}

QA - Link Button Hover Desktop & Tablet - Customer
    [Documentation]    QA - Link Button Hover Desktop & Tablet - Customer
    [Tags]  Scenario_DBP-655    UserStory_DBP-241    Config_DBP-005
    Given the Site Manager has set the URL of Link Button    ${Link5}
    When the Customer hovers over the button    ${Link5}
    Then the Link Button is displayed in hover mode (Icon and label text turns to white and background turns to different colour)    ${Link5}

QA - Link Button Hover Desktop & Tablet - Customer
    [Documentation]    QA - Link Button Hover Desktop & Tablet - Customer
    [Tags]  Scenario_DBP-655    UserStory_DBP-241    Config_DBP-006
    Given the Site Manager has set the URL of Link Button    ${Link6}
    When the Customer hovers over the button    ${Link6}
    Then the Link Button is displayed in hover mode (Icon and label text turns to white and background turns to different colour)    ${Link6}

QA - Link Button redirect - Customer
    [Documentation]    QA - Link Button redirect - Customer
    [Tags]    Scenario_DBP-658    UserStory_DBP-241    Config_DBP-Adhoc1
    Given the Site Manager has set the URL of Link1 Button to redirect    ${Link1}
    When the Customer click one of the Link Button    ${Link1}
    Then a page behind the URL is opened in the same browser tab    ${Link1}    ${Link1_element}

QA - Link Button redirect - Customer
    [Documentation]    QA - Link Button redirect - Customer
    [Tags]    Scenario_DBP-658    UserStory_DBP-241    Config_DBP-Adhoc2
    Given the Site Manager has set the URL of Link Button to redirect    ${Link2}
    When the Customer click one of the Link Button    ${Link2}
    Then a page behind the URL is opened in the same browser tab    ${Link2}   ${other_elements}

QA - Link Button redirect - Customer
    [Documentation]    QA - Link Button redirect - Customer
    [Tags]    Scenario_DBP-658    UserStory_DBP-241    Config_DBP-Adhoc3
    Given the Site Manager has set the URL of Link Button to redirect    ${Link3}
    When the Customer click one of the Link Button    ${Link3}
    Then a page behind the URL is opened in the same browser tab    ${Link3}   ${Link3_element}

QA - Link Button redirect - Customer
    [Documentation]    QA - Link Button redirect - Customer
    [Tags]    Scenario_DBP-658    UserStory_DBP-241    Config_DBP-Adhoc4
    Given the Site Manager has set the URL of Link Button to redirect    ${Link4}
    When the Customer click one of the Link Button    ${Link4}
    Then a page behind the URL is opened in the same browser tab    ${Link4}   ${other_elements}

QA - Link Button redirect - Customer
    [Documentation]    QA - Link Button redirect - Customer
    [Tags]    Scenario_DBP-658    UserStory_DBP-241    Config_DBP-Adhoc5
    Given the Site Manager has set the URL of Link Button to redirect    ${Link5}
    When the Customer click one of the Link Button    ${Link5}
    Then a page behind the URL is opened in the same browser tab    ${Link5}   ${other_elements}

QA - Link Button redirect - Customer
    [Documentation]    QA - Link Button redirect - Customer
    [Tags]    Scenario_DBP-658    UserStory_DBP-241    Config_DBP-Adhoc6
    Given the Site Manager has set the URL of Link Button to redirect    ${Link6}
    When the Customer click one of the Link Button    ${Link6}
    Then a page behind the URL is opened in the same browser tab    ${Link6}   ${other_elements}