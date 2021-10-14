*** Settings ***
Library    SeleniumLibrary
#Library    ExtendedSelenium2Library

*** Variables ***
${searchButton}    //div[6]/div/nav/div[2]/div[3]/button
${searchField}    //*[@id="search-input"]
${search1}    card
${search2}    Account
${tilespack}    //*[@id="call-me-back"]/form/div[4]/div[7]/button
${platinumcardtellmorebtn}    //div[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div[2]/div[1]/div[1]/div[1]/div[3]/a[1]
${platcardredirurl}    https://dev.standardbank.co.za/southafrica/personal/products-and-services/bank-with-us/credit-cards/our-cards/platinum-credit-card
${platcardelement}    //div/div/div[2]/div/div/h1
${btnhovercolor}    rgba(0, 105, 196, 1)
${rightarrow}    //*[@id="product-search-results"]/div[2]/div/div[2]/div[2]/div[3]/div[4]
${tilelabel}    //img[@title="Bizlaunch Account"]/parent::div/preceding-sibling::div
${tileimg}    //img[@title="Bizlaunch Account"]
${tilehead}    //img[@title="Bizlaunch Account"]/parent::div/following-sibling::div/h4
${tiledesc}    //img[@title="Bizlaunch Account"]/parent::div/following-sibling::div/p
${tilefattr1}    //img[@title="Attorney Trust account"]/parent::div/preceding-sibling::div
${tilefattr2}    //img[@title="Executor’s Current Account"]/parent::div/preceding-sibling::div
${tilefattr3}    //img[@title="MyMoBiz Business Account"]/parent::div/preceding-sibling::div
${tilefattr4}    //img[@title="Business Current Account"]/parent::div/preceding-sibling::div
${tilebtn}    //img[@title="Bizlaunch Account"]/parent::div/following-sibling::div//a

${feat1head}    //img[@title="Bizlaunch Account"]/parent::div/preceding-sibling::div
${feat1feat}    //img[@title="Bizlaunch Account"]/parent::div/following-sibling::div/div[1]/div[1]/div

*** Keywords ***
Site Manager has set the Button on the product tile
    [Arguments]   ${search}
    wait until page contains element    ${searchbutton}    150
    click element    ${searchbutton}
    input text    ${searchfield}    ${search}
    press keys    ${searchfield}    RETURN

the Customer select the button on the product tile
    wait until page contains element    ${platinumcardtellmorebtn}    120
    click element    ${platinumcardtellmorebtn}

the page behind the URL is opened in the same browser tab
    wait until page contains element    ${platcardelement}    120
    page should contain element    ${platcardelement}
    scroll element into view    ${platcardelement}
    capture page screenshot

the Site Manager has set the URL of the Button
    go back

the Customer hovers over the button
    wait until page contains element    ${platinumcardtellmorebtn}    120
    mouse over    ${platinumcardtellmorebtn}
    capture page screenshot

the Button is displayed in hover mode (darker background colour)
    sleep           10s
    ${elem}    Get Webelement    ${platinumcardtellmorebtn}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${bgColor}
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    run keyword and continue on failure  Should Be True  '${bgColor}'=='${btnhovercolor}'

Site Manager has set the Name, Image, Label, Description, Button and at least 4 feature attributes on product tiles
    click element    ${searchbutton}

the Customer navigate to search tab
    input text    ${searchfield}    account

type keyword like: 'account'
    press keys    ${searchfield}    RETURN

the product tile display with the Product-, Image-Name, Label, Description, Button and 4 feature informations
    wait until page contains element    ${tilelabel}    120
    page should contain element    ${tilelabel}
    page should contain element    ${tileimg}
    page should contain element    ${tilehead}
    page should contain element    ${tiledesc}
    page should contain element    ${tilebtn}
    Click Element    ${rightarrow}
    wait until page contains element    ${tilefattr1}    120
    capture page screenshot
    page should contain element    ${tilefattr1}
    page should contain element    ${tilefattr2}
    page should contain element    ${tilefattr3}
    page should contain element    ${tilefattr4}

Site Manager has set 1 featured attribute
    wait until page contains element    ${feat1head}    120

the Article Carousel is displayed
    page should contain element    ${feat1head}

the only 1 featured attribute in Product tile is displayed
    page should contain element    ${feat1feat}