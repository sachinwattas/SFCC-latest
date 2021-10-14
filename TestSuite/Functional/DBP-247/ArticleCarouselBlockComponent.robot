*** Settings ***
Documentation    Feature: Article Carousel Block Component

Library    SeleniumLibrary
Resource    ../../../Libraries/PageObjects/CommonRepo.robot

Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown  CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***

${personalMenuLink}                             //html/body/div[1]/header/div[3]/div/div/div[1]/nav/div/ul/li[1]/a
${pageCarouselbackground}                   css=#Personal > div:nth-child(2) > div > div.experience-component.experience-commerce_layouts-articleCarouselBlockComponent > div
${componentLayout}                          css=div[class='experience-component experience-commerce_layouts-articleCarouselBlockComponent'] div[class='container']
${pageCarouselTitle}                        css=#Personal > div:nth-child(2) > div > div.experience-component.experience-commerce_layouts-articleCarouselBlockComponent > div > div > div.carousel-title-container > div > div > span
${pageCarousel-Navigation-NextButton}       css=.swiper-button-next-article
${pageCarousel-Navigation-PrevButton}       css=.swiper-button-prev-article

${inactiveSlide-PaginationBullet}           css=div[class='swiper-pagination swiper-pagination-article swiper-pagination-clickable swiper-pagination-bullets'] span[aria-label='Go to slide 2']
${activeSlide-PaginationBullet}             css=div[class='swiper-pagination swiper-pagination-article swiper-pagination-clickable swiper-pagination-bullets'] span[aria-label='Go to slide 1']

${activeSlide-PaginationBulletColor}        linear-gradient(135deg, rgb(255, 90, 0) 0%, rgb(255, 185, 79) 100%)
${inactiveSlide-PaginationBulletColor}      rgba(0, 0, 0, 0)

${componentBackgroundColorWhite}            rgba(255, 255, 255, 1)
${componentBackgroundColorGray}             rgba(242, 243, 244, 1)

${slide1Click-Locator}        css=#Personal > div:nth-child(2) > div > div.experience-component.experience-commerce_layouts-articleCarouselBlockComponent > div > div > div.swiper-container.article-block-carousel-swiper-container.swiper-container-initialized.swiper-container-horizontal > div.controls-and-indicators.d-flex.justify-content-center > div.swiper-pagination.swiper-pagination-article.swiper-pagination-clickable.swiper-pagination-bullets > span.swiper-pagination-bullet.swiper-pagination-bullet-active
${slide2Click-Locator}        css=#Personal > div:nth-child(2) > div > div.experience-component.experience-commerce_layouts-articleCarouselBlockComponent > div > div > div.swiper-container.article-block-carousel-swiper-container.swiper-container-initialized.swiper-container-horizontal > div.controls-and-indicators.d-flex.justify-content-center > div.swiper-pagination.swiper-pagination-article.swiper-pagination-clickable.swiper-pagination-bullets > span:nth-child(2)

${pageCarousel-Navigation-Slide1}           css=div[class='swiper-pagination swiper-pagination-article swiper-pagination-clickable swiper-pagination-bullets'] span[aria-label='Go to slide 1']
${pageCarousel-Navigation-Slides}           //html/body/div[1]/div/div[2]/div[2]/div/div[9]/div/div/div[2]/div[2]/div
${articleCarouselBlockComponent-Tag}        //html/body/div[1]/div/div[2]/div[2]/div[1]/div[11]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]
${articleCarouselBlockComponent-Image}      //html/body/div[1]/div/div[2]/div[2]/div/div[11]/div/div/div[2]/div[1]/div[2]/div[2]/div/div/img
${articleCarouselBlockComponent-Title}      //html/body/div[1]/div/div[2]/div[2]/div/div[11]/div/div/div[2]/div[1]/div[2]/div[3]/h3
${articleCarouselBlockComponent-Text}       //html/body/div[1]/div/div[2]/div[2]/div/div[11]/div/div/div[2]/div[1]/div[2]/div[3]/p
${articleCarouselBlockComponent-Frame}      //html/body/iframe
${articleCarouselBlockComponent-Link}       //html/body/div[1]/div/div[2]/div[2]/div/div[9]/div/div/div[2]/div[1]/div/div[4]/a/span
${articleCarouselBlockComponent-LinkText}   //html/body/div[1]/div/div[2]/div[2]/div/div[11]/div/div/div[2]/div[1]/div[2]/div[4]/a/span
${articleCardsOnPage}                       //html/body/div[1]/div/div[2]/div[2]/div[1]/div[11]/div[1]/div[1]/div[2]/div[1]/div
${card2-ObjectsCount}                       //html/body/div[1]/div/div[2]/div[2]/div/div[9]/div/div/div[2]/div[1]/div[11]/div

