*** Settings ***

Library    SeleniumLibrary

*** Variables ***


# Slider / card navigation bar objects
${swiper-Slider1}    css=div.swiper-needs-goals-pagination > [aria-label='Go to slide 1']
${swiper-Slider2}    css=div.swiper-needs-goals-pagination > [aria-label='Go to slide 2']
${swiper-Slider3}    css=div.swiper-needs-goals-pagination > [aria-label='Go to slide 3']
${swiper-Slider4}    css=div.swiper-needs-goals-pagination > [aria-label='Go to slide 4']
${swiper-Slider5}    css=div.swiper-needs-goals-pagination > [aria-label='Go to slide 5']
${swiper-Slider6}    css=div.swiper-needs-goals-pagination > [aria-label='Go to slide 6']

#Common verification objects - like background color etc
${swiper-ActiveSlideColor}              rgba(255, 153, 0, 1)
${swiper-InactiveSlideColor}            rgba(0, 0, 0, 1)
${layoutComponentContainerColor}        rgba(33, 37, 41, 1)
${layoutComponentSlideAreaColor}        linear-gradient(135deg, rgb(0, 51, 161), rgb(31, 89, 216))
${buttonHoverColor}                     rgba(0, 105, 196, 1)
${icon-bgHeight}    34px

#Main banner layout objects
${layoutComponentContainer}    css=.px-0.container-fluid
${layoutComponentSlideArea}    css=div.swiper-needs-goals div:nth-of-type(2) > .needs-goals
${layoutComponentContentArea}    //html/body/div[1]/div/div/div[2]/div/div[5]/div/div/div[1]/div[3]/div/div/div/div[1]/div
${swiper-NextArrow}    css=div[class='swiper-button-next swiper-needs-goals-button-next']
${swiper-PrevArrow}    css=.swiper-needs-goals-button-prev

#Slide 1 / card 1 objects
${slide1Title}    css=div[class='swiper-slide swiper-slide-active'] div[class='text-white p-md-3 pr-lg-5'] div:nth-child(1)
${slide1Text}     css=div[class='swiper-slide swiper-slide-active'] div[class='col-12 col-md-6 col-lg-7'] div:nth-child(2)
${slide1LinkButton}    css=div[class='swiper-slide swiper-slide-active'] a[class='btn btn-primary btn-lg']
${slide1-NeedsAndGoalsContainer}                 //html/body/div[1]/div/div/div[2]/div/div[5]/div/div/div[1]/div[2]/div/div/div/div[2]/div/div/div
${slide1-NeedsAndGoals-LeftTopButtonIcon}        //html/body/div[1]/div/div/div[2]/div/div[5]/div/div/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div[1]/a/img
${slide1-NeedsAndGoals-LeftTopButtonLabel}       //html/body/div[1]/div/div/div[2]/div/div[5]/div/div/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div[1]/a/span
${slide1-NeedsAndGoals-RightTopButtonIcon}       //html/body/div[1]/div/div/div[2]/div/div[5]/div/div/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div[2]/a/img
${slide1-NeedsAndGoals-RightTopButtonLabel}      //html/body/div[1]/div/div/div[2]/div/div[5]/div/div/div[1]/div[2]/div/div/div/div[2]/div/div[1]/div[2]/a/span
${slide1-NeedsAndGoals-LeftBottomButtonIcon}     //html/body/div[1]/div/div/div[2]/div/div[5]/div/div/div[1]/div[2]/div/div/div/div[2]/div/div[2]/div[1]/a/img
${slide1-NeedsAndGoals-LeftBottomButtonLabel}    //html/body/div[1]/div/div/div[2]/div/div[5]/div/div/div[1]/div[2]/div/div/div/div[2]/div/div[2]/div[1]/a/span
${slide1-NeedsAndGoals-RightBottomButtonIcon}    //html/body/div[1]/div/div/div[2]/div/div[5]/div/div/div[1]/div[2]/div/div/div/div[2]/div/div[2]/div[2]/a/img
${slide1-NeedsAndGoals-RightBottomButtonLabel}   //html/body/div[1]/div/div/div[2]/div/div[5]/div/div/div[1]/div[2]/div/div/div/div[2]/div/div[2]/div[2]/a/span



*** Keywords ***

the Customer displays the slide
    go to    ${PersonalPageLocation3}
    mouse over    ${swiper-Slider1}
    Click Element    ${swiper-Slider1}

Title, Text, Button, Background color on the Component and the banner the Link Buttons are displayed
    Run Keyword And Continue On Failure    Element Should Be Visible    ${slide1Title}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${slide1Text}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${slide1LinkButton}

    ${elem}    Get Webelement    ${layoutComponentContainer}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     color
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    Capture Element Screenshot    ${layoutComponentContainer}
    Run Keyword And Continue On Failure    should be equal    ${bgColor}    ${layoutComponentContainerColor}

    ${elem}    Get Webelement    ${layoutComponentSlideArea}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-image
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    capture element screenshot    ${layoutComponentSlideArea}
    Run Keyword And Continue On Failure    should be equal    ${bgColor}    ${layoutComponentSlideAreaColor}

    ${eleCount}    get element count    ${slide1-NeedsAndGoalsContainer}
    Run Keyword And Continue On Failure    Should Be True    ${eleCount} == 4

the Customer selects button on the slide
    Mouse Over    ${slide1linkbutton}
    Click Element    ${slide1linkbutton}

