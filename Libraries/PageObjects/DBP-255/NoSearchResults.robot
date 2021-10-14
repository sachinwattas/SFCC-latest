*** Settings ***
Library    SeleniumLibrary
Library    ../Resource.py

*** Variables ***
${searchbutton}    //div[6]/div/nav/div[2]/div[3]/button
${invalidinput}    asdfgef
${searchInput}    //*[@id="search-input"]
${srchrsltsImg}    //*[@id="maincontent"]/div[2]/div/p/img
${searchResultstitle}    //*[@id="maincontent"]/div[2]/div/h6
${resultsdesc}    //*[@id="product-search-results"]/div[1]/div/div/div/div/h3
${expdesc}    No results for your search

*** Keywords ***
Site Manager has set the title, image and advices
    wait until page contains element    ${searchbutton}    150
    element should be visible    ${searchbutton}

the Customer types a keyword that does not relevant, for example: asdafdasdasf on the search header
    click element    ${searchbutton}
    input text    ${searchInput}    ${invalidinput}
    sleep    2s
    capture page screenshot

hit the enter
    press keys    ${searchInput}    RETURN

the No results found message appended with search term and Search advice message are displayed
    wait until page contains element    ${resultsdesc}    120
    page should contain element    ${resultsdesc}
    capture page screenshot

the title, image and advices are displayed
    page should contain element    ${srchrsltsImg}