${card1-BlockLocator}       css=div.swiper-slide.swiper-slide-article.swiper-slide-active > div.card__body
${card2-BlockLocator}       css=div.swiper-slide.swiper-slide-article.swiper-slide-next > div.card__body
${card3-BlockLocator}       css=div:nth-child(3) > div.card__body
${card4-BlockLocator}       css=div:nth-child(4) > div.card__body

*** Test Cases ***

Scenario: Customer displays background color
    [Documentation]
    [Tags]      Scenario_Adhoc_01    UserStory_DBP-247
    the customer displays the background color of the articleCarouselBlockComponent
    The Customer displays articleCarouselBlockComponent title
    The Customer displays Elements/Page Carousel - Navigation
    Article Carousel Block Component - items
    Article Carousel Block Component - Tag
    Run Keyword And Continue On Failure    Article Carousel Block Component - Image
    Run Keyword And Continue On Failure    Article Carousel Block Component - Title
    Run Keyword And Continue On Failure    Article Carousel Block Component - Text
    Run Keyword And Continue On Failure    Article Carousel Block Component - Link
    Article Carousel Block Component - Cards

Scenario: Customer selects the 'Read more' link on Article Carousel block
    [Documentation]
    [Tags]      Scenario_DBP-700    UserStory_DBP-247
#    Given the Site Manager has set the URL on article block
    When the Customer selects the 'Read more' link on the article block
    Then the page behind the URL is opened in the same browser tab

Scenario: Customer displays navigation slides
    [Documentation]
    [Tags]      Scenario_DBP-715    UserStory_DBP-247
#    Given the Site Manager has set at least three slides
    When the Customer displays the slide
    Then the current slide element, both arrows are marked on the navigation
    And the other slide elements on the navigation are greyed out

Scenario: Customer displays Article carousel
    [Documentation]
    [Tags]      Scenario_DBP-1142    UserStory_DBP-247
    #Given: Business Manager at least has set up Article Carousel with 4 cards component
    When the Customer displays the slide
    Then 3 card articles shows at first slide
    And the customer click the small grey line or the right arrow on navigation carousel
    Then the 1st card is hidden
    And the 4th cards is displayed

*** Keywords ***

the customer displays the background color of the articleCarouselBlockComponent
    go to    ${personalpagelocation1}
#    Click Link    ${personalMenuLink}
    wait until element is enabled    ${pageCarouselbackground}
    mouse over    ${pageCarouselbackground}
    ${elem}    Get Webelement    ${pageCarouselbackground}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${bgColor}
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
#    Run Keyword And Continue On Failure    Should Be Equal    ${bgColor}    ${componentBackgroundColor1}    or    ${bgColor}    ${componentBackgroundColor2}
    run keyword and continue on failure  Should Be True  '${bgColor}'=='${componentBackgroundColorGray}' or '${bgColor}'=='${componentBackgroundColorWhite}'

#    capture element screenshot    ${pageCarouselbackground}
#    capture page screenshot
The Customer displays articleCarouselBlockComponent title
    Mouse Over    ${pageCarouselTitle}
    element text should be    ${pageCarouselTitle}      LEARN MORE