the page behind the URL is opened in the same browser tab
    ${checkStatus}=  run keyword and return status    Location Should Be    ${PersonalPageLocation3}
    run keyword if  ${checkStatus}    fail  "location didnt change"
    go back
    location should be  ${PersonalPageLocation3}

the Customer hovers over (tab and hold on Mobile) the button on the slide
    Run Keyword And Continue On Failure    Click Element    ${swiper-slider1}
    Mouse Over       ${slide1linkbutton}
    ${elem}    Get Webelement    ${slide1linkbutton}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    #evaluate  ${bgColor} == ${expBgColor}
    Capture Element Screenshot    ${slide1linkbutton}
the button is displayed in hover mode (darker background)
    should be equal    ${bgColor}    ${buttonHoverColor}

the Customer selects a specific slide
    Click Element    ${swiper-slider1}
the selected slide element is displayed
    Element Should Be Visible    ${slide1Title}
    Element Should Be Visible    ${slide1Text}
    Element Should Be Visible    ${slide1LinkButton}
the selected slide element is marked on the navigation
    Click Element    ${swiper-slider1}
    mouse over       ${swiper-slider1}
    ${elem}    Get Webelement    ${swiper-slider1}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    Run Keyword And Continue On Failure    Should Be Equal    ${bgColor}    ${swiper-ActiveSlideColor}
    capture element screenshot    ${swiper-slider1}
the other slide elements on the navigation are greyed out
    mouse over       ${swiper-slider3}
    ${elem}    Get Webelement    ${swiper-slider3}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    Should Be Equal    ${bgColor}    ${swiper-InactiveSlideColor}
    Capture Element Screenshot    ${swiper-slider3}
click an arrow on the navigation
    Click Element    ${swiper-slider1}
    Click Element    ${swiper-NextArrow}

the next slide element is marked on the navigation
    Mouse Over    ${swiper-Slider2}
    ${elem}    Get Webelement    ${swiper-slider2}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    Should Be Equal    ${bgColor}    ${swiper-ActiveSlideColor}
    capture element screenshot    ${swiper-slider2}
the first is displayed after the last one
    Mouse Over    ${swiper-slider3}
    Click Element    ${swiper-slider3}
    Mouse Over    ${swiper-NextArrow}
    Click Element    ${swiper-NextArrow}
    builtin.sleep    1s
    Mouse Over    ${swiper-Slider1}
    builtin.sleep    1s
    ${elem}    Get Webelement    ${swiper-slider1}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    Run Keyword And Continue On Failure    Should Be Equal    ${bgColor}    ${swiper-ActiveSlideColor}
    capture page screenshot

the Customer displays the Link Button
    Click Element    ${swiper-slider1}

icons and labels are displayed
#    Run Keyword And Continue On Failure    Click Image    ${slide1-NeedsAndGoalsContainer}
    Run Keyword And Continue On Failure    set focus to element    ${slide1-NeedsAndGoalsContainer}
    wait until keyword succeeds     2x      5s     Mouse Over    ${slide1-NeedsAndGoals-LeftTopButtonIcon}
    Run Keyword And Continue On Failure    Element Should Be visible    ${slide1-NeedsAndGoals-LeftTopButtonIcon}
    Run Keyword And Continue On Failure    Mouse Over    ${slide1-NeedsAndGoals-LeftTopButtonLabel}
    Run Keyword And Continue On Failure    Element Should Be visible    ${slide1-NeedsAndGoals-LeftTopButtonLabel}
    Run Keyword And Continue On Failure    Mouse Over    ${slide1-NeedsAndGoals-RightTopButtonIcon}
    Run Keyword And Continue On Failure    element should be visible    ${slide1-NeedsAndGoals-RightTopButtonIcon}
    Run Keyword And Continue On Failure    Mouse Over    ${slide1-NeedsAndGoals-RightTopButtonLabel}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${slide1-NeedsAndGoals-RightTopButtonLabel}
    Run Keyword And Continue On Failure    Mouse Over    ${slide1-NeedsAndGoals-LeftBottomButtonIcon}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${slide1-NeedsAndGoals-LeftBottomButtonIcon}
    Run Keyword And Continue On Failure    Mouse Over    ${slide1-NeedsAndGoals-LeftBottomButtonLabel}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${slide1-NeedsAndGoals-LeftBottomButtonLabel}
    Run Keyword And Continue On Failure    Mouse Over    ${slide1-NeedsAndGoals-RightBottomButtonIcon}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${slide1-NeedsAndGoals-RightBottomButtonIcon}
    Run Keyword And Continue On Failure    Mouse Over    ${slide1-NeedsAndGoals-RightBottomButtonLabel}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${slide1-NeedsAndGoals-RightBottomButtonLabel}

the Customer selects icon button on the slide
    Click Element    ${slide1-NeedsAndGoals-LeftTopButtonIcon}

the Customer hovers over (tab and hold on Mobile) the icon button on the slide
    mouse over    ${slide1-NeedsAndGoals-LeftTopButtonIcon}
    ${elem}    Get Webelement    ${slide1-NeedsAndGoals-LeftTopButtonIcon}
    ${bgHeight}    Call Method    ${elem}    value_of_css_property     height
    set suite variable  ${bgHeight}    ${bgHeight}
    log    ${bgHeight}

the button is displayed in hover mode
    Should Be Equal    ${bgHeight}    ${icon-bgHeight}
    capture element screenshot    ${slide1-NeedsAndGoals-LeftTopButtonIcon}