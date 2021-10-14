*** Settings ***
Library    SeleniumLibrary
Library    ../Resource.py

*** Variables ***
${MyMoCTAComp}    //*[@data-text="Open a MyMo Account | TELL ME MORE button click"]
${MyMoHead}    //*[@id="Personal"]/div[2]/div/div[3]/div/div/div/div/div/div/div/div/div[1]/div/h1
${MyMoHeadTxt}    Open a MyMo Account
${MyMoDesc}    //*[@id="Personal"]/div[2]/div/div[3]/div/div/div/div/div/div/div/div/div[2]/div/span
${MyMoDescTxt}    Join us now by following a few easy online steps
${MyMoTellMeMorebtn}    //*[@id="Personal"]/div[2]/div/div[3]/div/div/div/div/div/div/div/div/div[3]/div/a
${hovercolor}    rgba(0, 137, 255, 1)
${MyMoRedirected}    //main/section[1]/div/div/div[2]/div/div/h1
${SubscribeCTAComp}    //*[@id="Personal"]/div[2]/div/div[4]/div/div/div/div/div/div/div/div
${subsCTAHead}    //*[@id="Personal"]/div[2]/div/div[4]/div/div/div/div/div/div/div/div/div[1]/div/h1
${subsCTAHeadTxt}    Subscribe to Our Newsletter
${subsCTADesc}    //*[@id="Personal"]/div[2]/div/div[4]/div/div/div/div/div/div/div/div/div[2]/div/span
${subsCTADescTxt}    Sign up for the Standard Bank newsletter to receive the latest bank news and information on exciting new services delivered right to your inbox
${subscribebtn}    //*[@id="Personal"]/div[2]/div/div[4]/div/div/div/div/div/div/div/div/div[3]/div/span
${uCountCTAComp}   //*[@data-text="Join UCount Rewards | Tell Me More button click"]
${uCountImg}    //*[@id="Personal"]/div[2]/div/div[12]/div/div/div[2]/div/div/div/div/div/div[2]/div/picture/img
${uCountDesc}    //*[@id="Personal"]/div[2]/div/div[12]/div/div/div[2]/div/div/div/div/div/div[3]/div/span
${uCountDescTxt}    For only R25 per month, UCount Rewards gives you access to great benefits, discounts and special offers.
${uCountTellMorebtn}    //*[@id="Personal"]/div[2]/div/div[12]/div/div/div[2]/div/div/div/div/div/div[4]/div/a
${uCountRedirected}    //*[@id="ucount"]/header/div[3]/div/div/div/a

*** Keywords ***
the Site Manager has set the Button URL on the banner component - MyMo
    wait until page contains element    ${MyMoCTAComp}    150
    scroll element into view    ${MyMoCTAComp}
    capture page screenshot

the Customer selects button on the slide - MyMo
    click element    ${MyMoCTAComp}

the page behind the URL is opened in the same browser tab - MyMo
    wait until page contains element    ${MyMoRedirected}   120
    page should contain element    ${MyMoRedirected}
    capture page screenshot
    go back

the Site Manager has set the Button URL on the banner component - UCount
    wait until page contains element    ${uCountCTAComp}    120
    scroll element into view    ${uCountCTAComp}
    capture page screenshot

the Customer selects button on the slide - UCount
    click element    ${uCountCTAComp}

the page behind the URL is opened in the same browser tab - UCount
    wait until page contains element    ${uCountRedirected}    120
    page should contain element    ${uCountRedirected}
    capture page screenshot
    go back

the Customer hovers over (tab and hold on Mobile) the button on the slide - MyMo
    wait until page contains element    ${MyMoCTAComp}     120
    scroll element into view    ${MyMoCTAComp}

the button is displayed in hover mode - MyMo
    mouse over    ${MyMoCTAComp}
    ${elem}    Get Webelement    ${MyMoCTAComp}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${bgColor}
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    run keyword and continue on failure  Should Be True  '${bgColor}'=='${hovercolor}'

the Customer hovers over (tab and hold on Mobile) the button on the slide - UCount
    scroll element into view     ${uCountCTAComp}

the button is displayed in hover mode - UCount
    mouse over     ${uCountCTAComp}
    ${elem}    Get Webelement     ${uCountCTAComp}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${bgColor}
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    run keyword and continue on failure  Should Be True  '${bgColor}'=='${hovercolor}'