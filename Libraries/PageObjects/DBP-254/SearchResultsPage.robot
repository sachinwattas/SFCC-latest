*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***
${SearchBtn}                        //*[@class="btn"]//*[@alt="Search"]
${SearchInputtxt}                    //*[@id="search-input"]
${PlaceholderTxt}               //*[@id="search-input" and @placeholder="What are you searching for?"]
${ResultNotSearchTxt}          //*[contains(text(),"No results for your search")]
${ResultsContainer}           //*[@class="results-container"]
${SeeAllResultLink}                 //*[@data-text="your recent searches | see all results link click"]
${HidShowFilterImg}                 //*[@class="container"]//*[@data-text="closed | hide filter link click"]
${HidShowRefinementsSession}        //*[@class="refinements"]
${ProductGridcontainer}                    //*[@class="product-grid swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events"]
${ProductTileFristRow}                 //*[@class="swiper-wrapper"]
${ProductTileContainer}                 //*[@class="product-tile position-relative p-4"]
${ProductSearch1stTile}                        //*[@class="swiper-wrapper"]//*[@aria-label="1 / 12"]
${ProductSearch2ndTile}                        //*[@class="swiper-wrapper"]//*[@aria-label="2 / 12"]
${ProductSearch3rdTile}                        //*[@class="swiper-wrapper"]//*[@aria-label="3 / 12"]
${ProductSearch4thTile}                        //*[@class="swiper-wrapper"]//*[@aria-label="4 / 12"]
${ProductSearchPagination}        //*[@class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"]

${ProductSearch1stTileOnly}                        //*[@class="swiper-wrapper"]//*[@aria-label="1 / 2"]
${ProductSearch2ndTileOnly}                        //*[@class="swiper-wrapper"]//*[@aria-label="2 / 2"]
${ProductSearch3rdTileOnly}                        //*[@class="swiper-wrapper"]//*[@aria-label="3 / 2"]

${ArticlesAndCalculatorsTile}                        //*[contains(text(),"Articles and calculators")]/..
${SearchResultBanner}                                //h6[contains(text(), "Search results")]

@{SearchSortBanner}                                //*[@id="select2-sort-order-xs-results"]//li
${ProductPaginationNextSlide}                        //*[contains(@class,"product-grid swiper-container")]//*[@aria-label="Next slide"]
${ProductPaginationPreviousSlide}                  //*[contains(@class,"product-grid swiper-container")]//*[@aria-label="Previous slide"]
${ProductPaginationLastSlide}                //*[contains(@class,"product-grid swiper-container")]//*[@class="swiper-button-lastpage"]
${ProductPaginationFirstSlide}              //*[contains(@class,"product-grid swiper-container")]//*[@class="swiper-button-firstpage"]

