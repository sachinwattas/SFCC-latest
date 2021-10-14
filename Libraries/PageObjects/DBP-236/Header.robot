*** Settings ***
Library    SeleniumLibrary
Library    ../Resource.py
Resource   ../DBP-257/SearchRefine.robot

*** Variables ***

${primnavpane}    //header/div[6]/div[1]/nav[1]/div[2]/div[2]

${primnavProd&Serv}    //span[text()="Products and Services" and @class="nav-link "]
${quatnavdigwall}    //div[@id="v-pills-personal-bank-with-us"]//span[text()="DIGITAL WALLETS"]
${digiwallurl}    https://www.standardbank.co.za/southafrica/personal/home
${primnavShop}    //span[text()="Shop" and @class="nav-link "]
${primnavUcountrew}    //*[@data-text="Personal | UCount Rewards"]/..
${Ucountredirelem}    //*[@id="ucount"]/section[1]/div/div/div/div/div/div/h1
${primnavLearn}    //div[@class="second-menu position-relative"]//div[@class="nav-item has-childs"]//span[text()="Learn"]
${learnelement}    //div/div/div[2]/div/div/h1
${Learnredirurl}    https://www.standardbank.co.za/southafrica/personal/learn
${primnavCovid19}    //*[@class="nav-item has-childs"]//*[@data-text="Personal | COVID 19"]

${secnavbankwithus}    //*[@id="v-pills-personal-bank-with-us-tab"]
${secnavborrow}    //*[@id="v-pills-personal-borrow-for-your-needs-tab"]
${secnavgrowmoney}    //*[@id="v-pills-personal-grow-your-money-tab"]
${secnavinsure}    //*[@id="v-pills-personal-insure-what-matters-tab"]
${secnavwaystobank}    //*[@id="v-pills-personal-ways-to-bank-tab"]
${secnavcustsol}    //*[@id="v-pills-personal-customer-solutions-tab"]
${secnavseccent}    //*[@id="v-pills-personal-security-centre-tab"]

${quatnavforex}    //*[@id="v-pills-personal-bank-with-us"]/div/div[5]/ul/li[1]/a/span
${forexredirelem}    //div/div/div[2]/div/div/h1
${forexredirurl}    https://www.standardbank.co.za/southafrica/personal/products-and-services/bank-with-us/foreign-exchange