The Customer displays Elements/Page Carousel - Navigation
    mouse over    ${pageCarousel-Navigation-Slides}
    ${eleCount}    get element count    ${pageCarousel-Navigation-Slides}
    Run Keyword And Continue On Failure    Should Be True    ${eleCount} == 3
    Element Should Be Visible    ${pageCarousel-Navigation-NextButton}
    Element Should Be Visible    ${pageCarousel-Navigation-PrevButton}
Article Carousel Block Component - items
    mouse over    ${card2-ObjectsCount}
    ${eleCount}    get element count    ${card2-ObjectsCount}
    Run Keyword And Continue On Failure    Should Be True    ${eleCount} == 4


Article Carousel Block Component - Tag
    Element Should Be Enabled    ${articleCarouselBlockComponent-Tag}
Article Carousel Block Component - Image
    Element Should Be Enabled    ${articleCarouselBlockComponent-Image}
Article Carousel Block Component - Title
    Element Should Be Enabled    ${articleCarouselBlockComponent-Title}
Article Carousel Block Component - Text
    Element Should Be Enabled    ${articleCarouselBlockComponent-Text}
Article Carousel Block Component - Link
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${articleCarouselBlockComponent-Link}
#    run keyword and continue on failure    Element Text Should Be    ${articleCarouselBlockComponent-LinkText}     Read more
    ${inner-html}=    Get Element Attribute    ${articleCarouselBlockComponent-Link}    innerHTML
    log    ${inner-html}
    should be true    '${inner-html}' == 'Read more'
Article Carousel Block Component - Cards
    mouse over    ${articleCardsOnPage}
    ${eleCount}    get element count    ${articleCardsOnPage}
    Run Keyword And Continue On Failure    Should Be True    ${eleCount} > 4

the Customer selects the 'Read more' link on the article block
    Wait Until Element Is Enabled    ${articleCarouselBlockComponent-Link}
    Click Link    ${articleCarouselBlockComponent-Link}

the page behind the URL is opened in the same browser tab
    ${checkStatus}=  run keyword and return status    Location Should Be    ${PersonalPageLocation1}
    run keyword if  ${checkStatus}    fail  "location didnt change"
    go back
    location should be  ${PersonalPageLocation1}

the Customer displays the slide
    mouse over    ${slide1Click-Locator}
    click element   ${slide1Click-Locator}

the current slide element, both arrows are marked on the navigation
    Element Should Be Visible    ${pageCarousel-Navigation-NextButton}
    Element Should Be Visible    ${pageCarousel-Navigation-PrevButton}

the other slide elements on the navigation are greyed out
    ${elem}    Get Webelement    ${inactiveSlide-PaginationBullet}
    ${bgColor}    Call Method    ${elem}    value_of_css_property    background-color
    log    ${bgColor}
    #evaluate  ${bgColor} == ${expBgColor}
    should be equal    ${bgColor}    ${inactiveSlide-PaginationBulletColor}
#    ${elem}    Get Webelement    ${activeSlide-PaginationBullet}
#    ${bgColor}    Call Method    ${elem}    value_of_css_property    background-image
#    log    ${bgColor}
#    should be equal    ${bgColor}    ${activeSlide-PaginationBulletColor}
3 card articles shows at first slide
    Article Carousel Block Component - Cards
    Element Should Be Visible    ${card1-BlockLocator}
    Element Should Be Visible    ${card2-BlockLocator}
    Element Should Be Visible    ${card3-BlockLocator}

the customer click the small grey line or the right arrow on navigation carousel
    click element    ${pageCarousel-Navigation-NextButton}

the 1st card is hidden
    Element Should Not Be Visible    ${card1-BlockLocator}

the 4th cards is displayed
    Element Should Be Visible    ${card4-BlockLocator}