${AtrticleSearch2ndTileOnly}         (//*[@class="swiper-wrapper content-swiper"]//*[contains(@aria-label,"2 / ")])[1]
${AtrticleSearch6thTileOnly}         (//*[@class="swiper-wrapper content-swiper"]//*[contains(@aria-label,"6 / ")])[1]
${AtrticleSearch7thTileOnly}         (//*[@class="swiper-wrapper content-swiper"]//*[contains(@aria-label,"7 / ")])[1]

${ArticlePaginationNextSlide}                  //*[contains(@class,"content-grid swiper-container-multirow ")]//*[@aria-label="Next slide"]
${ArticlePaginationlastSlide}            //*[contains(@class,"content-grid swiper-container-multirow ")]//*[@class="content-swiper-button-lastpage"]
${ArticlePaginationPreviousSlide}               //*[contains(@class,"content-grid swiper-container-multirow ")]//*[@aria-label="Previous slide"]
${ArticlePaginationFirstSlide}               //*[contains(@class,"content-grid swiper-container-multirow ")]//*[@class="content-swiper-button-firstpage"]

${SortingSearchOptionDropdown}          //*[@class="select2-selection select2-selection--single"]
@{SortingSearchOption}                  //*[contains(@class,"select2-results__options")]//li

*** Keywords ***
the Customer click the icon search
	        Wait Until Keyword Succeeds  1 Min      5 Sec       Page Should Contain Element     ${SearchBtn}
	         Wait Until Keyword Succeeds  1 Min      5 Sec      CLICK ELEMENT                   ${SearchBtn}

Search bar Contains placeholder
            [Arguments]                     ${PlaceholderText}
            ${getAltAtrribute}=             Get Element Attribute           ${SearchInputtxt}        attribute=placeholder
            should contain any              ${getAltAtrribute}              ${PlaceholderText}

On input placeholder disappears
                input text              ${SearchInputtxt}       card
                sleep                      5s
                ${getText}              get text                ${SearchInputtxt}
               # should be equal          ${getText}             card

the Customer put in the 3rd character
            [Arguments]   ${SearchText}
            wait until element is enabled   ${SearchInputtxt}
            input text                      ${SearchInputtxt}       ${SearchText}

On submission returns sends to "Results Page"
               wait until element is visible    ${ResultsContainer}
               element should be visible        ${ResultsContainer}

types keyword in the search tab
            [Arguments]   ${SearchText}
            wait until element is enabled   ${SearchInputtxt}
            input text                      ${SearchInputtxt}       ${SearchText}
            Wait Until Keyword Succeeds  1 Min      5 Sec       wait until element is visible   ${SeeAllResultLink}
            Wait Until Keyword Succeeds  1 Min      5 Sec      click element                   ${SeeAllResultLink}

No Results panel is displayed
            wait until element is visible  ${ResultNotSearchTxt}
            element should be visible  ${ResultNotSearchTxt}


the Hide/Show filter is displayed
#             wait until element is visible      ${HidShowFilterImg}
             Wait Until Keyword Succeeds  1 Min     5 sec   element should be visible       ${HidShowFilterImg}

the customer click Hide/Show icon
            wait until element is visible      ${HidShowFilterImg}
            sleep                               5s
            click element                      ${HidShowFilterImg}


the Search Refinements is displayed on the left side of the page
            wait until element is visible     ${HidShowRefinementsSession}
            page should contain element       ${HidShowRefinementsSession}

the Product Search Results is displayed
            wait until element is visible      ${ProductGridcontainer}
            element should be visible         ${ProductGridcontainer}

the Product Tile is displayed on the first row
            wait until element is visible       ${ProductTileFristRow}
            Wait Until Keyword Succeeds  1 Min      5 Sec   element should be visible           ${ProductTileContainer}


the default number of Products is displayed 3 per page
            wait until element is visible       ${ProductTileFristRow}
            Wait Until Keyword Succeeds  1 Min      5 Sec   element should be visible           ${ProductSearch1stTile}
            element should be visible           ${ProductSearch2ndTile}
            element should be visible           ${ProductSearch3rdTile}
            element should not be visible       ${ProductSearch4thTile}

the number of Products is displayed 2 per page
            wait until element is visible       ${ProductTileFristRow}
            element should be visible           ${ProductSearch1stTile}
            element should be visible           ${ProductSearch2ndTile}
            element should not be visible       ${ProductSearch3rdTile}

the result shown in one page
            Wait Until Keyword Succeeds     1 Min       5 Sec       element should be visible           ${ProductSearch1stTileOnly}
            element should be visible           ${ProductSearch2ndTileOnly}
            element should not be visible       ${ProductSearch3rdTileOnly}

the product pagination is not displayed
            element should not be visible       ${ProductSearchPagination}

the Article Search Result is displayed
            wait until element is visible       ${ArticlesAndCalculatorsTile}
            element should be visible           ${ArticlesAndCalculatorsTile}


the Header Banner in search page is displayed
            sleep                               5s
            wait until element is visible       ${SearchResultBanner}
            element should be visible           ${SearchResultBanner}

the Customer click the right arrow
#             wait until element is visible      ${ProductPaginationNextSlide}
             Wait Until Keyword Succeeds  1 Min     5 sec   click element                      ${ProductPaginationNextSlide}

the next results page on the right should be displayed
            wait until element is visible       ${ProductSearch4thTile}
            element should be visible           ${ProductSearch4thTile}
the customer click the last page
            wait until element is enabled       ${ProductPaginationLastSlide}
            Wait Until Keyword Succeeds     1 Min       5 Sec   click element                       ${ProductPaginationLastSlide}
the right arrow should be hidden
            sleep                               5s
            ${getDisabledAtrribute}=            Get Element Attribute      ${ProductPaginationNextSlide}        attribute=aria-disabled
            should be equal                     ${getDisabledAtrribute}      true
the Customer click the left arrow
            wait until element is enabled       ${ProductPaginationPreviousSlide}
            click element                       ${ProductPaginationPreviousSlide}
the customer click the first page
            wait until element is enabled       ${ProductPaginationFirstSlide}
            click element                       ${ProductPaginationFirstSlide}
the left arrow should be hidden
             sleep                                  5s
             ${getDisabledAtrribute}=               Get Element Attribute      ${ProductPaginationPreviousSlide}       attribute=aria-disabled
             should be equal                        ${getDisabledAtrribute}      true
the number of Article is displayed 6 per page
             Wait Until Keyword Succeeds  1 Min      5 Sec       element should be visible              ${AtrticleSearch6thTileOnly}
             element should not be visible          ${AtrticleSearch7thTileOnly}

the number of Article is displayed 4 per page
             element should be visible              ${AtrticleSearch2ndTileOnly}
             Wait Until Keyword Succeeds    1 Min       5 Sec   element should not be visible          ${AtrticleSearch6thTileOnly}

the Customer click the right arrow Article pagination
#             wait until element is visible          ${ArticlePaginationNextSlide}
             Wait Until Keyword Succeeds   1 Min    5 Sec   click element                          ${ArticlePaginationNextSlide}
the next results page on the right should be displayed Article pagination
              wait until element is visible         ${AtrticleSearch7thTileOnly}
              element should be visible             ${AtrticleSearch7thTileOnly}
the customer click the last page of Article pagination
             wait until element is enabled          ${ArticlePaginationlastSlide}
             click element                          ${ArticlePaginationlastSlide}
the right arrow should be hidden of Article pagination
             sleep                                  5s
             ${getDisabledAtrribute}=               Get Element Attribute      ${ArticlePaginationNextSlide}       attribute=aria-disabled
             should be equal                        ${getDisabledAtrribute}      true
the Customer click the left arrow of Article pagination
             wait until element is enabled          ${ArticlePaginationPreviousSlide}
             click element                          ${ArticlePaginationPreviousSlide}
the customer click the first page of Article pagination
             wait until element is enabled          ${ArticlePaginationFirstSlide}
             click element                          ${ArticlePaginationFirstSlide}
the left arrow should be hidden of Article pagination
             sleep                                   5s
             ${getDisabledAtrribute}=               Get Element Attribute      ${ArticlePaginationPreviousSlide}       attribute=aria-disabled
             should be equal                        ${getDisabledAtrribute}      true

the result shown in one page of Article
            Wait Until Keyword Succeeds  1 Min      5 Sec   element should be visible               ${AtrticleSearch2ndTileOnly}
            element should not be visible          ${AtrticleSearch7thTileOnly}

the article pagination is not displayed
            sleep                                  5s
            element should not be visible          ${ArticlePaginationNextSlide}

the Sorting Options is displayed
            wait until element is visible   ${SortingSearchOptionDropdown}
            Wait Until Keyword Succeeds  1 Min  5 Sec   click element   ${SortingSearchOptionDropdown}
            wait until element is visible  @{SortingSearchOption}
            sleep           5s
            ${count} =      get element count  @{SortingSearchOption}
            should be true  ${count}>0
            Reload Page



