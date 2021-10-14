*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary.Get WebElements
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot

*** Variables ***
${guidedSellingPage}              /guided-selling
${producttile1}                   //body[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]
${product1FeatureBadge}           //body[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]
${product1Img}                    //body[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/img[1]
${product1Name}                   //body[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/h4[1]
${product1Description}            //body[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/p[1]
${product1Criteria1Label1}        (//*[contains (@class,"guided-product-tile position-relative")]//*[@class="price__currency"])[1]
${product1Criteria1Label2}        (//*[contains (@class,"guided-product-tile position-relative")]//*[@class="price__value"])[1]
${product1Criteria1Description}   (//*[contains (@class,"guided-product-tile position-relative")]//*[@class="price__type"])[1]
${product1Criteria2Label1}        (//*[contains (@class,"guided-product-tile position-relative")]//*[@class="price__currency"])[2]
${product1Criteria2Label2}        (//*[contains (@class,"guided-product-tile position-relative")]//*[@class="price__value"])[2]
${product1Criteria2Description}   (//*[contains (@class,"guided-product-tile position-relative")]//*[@class="price__type"])[2]
${product1Criteria3Label1}        (//*[contains (@class,"guided-product-tile position-relative")]//*[@class="price__currency"])[3]
${product1Criteria3Label2}        (//*[contains (@class,"guided-product-tile position-relative")]//*[@class="price__value"])[3]
${product1Criteria3Description}   (//*[contains (@class,"guided-product-tile position-relative")]//*[@class="price__type"])[3]
#${product1Criteria4Label1}        //body[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[4]/div[1]/div[1]
${product1Criteria4Label2}          (//*[contains (@class,"guided-product-tile position-relative")]//*[@class="d-flex"])[4]
${product1Criteria4Description}    (//*[contains (@class,"guided-product-tile position-relative")]//*[@class="price__type"])[4]
${product1DoIQualifyButton}         (//a[contains(@data-text,"Do I qualify")])[1]
${product1TellMeMoreButton}    (//a[contains(@data-text,"Tell me more button")])[1]
${product1DoIQualifyButtonBgColor}  rgba(0, 105, 196, 1)
${product1TellMeMoreButtonBgColor}  rgba(0, 137, 255, 1)
${quotePage}    /quote?pid=
${productDetailPage}    /southafrica/personal/products-and-services/

${ProductTiles}       //*[contains (@class,"guided-product-tile position-relative")]
${productName}        //*[contains (@class,"guided-product-tile position-relative")]//h4
${productImage}        //*[contains (@class,"guided-product-tile position-relative")]//img
${productDescription}      //*[contains (@class,"guided-product-tile position-relative")]//*[@class="mb-auto"]

*** Keywords ***
the Customer displays the Product Tile
    Wait Until Keyword Succeeds  1 Min      5 Sec   Element Should Be Visible     ${ProductTiles}
#    Select From List By Index    ${ProductTiles}     5
##    Location Should Be    ${guidedSellingPage}
#    ${url}    get location
#    Should Be True      '${guidedSellingPage}' in '${url}'
#    Mouse Over    ${producttile1}
#    Element Should Be Visible    ${producttile1}
#    Element Should Be Visible    ${product1FeatureBadge}
Product Image is displayed
    Element Should Be Visible    ${productImage}
    FOR   ${index}    IN RANGE   1    5
          ${value}=     get text    (${productImage})[${index}]
          ${getSrcAtrribute}=      Get Element Attribute     (${productImage})[${index}]         attribute=src
          ${Name}   convert to string    ${getSrcAtrribute}
          Run Keyword And Continue On Failure  Should Contain Any      ${Name}      .jpg    .png
     END
the Product Name is displayed
     Element Should Be Visible    ${productName}
     FOR   ${index}    IN RANGE   1    5
          ${value}=     get text    (${productName})[${index}]
          ${Name}   convert to string    ${value}
           Should Not Be Empty  ${Name}
           Log To Console   ${Name}
     END

Product Description is displayed
    Element Should Be Visible    ${productDescription}
     FOR   ${index}    IN RANGE   1    5
          ${value}=     get text    (${productDescription})[${index}]
          ${Name}   convert to string    ${value}
           Should Not Be Empty  ${Name}
           Log To Console   ${Name}
     END
the 3 attributes for Featured Attribute 1 are displayed
    Element Should Be Visible       ${product1Criteria1Label1}
    ${value}=     get text          ${product1Criteria1Label1}
    Should Be Equal                 ${value}        R
    Element Should Be Visible       ${product1Criteria1Label2}
    Should Not Be Empty             Get Text     ${product1Criteria1Label2}
    Element Should Be Visible       ${product1Criteria1Description}
    Should Not Be Empty             Get Text         ${product1Criteria1Description}

the 3 attributes for Featured Attribute 2 are displayed
    Element Should Be Visible        ${product1Criteria2Label1}
     ${value}=     get text          ${product1Criteria2Label1}
    Should Be Equal                  ${value}        R
    Element Should Be Visible    ${product1Criteria2Label2}
      Should Not Be Empty             Get Text     ${product1Criteria2Label2}
    Element Should Be Visible    ${product1Criteria2Description}
     Should Not Be Empty             Get Text        ${product1Criteria2Description}
the 3 attributes for Featured Attribute 3 are displayed
    Element Should Be Visible       ${product1Criteria3Label1}
    ${value}=     get text          ${product1Criteria3Label1}
    Should Be Equal                  ${value}        R
    Element Should Be Visible    ${product1Criteria3Label2}
     Should Not Be Empty             Get Text     ${product1Criteria3Label2}
    Element Should Be Visible    ${product1Criteria3Description}
    Should Not Be Empty             Get Text        ${product1Criteria3Description}
the 3 attributes for Featured Attribute 4 are displayed

    Element Should Be Visible    ${product1Criteria4Label2}
    Should Not Be Empty             Get Text     ${product1Criteria4Label2}
    Element Should Be Visible    ${product1Criteria4Description}
     Should Not Be Empty             Get Text        ${product1Criteria4Description}
the Secondary button is displayed with imported text from Product Index
    Element Should Be Visible    ${product1DoIQualifyButton}

the Tell me more button is displayed with "Tell me more"
    Element Should Be Visible    ${product1TellMeMoreButton}

the Customer selects the button
    [Arguments]    ${button}
    Click Element    ${button}

the page behind the set URL is opened in the same tab
    [Arguments]    ${page}
    Sleep       5 Sec
    ${url}    get location
    Wait Until Keyword Succeeds  1 Min      5 Sec   Should Be True      '${page}' in '${url}'
    Go Back
    ${url}    get location
    Should Be True      '${guidedSellingPage}' in '${url}'

the Customer hovers the Secondary/ Tell me more Button
    [Arguments]    ${button}
    scroll element into view    ${button}
    Mouse Over    ${button}

Secondary/ Tell me more Button should highlight background color
    [Arguments]    ${color}     ${button}
    ${elem}    Get Webelement    ${button}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    Log     ${bgColor}
    capture element screenshot  ${button}
    Run Keyword And Continue On Failure    should be equal    ${bgColor}    ${color}

#    Repeat Keyword    8 times    wait until keyword succeeds    2x    200ms    ClickNext

ClickNext

    Click Element    //*[@id="product-search-results"]/div[2]/div/div[2]/div[2]/div[3]/div[4]

   Repeat Keyword    8 times    wait until element contains    ${path}  ${text}        | FOR | ${var}               | IN                     | @{VALUES} |
    Continue For Loop If  '${var}' == 'CONTINUE'
    Click Element  //*[@id="product-search-results"]/div[2]/div/div[2]/div[2]/div[3]/div[4]                |