${signintoacc}    //div[1]/header/div[6]/div/nav/div[2]/div[4]/span
${bussinessonline}    //*[@data-text="Sign in to your accounts"]/..//*[@data-text="sign into your accounts | Business online button click"]
${internetbanking}    //*[@data-text="Sign in to your accounts"]/..//*[@data-text="sign into your accounts | Internet banking button click"]
${businessonlineredirurl}    https://www.businessonline.standardbank.co.za/bolsa/businessonline
${BOredirelem}    //div[3]/div/div/div[1]/ul/li[1]/a
${ibredirelem}    (//*[contains(@id,"expanderCard")]//h3[contains(@title-for,"expanderCard")])[1]
${internetbankingredirurl}    https://onlinebanking.standardbank.co.za/#/login?intcmp=coza-sitewide-headernav-direct-login
${BOonlinesharetrad}    //*[@data-text="Sign in to your accounts"]/..//*[@data-text="sign into your accounts | Online share trading link click"]
${BOstockbrokg}    //*[@data-text="Sign in to your accounts"]/..//*[@data-text="sign into your accounts | Stockbroking link click"]
${BOmerchonline}    //*[@data-text="Sign in to your accounts"]/..//*[@data-text="sign into your accounts | Merchant online link click"]
${BOforexrates}    //*[@data-text="Sign in to your accounts"]/..//*[@data-text="sign into your accounts | Foreign exchange rates link click"]
${BOmarktonline}    //*[@data-text="Sign in to your accounts"]/..//*[@data-text="sign into your accounts | Market data link click"]

${internationalbanking}    //*[@data-text="Sign in to your accounts"]/..//*[@data-text="sign into your accounts | International banking link click"]
${IntBankredirelem}    //sbg-web-signin-component//*[text()="Sign-in"]
${internatbankredirurl}    https://bankonline.sboff.com/signin
${IBonlinesharetrad}    //*[@data-text="Sign in to your accounts"]/..//*[@data-text="sign into your accounts | Online Share Trading link click"]
${IBWebtrader}    //*[@data-text="Sign in to your accounts"]/..//*[@data-text="sign into your accounts | Webtrader link click"]
${IBinternatbank}    //*[@data-text="Sign in to your accounts"]/..//*[@data-text="sign into your accounts | International banking link click"]
${IBinsonline}    //*[@data-text="Sign in to your accounts"]/..//*[@data-text="sign into your accounts | Insurance Online link click"]
${IBlifeinsonline}    //*[@data-text="Sign in to your accounts"]/..//*[@data-text="sign into your accounts | Life Insurance Online link click"]
${IBstanlibonline}    //*[@data-text="Sign in to your accounts"]/..//*[@data-text="sign into your accounts | Stanlib online link click"]

${standardbanklogo}    //div[6]/div/nav/div[1]/a/img
${cookiebanner}    //div[1]/header/div[2]
${cookiebannerclose}    //div[2]/div/div/div/div/div[1]/i
${learnbanklogo}    //div[@class="header__logo__full"]/i/*
${countryselector}    //div[3]/div[1]/div[1]/div[2]/li[4]/a[1]
${countryselecclose}    //div[1]/header/div[5]/div/div/span
${southafrica}    //div[5]/div/div/div[3]/div/a[11]/span
${unitedstates}    //span[contains(text(),'United States')]
${usredirelem}    //div/div/div[2]/div/div/h1

${sbshopmenu}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/ul/li[1]/a
${sbshopredirelem}    //*[@class="pi pi-shopping-cart ui-clickable ui-button-icon-left ng-star-inserted"]
${NETSTAR}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[1]/img
${Dischem}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[2]/img
${Freshstop}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[3]/img
${Hirsch}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[4]/img
${IncConnection}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[5]/img
${KFC}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[6]/img
${Makro}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[7]/img
${Netflorist}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[8]/img
${OlympicCycles}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[9]/img
${SAMSUNG}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[10]/img
${Showmax}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[11]/img
${SweepSouth}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[12]/img
${BodyShop}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[13]/img
${CrossTrainer}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[14]/img
${TigerTyres}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[15]/img
${Wine}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[16]/img
${XTrend}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[17]/img
${XKids}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[18]/img
${Zando}    //div[6]/div/nav/div[2]/div[2]/div[2]/div/div/div/div[2]/div[19]/img

${LetUSKnowElement}   //*[@data-text="we want your feedback | let us know button click"]
${Header}     //*[@class="navbar navbar-expand-lg"]

*** Keywords ***
the Site Manager has set an element on Secondary Navigation to open in a new tab
    wait until page contains element    ${primnavUcountrew}    150
    page should contain element    ${primnavUcountrew}

the Customer selects an element on the Secondary Navigation - Shop
#     Wait Until Keyword Succeeds    1 Min  5 Sec   scroll element into view     ${primnavUcountrew}
    Wait Until Keyword Succeeds  1 Min  5 Sec   click element    ${primnavUcountrew}

the Site Manager has set an element on Secondary Navigation to open in the same tab
    wait until page contains element    ${primnavLearn}    150
    page should contain element    ${primnavLearn}

the element is opened in the same browser tab
    wait until page contains element    ${learnelement}    120
    page should contain element    ${learnelement}
    go back

the Customer selects an element on the Secondary Navigation - UCount Rewards
    click element    ${primnavucountrew}

the element is opened in a new browser tab - secondary
    switch window    NEW
    wait until page contains element    ${Ucountredirelem}    120
    page should contain element    ${Ucountredirelem}
    close window
    switch window    MAIN

the Site Manager has set an element on Quaternary Navigation to open in a new tab
    wait until page contains element    ${primnavProd&Serv}    150
    mouse over    ${primnavProd&Serv}

the Customer selects an element on the Quaternary Navigation
    wait until page contains element    ${quatnavforex}    120
    page should contain element    ${quatnavforex}
    click element    ${quatnavforex}

the element is opened in the same browser tab - Forex
    wait until page contains element    ${forexredirelem}    120
    page should contain element    ${forexredirelem}
    go back

the element is opened in a new browser tab - Quaternary
    wait until page contains element    ${forexredirelem}    120
    page should contain element    ${forexredirelem}
    go back

the Site Manager has set an element on Quaternary Navigation to open in the same tab
    wait until page contains element    ${primnavProd&Serv}    120
    mouse over    ${primnavProd&Serv}

the Customer hovers over the Account Sign In
    wait until page contains element    ${signintoacc}    150
    mouse over    ${signintoacc}

the Sign In link to "INTERNET BANKING" with URL "https://onlinebanking standardbank co za/#/login?intcmp=coza-sitewide-headernav-direct-login" is displayed
    click element    ${internetbanking}
    switch window    NEW
    wait until page contains element    ${ibredirelem}    120
    page should contain element    ${ibredirelem}
    close window
    switch window    MAIN

the Sign In link to "BUSINESS ONLINE" with URL "https://www businessonline standardbank co za/bolsa/businessonline" is displayed
    wait until page contains element    ${signintoacc}    120
    mouse over    ${signintoacc}
    click element    ${bussinessonline}
    switch window    NEW
    wait until page contains element    ${BOredirelem}    120
    page should contain element    ${BOredirelem}
    close window
    switch window    MAIN

selects a Account Sign In link
    page should contain element    ${internationalbanking}
    Wait Until Keyword Succeeds  1 Min      5 sec       mouse over    ${internationalbanking}
    Wait Until Keyword Succeeds  1 Min      5 sec      click element    ${internationalbanking}

the Sign In link is displayed with a darker background color
    switch window    NEW

the page is opened in a new browser tab
    wait until page contains element    ${IntBankredirelem}    120
    page should contain element    ${IntBankredirelem}
    close window
    switch window    MAIN

the Customer has not opened the Personal Homepage
    wait until page contains element    ${primnavShop}    150
    click element    ${primnavShop}

the Customer selects the Logo
    click element    ${standardbanklogo}

the Personal Homepage is displayed
    wait until page contains element    ${standardbanklogo}    120
    page should contain element    ${standardbanklogo}

the Customer has opened the Personal Homepage
    wait until page contains element    ${standardbanklogo}    150
    page should contain element    ${standardbanklogo}

the Customer stays on the same page
    wait until page contains element    ${standardbanklogo}    120
    page should contain element    ${standardbanklogo}

the Customer displays the Primary Navigation
    wait until page contains element    ${primnavpane}    150
    page should contain element    ${primnavpane}

"Personal" is displayed as navigation element
    wait until page contains element    ${primnavprod&serv}    120
    page should contain element    ${primnavprod&serv}
    set focus to element    ${primnavprod&serv}

"Shop" is displayed as navigation element
    page should contain element    ${primnavshop}
    set focus to element    ${primnavshop}

"UCount Rewards" is displayed as navigation element
    page should contain element    ${primnavucountrew}
    set focus to element    ${primnavucountrew}

"Learn" is displayed as navigation element
    page should contain element    ${primnavlearn}
    set focus to element    ${primnavlearn}

"COVID19" is displayed as navigation element
    page should contain element    ${primnavcovid19}
    set focus to element    ${primnavcovid19}

the currently selected navigation element is displayed in Active State
    set focus to element    ${primnavpane}

the Site Manager has set an element on Primary Navigation to open in a new tab
    wait until page contains element    ${primnavucountrew}    120
    mouse over    ${primnavucountrew}

the Customer selects an element on the Primary Navigation
    click element    ${primnavucountrew}

the element is opened in a new browser tab
    switch window    NEW
    wait until page contains element    ${Ucountredirelem}    120
    page should contain element    ${Ucountredirelem}
    close window
    switch window    MAIN

the Site Manager has set an element on Primary Navigation to open in the same tab
    wait until page contains element    ${primnavlearn}    120
    mouse over    ${primnavlearn}

the Customer clicks an element on the Primary Navigation
    click element    ${primnavLearn}

the page is opened in the same browser tab
    wait until page contains element    ${learnelement}    120
    page should contain element    ${learnelement}
    go back

the Site Manager has set an element text on Primary Navigation to display in bold text
    wait until page contains element    ${primnavCovid19}    120
    page should contain element    ${primnavCovid19}

the Customer displays the element on the Primary Navigation
    set focus to element    ${primnavcovid19}

the element is displayed in bold text
    ${elem}  get fontweight    ${primnavcovid19}
    run keyword and continue on failure    should be true    '${elem}' > '499'

the Customer has selected an element of the Primary Navigation
    wait until page contains element    ${primnavprod&serv}    120
    page should contain element    ${primnavprod&serv}

the Customer displays the Secondary Navigation
    mouse over    ${primnavprod&serv}

all Secondary Navigation elements related to the Primary Navigation are displayed
    wait until page contains element    ${secnavbankwithus}    120
    page should contain element    ${secnavbankwithus}
    page should contain element    ${secnavbankwithus}
    page should contain element    ${secnavborrow}
    page should contain element    ${secnavgrowmoney}
    page should contain element    ${secnavinsure}
    page should contain element    ${secnavwaystobank}
    page should contain element    ${secnavcustsol}
    page should contain element    ${secnavseccent}

the Site Manager has set an element text on Secondary Navigation to display in bold text
    wait until page contains element    ${primnavprod&serv}    120
    page should contain element    ${primnavprod&serv}

the Customer displays the element on the Secondary Navigation
    mouse over    ${primnavprod&serv}
    wait until page contains element    ${secnavbankwithus}    120
    page should contain element    ${secnavbankwithus}

the secondary element is displayed in bold text
    ${elem}  get fontweight    ${secnavbankwithus}
    run keyword and continue on failure    should be true    '${elem}'>'399'

the Customer selects the Search field

    Wait Until Keyword Succeeds  1 Min      5 Sec       click element    ${searchbutton}

the search expands to a field to type in the search term
    wait until page contains element    ${searchField}    120
    page should contain element    ${searchField}
     Wait Until Keyword Succeeds  1 Min    5 Sec     click element    ${searchclose}

the Customer uses a desktop
    wait until page contains element    ${signintoacc}    120
    page should contain element    ${signintoacc}

the Customer hovers over the Account Sign in field
    wait until page contains element    ${signintoacc}    150
    mouse over    ${signintoacc}
    capture page screenshot

the Account Sign in expands
    wait until page contains element    ${internetbanking}    120
    page should contain element    ${internetbanking}

the Customer selects the Country
    wait until page contains element  ${countryselector}  120
    click element    ${countryselector}

the Country Selector is displaying the full page
    wait until page contains element    ${unitedstates}    120
    Wait Until Keyword Succeeds  1 Min  5 Sec       click element     ${unitedstates}
    Sleep       10  Sec
    Wait Until Keyword Succeeds  1 Min      5 Sec   switch window    NEW
    wait until page contains element    ${usredirelem}    120
    page should contain element    ${usredirelem}
    close window
    switch window    MAIN
    wait until page contains element    ${countryselecclose}    120
    Wait Until Keyword Succeeds  1 Min  5 Sec       click element    ${countryselecclose}

the Customer opens the Shop
    wait until page contains element    ${primnavshop}    120
    mouse over    ${primnavshop}
    wait until page contains element    ${sbshopmenu}    120
    click element    ${sbshopmenu}

the Basket icon is displayed
    sleep    2
    wait until page contains element    ${sbshopredirelem}    120
    page should contain element    ${sbshopredirelem}
    go back

the Site Manager has set the Partner Logos
    wait until page contains element    ${primnavshop}    120

the Customer open the Shop page
    mouse over    ${primnavshop}
    capture page screenshot

the Partner Logos are displayed
    sleep    2
    wait until page contains element    ${sbshopmenu}    120
    Page should contain element  ${NETSTAR}
    Page should contain element  ${Dischem}
    Page should contain element  ${Freshstop}
    Page should contain element  ${Hirsch}
    Page should contain element  ${IncConnection}
    Page should contain element  ${KFC}
    Page should contain element  ${Makro}
    Page should contain element  ${Netflorist}
    Page should contain element  ${OlympicCycles}
    Page should contain element  ${SAMSUNG}
    Page should contain element  ${Showmax}
    Page should contain element  ${SweepSouth}
    Page should contain element  ${BodyShop}
    Page should contain element  ${CrossTrainer}
    Page should contain element  ${TigerTyres}
    Page should contain element  ${Wine}
    Page should contain element  ${XTrend}
    Page should contain element  ${XKids}
    Page should contain element  ${Zando}
    set focus to element  ${NETSTAR}
    set focus to element  ${Dischem}
    set focus to element  ${Freshstop}
    set focus to element  ${Hirsch}
    set focus to element  ${IncConnection}
    set focus to element  ${KFC}
    set focus to element  ${Makro}
    set focus to element  ${Netflorist}
    set focus to element  ${OlympicCycles}
    set focus to element  ${SAMSUNG}
    set focus to element  ${Showmax}
    set focus to element  ${SweepSouth}
    set focus to element  ${BodyShop}
    set focus to element  ${CrossTrainer}
    set focus to element  ${TigerTyres}
    set focus to element  ${Wine}
    set focus to element  ${XTrend}
    set focus to element  ${XKids}
    set focus to element  ${Zando}
    capture page screenshot
    mouse over    ${standardbanklogo}

the option "ONLINE SHARE TRADING", "STOCKBROKING", "MERCHANT ONLINE", "FOREIGN EXCHANGE RATES" and "MARKET DATA" should be displayed under Business Online
    wait until page contains element    ${boonlinesharetrad}    120
    Page should contain element  ${BOonlinesharetrad}
    Page should contain element  ${BOstockbrokg}
    Page should contain element  ${BOmerchonline}
    Page should contain element  ${BOforexrates}
    Page should contain element  ${BOmarktonline}

the link to "ONLINE SHARE TRADING", "WEB TRADER", "INTERNATIONAL BANKING", "INSURANCE ONLINE", "LIFE INSURANCE ONLINE" and "STANLIB ONLINE" should be displayed under Internet Banking
    wait until page contains element    ${IBonlinesharetrad}    120
    Page should contain element  ${IBonlinesharetrad}
    Page should contain element  ${IBWebtrader}
    Page should contain element  ${IBinternatbank}
    Page should contain element  ${IBinsonline}
    Page should contain element  ${IBlifeinsonline}
    Page should contain element  ${IBstanlibonline}
    mouse over    ${standardbanklogo}

the Customer hovers over link on Account Sign In
    wait until page contains element    ${signintoacc}    150
    mouse over    ${signintoacc}

selects a link
    mouse over    ${IBonlinesharetrad}

the link is displayed underlined
    click element    ${internationalbanking}
    switch window    NEW

the Customer scrolls down the page so that the header would not be visible
    wait until page contains element    ${LetUSKnowElement}    120

the Header stays sticky at the top of the page
    scroll element into view    ${LetUSKnowElement}
    wait until page contains element    ${Header}
    capture page screenshot


the Customer launches the Homepage
    wait until page contains element    ${standardbanklogo}

the Cookie Banner is displayed
    wait until page contains element    ${cookiebanner}    120
    page should contain element    ${cookiebanner}

the Customer closes the Cookie Banner
    wait until page contains element    ${cookiebannerclose}    120

the Cookie Banner is not displayed
    page should contain element    ${standardbanklogo}