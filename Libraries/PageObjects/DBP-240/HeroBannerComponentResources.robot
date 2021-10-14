*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#slide navigation icons

${slide-1-Navigation}    css=#carousel-71c35736f0dbf55c3078553a1b > div.row.mx-0.mt-0.mt-sm-3 > div > ol > li:nth-child(1)
${slide-2-Navigation}    css=#carousel-71c35736f0dbf55c3078553a1b > div.row.mx-0.mt-0.mt-sm-3 > div > ol > li:nth-child(2)
${slide-3-Navigation}    css=li[data-position='2']
${slide-4-Navigation}    css=li[data-position='3']
${slide-5-Navigation}    css=li[data-position='4']
${slide-6-Navigation}    css=li[data-position='5']
${slide-7-Navigation}    css=li[data-position='6']

# Slide block area
${slide-1-Block}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[1]/div/div/div[1]
${slide-3-Block}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[3]/div/div/div[1]

# Slide Titles names
${slide-1-Title}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[1]/div/div/div[1]/div[1]/div/h1
${slide-2-Title}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[2]/div/div/div[1]/div[1]/div/h1
${slide-3-Title}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[3]/div/div/div[1]/div[1]/div/h1
${slide-4-Title}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[4]/div/div/div[1]/div[1]/div/h1
${slide-5-Title}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[5]/div/div/div[1]/div[1]/div/h1
${slide-6-Title}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[6]/div/div/div[1]/div[1]/div/h1

# Slide divider which separates title and body using highlited color line
${slide-1-Divider}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[1]/div/div/div[1]/div[2]
${slide-2-Divider}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[2]/div/div/div[1]/div[2]
${slide-3-Divider}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[3]/div/div/div[1]/div[2]
${slide-4-Divider}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[4]/div/div/div[1]/div[2]
${slide-5-Divider}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[5]/div/div/div[1]/div[2]
${slide-6-Divider}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[6]/div/div/div[1]/div[2]

# slide body content description
${slide-1-DescriptionText}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[1]/div/div/div[1]/div[3]/div/span
${slide-2-DescriptionText}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[2]/div/div/div[1]/div[3]/div/span
${slide-3-DescriptionText}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[3]/div/div/div[1]/div[3]/div/span
${slide-4-DescriptionText}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[4]/div/div/div[1]/div[3]/div/span
${slide-5-DescriptionText}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[5]/div/div/div[1]/div[3]/div/span
${slide-6-DescriptionText}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[6]/div/div/div[1]/div[3]/div/span

# button/links under each slides
${slide-1-Button}    css=#carousel-71c35736f0dbf55c3078553a1b > div.carousel-inner.row > div:nth-child(1) > div > div > div.side.banner-left.bg-gradient-primary.container > div:nth-child(4) > div > a
${slide-2-Button}    //html/body/div[1]/div/div[2]/div[2]/div/div[1]/div/div[1]/div[1]/div[2]/div/div/div[1]/div[4]/div/a
${slide-3-Button}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[3]/div/div/div[1]/div[4]/div/a
${slide-4-Button}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[4]/div/div/div[1]/div[4]/div/a
${slide-5-Button}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[5]/div/div/div[1]/div[4]/div/a
${slide-6-Button}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[6]/div/div/div[1]/div[4]/div/a

# imges of each clide
${slide-1-Img}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[1]/div/div/div[2]/picture/img
${slide-2-Img}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[2]/div/div/div[2]/picture/img
${slide-3-Img}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[3]/div/div/div[2]/picture/img
${slide-4-Img}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[4]/div/div/div[2]/picture/img
${slide-5-Img}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[5]/div/div/div[2]/picture/img
${slide-6-Img}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[6]/div/div/div[2]/picture/img

# need help and apply for floating fixed card on img area

${floatingFixedCard-Title}          //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[2]/div/div[1]
${floatingFixedCard-Dropdown}       css=.applyfor-select
${floatingFixedCard-Body}           //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[2]/div/div[2]/div[2]/div
${floatingFixedCard-NeedHelp}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[2]/div/div[2]/div[2]/div[1]/div/span
${floatingFixedCard-NeedHelpTxt}    Need Help ?
${floatingFixedCard-DropdownText}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[2]/div/div[2]/div[1]/div/div/div/select/option[2]/text()
${floatingNeedhelp1stItem}    //html/body/div[1]/div/div/div[2]/div/div[1]/div/div[2]/div/div[2]/div[2]/div[2]/div/a

# background color validation
${buttonHoverColor}      rgba(0, 35, 110, 1)
${activeSlideColor}      rgba(255, 153, 0, 1)
${inactiveSlideColor}    rgba(204, 204, 204, 1)
${dropdownPleaseSelect}  rgba(255, 255, 255, 1)


*** Keywords ***


the Customer displays the slide
    Go To  ${PersonalPageLocation1}
    Mouse Over    ${slide-1-Navigation}
    Run Keyword And Continue On Failure    Click Element    ${slide-1-Navigation}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${slide-1-Block}

Title, Text, Button, Background color, Divider and Background image are displayed
    wait until keyword succeeds    2x    200ms    slide1 navigation

slide1 navigation
    Click Element    ${slide-1-Navigation}
    Element Should Be Visible    ${slide-1-Title}
    Element Should Be Visible    ${slide-1-Divider}
    Element Should Be Visible    ${slide-1-DescriptionText}
    Element Should Be Visible    ${slide-1-Button}
    Element Should Be Visible    ${slide-1-Img}


