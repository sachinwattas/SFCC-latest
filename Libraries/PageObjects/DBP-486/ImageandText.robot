*** Settings ***
Library    SeleniumLibrary
Library    ../Resource.py

*** Variables ***
${Imagecompt}    //*[@id="Personal"]/div[2]/div/div[11]/div/div[1]
${imgelement}     //img[@title="Join UCount Rewards"]
${Textcompt}    //*[@class="cta-banner-description-text" and contains(text(),"For only R25 per month, UCount Rewards gives you access to great benefits, discounts and special offers.")]
${textelement}    //*[@class="experience-region experience-secondCol"]//span
${reqtextlength}    35
${imgsource}    https://uat.standardbank.co.za/dw/image/v2/BFRB_DEV/on/demandware.static/-/Library-Sites-SBSharedLibrary/default/dwcd0fe6a5/ucount.png

*** Keywords ***
the image component should be added in site manager
    wait until page contains element    ${Imagecompt}    120
    page should contain element     ${Imagecompt}
    scroll element into view    ${Imagecompt}

the Customer page is navigated
     [Arguments]        ${Element}
    wait until page contains element    ${Element}    120
    scroll element into view    ${Element}
    element should be visible  ${Element}

the added image should be displayed
    wait until page contains element    ${imgelement}    120
    page should contain element     ${imgelement}
    scroll element into view    ${imgelement}
    capture page screenshot

the text component should be added in site manager
    wait until page contains element    ${Textcompt}    120
    page should contain element     ${Textcompt}

the added text should be displayed
    wait until page contains element    ${textelement}    120
    page should contain element     ${textelement}
    capture page screenshot

the text should be in the required size
    ${textlength}  get textlength    ${textelement}
    log to console    ${textlength}
    run keyword and return if    ${textlength}    <=    ${reqtextlength}