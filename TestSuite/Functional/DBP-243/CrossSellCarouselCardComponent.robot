*** Settings ***
Documentation  Feature: Cross-sell Carousel Card Component
...            Scenario: Customer verifies the components and its properties in Cross Sell Carousel Card component
...            and redirecting URL when the button clicked
Resource    ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-243/CrossSellCarousel.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***
###Carousel Component 1###
${Car1Image}    //body/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[7]/div[1]/div[1]/div[2]/div[1]/div[4]/div[1]/div[1]/picture[1]/img[1]
${Car1Head}    //body/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[7]/div[1]/div[1]/div[2]/div[1]/div[4]/div[1]/div[1]/div[1]/h5[1]
${Car1Desc}    //body/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[7]/div[1]/div[1]/div[2]/div[1]/div[4]/div[1]/div[1]/div[1]/p[1]
${Car1Button}   (//*[contains(@class,'swiper-container cross-sell-carousel')]//a)[3]
${Car1RedirElem}    //div/div/div[2]/div/div/h1
###Carousel Component 2###
${Car2Image}    //body/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[7]/div[1]/div[1]/div[2]/div[1]/div[5]/div[1]/div[1]/picture[1]/img[1]
${Car2Head}    //body/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[7]/div[1]/div[1]/div[2]/div[1]/div[5]/div[1]/div[1]/div[1]/h5[1]
${Car2Desc}    //body/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[7]/div[1]/div[1]/div[2]/div[1]/div[5]/div[1]/div[1]/div[1]/p[1]
${Car2Button}    (//*[contains(@class,'swiper-container cross-sell-carousel')]//a)[4]
${Car2RedirElem}    //div/div/div[2]/div/div/h1
###Carousel Component 3###
${Car3Image}    //div[1]/div/div[1]/div[2]/div[2]/div/div[7]/div/div/div[2]/div[1]/div[6]/div/div/picture/img
${Car3Head}    //div[1]/div/div[1]/div[2]/div[2]/div/div[7]/div/div/div[2]/div[1]/div[6]/div/div/div/h5
${Car3Desc}    //div[1]/div/div[1]/div[2]/div[2]/div/div[7]/div/div/div[2]/div[1]/div[6]/div/div/div/p
${Car3Button}    (//*[contains(@class,'swiper-container cross-sell-carousel')]//a)[5]
${Car3RedirElem}    //*[@class="component page-intro"]//h1
###Carousel Component 4###
${Car4Image}    //body/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[7]/div[1]/div[1]/div[2]/div[1]/div[7]/div[1]/div[1]/picture[1]/img[1]
${Car4Head}    //body/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[7]/div[1]/div[1]/div[2]/div[1]/div[7]/div[1]/div[1]/div[1]/h5[1]
${Car4Desc}    //body/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[7]/div[1]/div[1]/div[2]/div[1]/div[7]/div[1]/div[1]/div[1]/p[1]
${Car4Button}    (//*[contains(@class,'swiper-container cross-sell-carousel')]//a)[6]
${Car4RedirElem}    //*[@class="main_search_heading"]

*** Test Cases ***
QA - 2 Elements/Page Carousel - Navigation display - Customer
    [Documentation]    Customer displays navigation slides
    [Tags]    Scenario_DBP-668    UserStory_DBP-243
    Given the Site Manager has set at least three slides
    When the Customer displays the slide
    Then the current slide element, both arrows are marked on the navigation
    And the other slide elements on the navigation are greyed out
    And the first is displayed after the last one

QA - Cross-sell carousel card - Button hover - Customer
    [Documentation]    Customer hovers over the button on first Cross-sell card
    [Tags]    Scenario_DBP-682    UserStory_DBP-243    Config_DBP-001
    Given the Site Manager has set the Button URL on each slide Cross-sell card
    When the Customer hovers over (tab and hold on Mobile) the button    ${Car1Button}
    Then the button is displayed in hover mode (darker background)    ${Car1Button}

QA - Cross-sell carousel card - Button hover - Customer
    [Documentation]    Customer hovers over the button on second Cross-sell card
    [Tags]    Scenario_DBP-682    UserStory_DBP-243    Config_DBP-002
    Given the Site Manager has set the Button URL on each slide Cross-sell card
    When the Customer hovers over (tab and hold on Mobile) the button    ${Car2Button}
    Then the button is displayed in hover mode (darker background)    ${Car2Button}

QA - Cross-sell carousel card - Button hover - Customer
    [Documentation]    Customer hovers over the button on third Cross-sell card
    [Tags]    Scenario_DBP-682    UserStory_DBP-243    Config_DBP-003
    Given the Site Manager has set the Button URL on each slide Cross-sell card
    And the Customer clicks at next slide
    When the Customer hovers over (tab and hold on Mobile) the button    ${Car3Button}
    Then the button is displayed in hover mode (darker background)    ${Car3Button}

QA - Cross-sell carousel card - Button hover - Customer
    [Documentation]    Customer hovers over the button on fourth Cross-sell card
    [Tags]    Scenario_DBP-682    UserStory_DBP-243    Config_DBP-004
    Given the Site Manager has set the Button URL on each slide Cross-sell card
    And the Customer clicks at next slide
    When the Customer hovers over (tab and hold on Mobile) the button    ${Car4Button}
    Then the button is displayed in hover mode (darker background)    ${Car4Button}

QA - Cross-sell carousel card - Button redirect - Customer
    [Documentation]    Customer selects button on first Cross-sell card page carrousel
    [Tags]    Scenario_DBP-681    UserStory_DBP-243    Config_DBP-005
    Given the Site Manager has set the Button URL on each of Cross-sell card
    And the Customer clicks at first slide
    When the Customer selects button on page carrousel    ${Car1Button}
    Then the page behind the URL is opened in the same browser tab    ${Car1Button}    ${Car1RedirElem}

QA - Cross-sell carousel card - Button redirect - Customer
    [Documentation]    Customer selects button on second Cross-sell card page carrousel
    [Tags]    Scenario_DBP-681    UserStory_DBP-243    Config_DBP-006
    Given the Site Manager has set the Button URL on each of Cross-sell card
    And the Customer clicks at first slide
    When the Customer selects button on page carrousel    ${Car2Button}
    Then the page behind the URL is opened in the same browser tab    ${Car2Button}    ${Car2RedirElem}

QA - Cross-sell carousel card - Button redirect - Customer
    [Documentation]    Customer selects button on third Cross-sell card page carrousel
    [Tags]    Scenario_DBP-681    UserStory_DBP-243    Config_DBP-007
    Given the Site Manager has set the Button URL on each of Cross-sell card
    And the Customer clicks at next slide
    When the Customer selects button on page carrousel    ${Car3Button}
    Then the page behind the URL is opened in the same browser tab    ${Car3Button}    ${Car3RedirElem}

QA - Cross-sell carousel card - Button redirect - Customer
    [Documentation]    Customer selects button on fourth Cross-sell card page carrousel
    [Tags]    Scenario_DBP-681    UserStory_DBP-243    Config_DBP-008
    Given the Site Manager has set the Button URL on each of Cross-sell card
    And the Customer clicks at next slide
    When the Customer selects button on page carrousel    ${Car4Button}
    Then the page behind the URL is opened in the same browser tab    ${Car4Button}    ${Car4RedirElem}