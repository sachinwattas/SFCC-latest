*** Settings ***
Library    SeleniumLibraray
Library    ../Resource.py

*** Variables ***
#${HorizontalLinks}    //body/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/div[1]
${componentBackgroundColorOrange}    rgba(0, 0, 0, 0)    #rgba(255, 153, 0)
${standardbankLogo}    //div[4]/div/div/div/a

${HomePage}    https://uat.standardbank.co.za/southafrica/personal/home

*** Keywords ***
the Site Manager has set the URL of Link Button
    [Arguments]     ${Link}
    Element Should Be Visible    ${Link}

the Customer hovers over the button
    [Arguments]     ${Link}
    Mouse Over   ${Link}

the Link Button is displayed in hover mode (Icon and label text turns to white and background turns to different colour)
    [Arguments]     ${Link}
    scroll element into view    ${Link}
    Mouse Over    ${Link}
    ${elem}    Get Webelement    ${Link}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    set suite variable  ${bgColor}    ${bgColor}
    run keyword and continue on failure  Should Be True  '${bgColor}'=='${componentBackgroundColorOrange}'


the Site Manager has set the URL of Link1 Button to redirect
    [Arguments]     ${Link}
    wait until page contains element    ${Link}    120
    Mouse Over    ${Link}

the Site Manager has set the URL of Link Button to redirect
    [Arguments]     ${Link}
    go back
    wait until page contains element    ${Link}    120
    Mouse Over    ${Link}

the Customer click one of the Link Button
    [Arguments]     ${Link}
    Mouse Over    ${Link}
    capture page screenshot

a page behind the URL is opened in the same browser tab
    [Arguments]     ${Link}    ${Element}
    click element    ${Link}
    wait until page contains element    ${Element}    120
    page should contain element    ${Element}
    scroll element into view    ${Element}
    capture page screenshot