the Customer selects button on the slide
    Run Keyword And Continue On Failure    Click Element    ${slide-1-Navigation}
    Run Keyword And Continue On Failure    Click Link    ${slide-1-Button}
the page behind the URL is opened in the same browser tab
    ${checkStatus}=  run keyword and return status    Location Should Be    ${PersonalPageLocation3}
    run keyword if  ${checkStatus}    fail  "location didnt change"
    go back
    location should be  ${PersonalPageLocation3}

the Customer hovers over (tab and hold on Mobile) the button on the slide
    Click Element    ${slide-1-Navigation}
    Mouse Over    ${slide-1-Button}
    ${elem}    Get Webelement    ${slide-1-Button}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     border-bottom-color
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    #evaluate  ${bgColor} == ${expBgColor}
the button is displayed in hover mode (darker background)
    should be equal    ${bgColor}    ${buttonHoverColor}

the current slide element is marked on the navigation
    wait until keyword succeeds    2x    200ms    current slide view

current slide view
    Click Element    ${slide-1-Navigation}
    Mouse Over    ${slide-1-Navigation}
    ${elem}    Get Webelement    ${slide-1-Navigation}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    Run Keyword And Continue On Failure    should be equal    ${bgColor}    ${activeSlideColor}
    Capture Element Screenshot    ${slide-1-Navigation}

the other slide elements on the navigation are greyed out
    Mouse Over    ${slide-4-Navigation}
    ${elem}    Get Webelement    ${slide-4-Navigation}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    should be equal    ${bgColor}    ${inactiveSlideColor}

the next slide is displayed after 7 seconds
    Click Element    ${slide-1-Navigation}
    builtin.sleep    7s
    Mouse Over    ${slide-2-Navigation}
    ${elem}    Get Webelement    ${slide-2-Navigation}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    Run Keyword And Continue On Failure    should be equal    ${bgColor}    ${activeSlideColor}
    SeleniumLibrary.Capture Page Screenshot
    Element Should Be Visible    ${slide-2-Title}
    Element Should Be Visible    ${slide-2-Divider}
    Element Should Be Visible    ${slide-2-DescriptionText}
    Element Should Be Visible    ${slide-2-Button}
    Element Should Be Visible    ${slide-2-Img}

the first is displayed after the last one
    Click Element    ${slide-6-Navigation}
    builtin.sleep    8s
    Mouse Over    ${slide-1-Navigation}
    ${elem}    Get Webelement    ${slide-1-Navigation}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    set suite variable  ${bgColor}     ${bgColor}
    log    ${bgColor}
    Run Keyword And Continue On Failure    should be equal    ${bgColor}    ${activeSlideColor}
    Capture Page Screenshot
    Element Should Be Visible    ${slide-1-Title}
    Element Should Be Visible    ${slide-1-Divider}
    Element Should Be Visible    ${slide-1-DescriptionText}
    Element Should Be Visible    ${slide-1-Button}
    Element Should Be Visible    ${slide-1-Img}

the Apply for component is displayed fix
    Mouse Over    ${floatingFixedCard-Title}
    Element Should Be Visible    ${floatingFixedCard-Title}
    Element Should Be Visible    ${floatingFixedCard-Dropdown}
    Element Should Be Visible    ${floatingFixedCard-Body}

the Customer selects the Product Dropdown
    Click Element    ${floatingFixedCard-Dropdown}

Products to select are displayed
#    Select From List By Index    ${floatingFixedCard-Dropdown}    1
    @{items}   Get List Items    ${floatingFixedCard-Dropdown}
    ${list_length}    Get Length          ${items}
    Should Be True    ${list_length} > 1

the Product the Customer hovers over is underlined
#    Select From List By Index    ${floatingFixedCard-Dropdown}    1
    mouse down     ${floatingFixedCard-Dropdown}
    ${elem}    Get Webelement   ${floatingFixedCard-Dropdown}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    set suite variable  ${bgColor}     ${bgColor}
    log    ${bgColor}
    should be equal    ${bgColor}    ${dropdownPleaseSelect}

Page of selected Product is opened in the same browser tab
    Select From List By Index    ${floatingFixedCard-Dropdown}    1
    ${checkStatus}=  run keyword and return status    Location Should Be    ${PersonalPageLocation3}
    run keyword if  ${checkStatus}    fail  "location didnt change"
    go back
    location should be  ${PersonalPageLocation3}

the Customer selects the Help Text
    Mouse Over    ${floatingFixedCard-Body}
#    Element Text Should Be    ${floatingFixedCard-NeedHelp}    ${floatingFixedCard-NeedHelpTxt}
    ${inner html}=    Get Element Attribute    ${floatingFixedCard-NeedHelp}    innerHTML
    log  ${inner html}
    should be equal    ${inner html}    ${floatingFixedCard-NeedHelpTxt}
#    @{items}   get webelements    ${floatingFixedCard-Body}
#    ${list_length}    Get Length          ${items}
#    Should Be True    ${list_length} > 1
    ${eleCount}    get element count    ${floatingFixedCard-Body}
    Should Be True    ${eleCount} > 1

page of selected Help Text is opened in the same browser tab
    Click Link    ${floatingNeedhelp1stItem}
    ${checkStatus}=  run keyword and return status    Location Should Be    ${PersonalPageLocation3}
    run keyword if  ${checkStatus}    fail  "location didnt change"
    go back
    location should be  ${PersonalPageLocation3}