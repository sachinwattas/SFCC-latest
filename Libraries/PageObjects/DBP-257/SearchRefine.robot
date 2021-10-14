*** Settings ***
Library    SeleniumLibrary
Library    ../Resource.py

*** Variables ***
${searchButton}    //div[6]/div/nav/div[2]/div[3]/button
${searchField}    //*[@id="search-input"]
${searchclose}    //div[1]/header/div[6]/div[1]/nav/div[2]/div[3]/div/div[1]/button[2]
${searchtext}    banking

${filtericon}    //*[@id="product-search-results"]/div[1]/div/div/div[1]/button

${bankingcathead}    //*[@id="product-search-results"]/div[2]/div/div[1]/div[2]/div[1]/div[3]/div[1]
${bankcatoptions}    //*[@id="refinement-banking-category"]/ul
${bankcatbuslbl}    //*[@id="refinement-banking-category"]/ul/li[1]/button/span[1]
${bankcatbustxt}    Business
${bankcatbuschbx}    //*[@id="refinement-banking-category"]/ul/li[1]/button/i
${bankcatperlbl}    //*[@id="refinement-banking-category"]/ul/li[2]/button/span[1]
${bankcatpertxt}    Personal
${bankcatperchbx}    //*[@id="refinement-banking-category"]/ul/li[2]/button/i

${choosewhatneedhead}    //*[@id="product-search-results"]/div[2]/div/div[1]/div[2]/div[1]/div[2]/div[1]
${choosewhatneedoptions}    //*[@id="refinement-choose-what-you-need"]/ul
${cwnarticleslbl}    //*[@id="refinement-choose-what-you-need"]/ul/li[1]/button/span[1]
${cwnarticlestxt}    Product
${cwnarticleschbx}    //*[@id="refinement-choose-what-you-need"]/ul/li[1]/button/i
${cwncampaignlbl}    //*[@id="refinement-choose-what-you-need"]/ul/li[2]/button/span[1]
${cwncampaigntxt}    Service
${cwncampaignchbx}    //*[@id="refinement-choose-what-you-need"]/ul/li[2]/button/i
${cwncovidsupplbl}    //*[@id="refinement-choose-what-you-need"]/ul/li[3]/button/span[1]
${cwncovidsupptxt}    Articles
${cwncovidsuppchbx}    //*[@id="refinement-choose-what-you-need"]/ul/li[3]/button/i

${bankcatsrchresults}    //html[1]/body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div[2]/div/div
${leftarrow}    //body/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div[2]/div[1]/div[1]
${rightarrow}    //body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div[3]/div[5]

${productchbx}    //*[@id="refinement-choose-what-you-need"]/ul/li[1]/button/i
#${servicechbx}    //*[@id="refinement-type"]/ul/li[2]/button/i
${productresults}    //html[1]/body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div[2]
${Resetbtn}    //html[1]/body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[2]/div[1]/div[1]/div[2]/div[2]/button[2]

${Articlesrchres}    //*[@id="swiper-wrapper-91d2fab54e48960d"]

*** Keywords ***
the Customer enters a search term
    wait until page contains element   ${searchButton}    150
    click element    ${searchButton}
    input text    ${searchField}    ${searchtext}

submits the search
    press keys    None    RETURN

a search refinement category 'Banking Category' is displayed with the options 'Personal Banking' and 'Business Banking'
    wait until page contains element    ${filtericon}    120
    click element    ${filtericon}
    wait until page contains element    ${bankcatoptions}    120
    capture page screenshot
    scroll element into view    ${bankcatoptions}
    element text should be    ${bankcatbuslbl}    ${bankcatbustxt}
    element text should be    ${bankcatperlbl}    ${bankcatpertxt}

a search refinement category 'Choose what you need' is displayed with the options 'Products', 'Services', 'Articles', 'Campaigns', 'Newsletter' and 'COVID19-Support'
    scroll element into view    ${choosewhatneedoptions}
    element text should be    ${cwnarticleslbl}    ${cwnarticlestxt}
    element text should be    ${cwncampaignlbl}    ${cwncampaigntxt}
    element text should be    ${cwncovidsupplbl}    ${cwncovidsupptxt}

Products, Services and Articles are set with attributes 'Personal Banking' / 'Business Banking'
    sleep    2s

the Customer applies a filter from the Banking Category
    click element    ${filtericon}
    sleep    2s
    click element    ${bankcatbuschbx}

the search results show only the Products, Services and Articles with the selected attribute
    wait until page contains element    ${bankcatsrchresults}    120
    capture page screenshot
    ${slidecount}    get element count    ${bankcatsrchresults}
    run keyword and continue on failure    should be true    ${slidecount} == 12

the Customer deselects filter from the Banking Category
    sleep    2s
    click element    ${bankcatbuschbx}

the search results show all results
    wait until page contains element    ${bankcatsrchresults}    120
    ${slidecount}    get element count    ${bankcatsrchresults}
    run keyword and continue on failure    should be true    ${slidecount} == 12

Products and Services are set with attributes 'Products' and 'Services'
    click element    ${searchButton}
    input text    ${searchField}    ${searchtext}

the Customer applies either 'Products' or 'Services' from Choose what you need
    sleep    2s
    click element    ${productchbx}

the search results show only the Products, Services with the selected attribute
    sleep    2s
    page should contain element    ${bankcatsrchresults}

Articles are set with attributes 'Articles', 'Campaigns', 'Newsletters' or 'COVID-19 Support'
    click element    ${searchButton}
    input text    ${searchField}    ${searchtext}

applied a filter from Choose what you need
#    click element    ${filtericon}
    click element    ${cwnarticleschbx}

the Customer deselects filter from Choose what you need
    sleep    2s
    click button    ${Resetbtn}

the search results show all results - Article
    sleep    2s
    ${slidecount}    get element count    ${bankcatsrchresults}
    run keyword and continue on failure    should be true    ${slidecount} == 12
    capture page screenshot

the Customer applies either 'Articles', 'Campaigns', 'Newsletters' or 'COVID-19 Support' from Choose what you need
#    click element    ${filtericon}
    click element    ${cwnarticleschbx}

the search results show only the Articles with the selected attribute
    sleep    2s
    Wait Until Keyword Succeeds   1 Min     5 sec       click element    ${resetbtn}
    Wait Until Keyword Succeeds   1 Min     5 sec        click element    ${cwncovidsuppchbx}
    capture page screenshot

the Customer has submitted a search
    click element    ${searchButton}
    input text    ${searchField}    ${searchtext}
    press keys    None    RETURN

the Customer selects 'Reset'
    wait until page contains element    ${resetbtn}    120

all filters are not applied anymore
    click button    ${resetbtn}