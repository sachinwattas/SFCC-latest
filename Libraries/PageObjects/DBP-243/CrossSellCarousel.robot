*** Settings ***
Library    SeleniumLibrary
Library    ../Resource.py

*** Variables ***
${Carousel1}    //*[@class='swiper-pagination swiper-pagination-clickable swiper-pagination-bullets']/span[contains(@class,"swiper-pagination-bullet")]
${leftArrow}    //*[@class="swiper-button-prev"]
${rightArrow}    //*[@class='swiper-button-next']
${currentSlide}    (//*[@class='swiper-pagination swiper-pagination-clickable swiper-pagination-bullets']/span[contains(@class,"swiper-pagination-bullet")])[1]
${nextSlide}    (//*[@class='swiper-pagination swiper-pagination-clickable swiper-pagination-bullets']/span[contains(@class,"swiper-pagination-bullet")])[2]
${obj_HLink}    //div[@class='swiper-slide swiper-slide-active']
${expArrowColor}    rgba(0, 0, 0, 0)
${componentBackgroundColorOrange}    rgba(255, 153, 0, 1)
${componentBackgroundColorgrey}    rgba(0, 0, 0, 1)
${tellmemorebtn}    //div[1]/div/div[1]/div[2]/div[2]/div/div[7]/div/div/div[2]/div[1]/div[4]/div/div/div/a
${componentBackgroundColorDblue}   rgba(0, 105, 196, 1)

*** Keywords ***
verification of count of links available
    wait until page contains element    ${obj_HLink}    150
    ${count}    fn_listfinder    ${obj_HLink}
    log to console    ${count}

the Site Manager has set at least three slides
     page should contain element    ${Carousel1}
     ${count} =  Get Element Count    ${Carousel1}
     Should Be True  ${count} > 1




the Customer displays the slide
    page should contain element    ${Carousel1}

the current slide element, both arrows are marked on the navigation
    ${elem}    Get Webelement    ${leftArrow}
    ${leftArrowColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${leftArrowColor}
    ${elem}    Get Webelement    ${rightArrow}
    ${rightArrowColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${rightArrowColor}
    run keyword and continue on failure  Should Be True  '${leftArrowColor}'=='${expArrowColor}' and '${rightArrowColor}'=='${expArrowColor}'

the other slide elements on the navigation are greyed out
    ${elem}    Get Webelement   ${nextSlide}
    ${currnavColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${currnavColor}
    set suite variable    ${currnavColor}    ${currnavColor}
    log     ${currnavColor}
    run keyword and continue on failure  Should Be True  '${currnavColor}'=='${componentBackgroundColorOrange}'

the first is displayed after the last one
    ${elem}    Get Webelement       ${currentSlide}
    ${nextnavColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${nextnavColor}
    set suite variable    ${nextnavColor}    ${nextnavColor}
    log     ${nextnavColor}
    run keyword and continue on failure  Should Be True  '${nextnavColor}'=='${componentBackgroundColorgrey}'

the Site Manager has set the Button URL on each slide Cross-sell card
    page should contain element    ${currentSlide}
    Reload Page

the Customer hovers over (tab and hold on Mobile) the button
    [Arguments]    ${btnelement}
#    Wait Until Keyword Succeeds     1 Min       5 Sec       Set Focus To Element      ${btnelement}
#    ${elem1}    Get Webelement    ${btnelement}
#    ${btnhoverColor1}    Call Method    ${elem1}  value_of_css_property     background-color
#    log    ${btnhoverColor1}
#    capture page screenshot
   Wait Until Keyword Succeeds  1 Min      5Sec      Mouse Over   ${btnelement}
#    Sleep   5 Sec
#    ${elem}    Get Webelement    ${btnelement}
#    ${btnhoverColor}    Call Method    ${elem}  value_of_css_property     background-color
#    log    ${btnhoverColor}
#    capture page screenshot
the Customer clicks at next slide
    Wait Until Keyword Succeeds  1 Min      5Sec         click element    ${nextSlide}


And the Customer clicks at first slide
    Wait Until Keyword Succeeds  1 Min      5Sec         click element    ${currentSlide}


the button is displayed in hover mode (darker background)
    [Arguments]    ${btnelement}
    scroll element into view    ${btnelement}
    set focus to element    ${btnelement}
    Wait Until Keyword Succeeds  1 Min      5Sec      Set Focus To Element   ${btnelement}
    capture page screenshot
    sleep   5 sec
    ${elem}    Get Webelement    ${btnelement}
    ${btnhoverColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${btnhoverColor}
    set suite variable    ${btnhoverColor}    ${btnhoverColor}
    log     ${btnhoverColor}
    run keyword and continue on failure  Should Be True  '${btnhoverColor}'=='${componentBackgroundColorDblue}'

the Site Manager has set the Button URL on each of Cross-sell card
    Reload Page
    Wait Until Keyword Succeeds  1 Min      5 Sec    page should contain element    ${leftArrow}

the Customer selects button on page carrousel
    [Arguments]    ${btnelement}
    Wait Until Keyword Succeeds  1 Min      5Sec    mouse over    ${btnelement}

the page behind the URL is opened in the same browser tab
    [Arguments]    ${btnelement}    ${crosssellhead}
    Wait Until Keyword Succeeds  1 Min      5 Sec       click element    ${btnelement}
    wait until page contains element    ${crosssellhead}    120
    page should contain element    ${crosssellhead}
    capture page screenshot
    go back