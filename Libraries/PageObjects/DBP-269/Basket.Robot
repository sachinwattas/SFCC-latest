*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***
#Lending solution page
${BasketcheckoutHeader}       //h1//span[text()="Checkout"]
${ProductPanelHeader}   (//h2[contains(@class,"cart-title") and text()="your selection"])[1]
${ProductName}   (//*[contains(@class,"card product-info")]//*[@class="line-item-name"])[1]
${InsuranceName}   (//*[contains(@class,"card product-info")]//*[@class="line-item-name"])[2]
${ProductDescription}       (//*[contains(@class,"card product-info")]//*[@class="item-description"])[1]
${InsuranceDescription}       (//*[contains(@class,"card product-info")]//*[@class="item-description"])[2]
${OrderSummary}       (//h2[text()="Order Summary"])[1]
${TotalItems}         (//*[@class="total-caption"])[1]//*[@class="total-caption__items"]
${ProceedToApplicationButton}       (//*[@data-text="proceed to application button click"])[1]
${RemovedProductIcon}            (//*[contains(@class,"card product-info")]//*[contains(@data-text,"remove icon click")])[2]
${RemoveInsranceIcon}       (//*[contains(@class,"card product-info")]//*[contains(@data-text,"remove icon click")])[4]
${RemoveConfirmationBtn}       //*[@class="btn btn-primary cart-delete-confirmation-btn"]
*** Keywords ***
the Customer opens the Basket
    Wait Until Keyword Succeeds     1 Min       5 sec       Element Should Be Visible        ${BasketcheckoutHeader}

the Product Panel is displayed with the Product Name, Product Description
        Element Should Be Visible        ${ProductPanelHeader}
        Element Should Be Visible        ${ProductName}
        ${Product}          Get Text        ${ProductName}
        Should Contain       ${Product}     Revolving Loan
        Element Should Be Visible        ${ProductDescription}
        ${Description}          Get Text        ${ProductDescription}
        Should Contain      ${Description}      Revolving Loan

the Product Panel for the Insurance is displayed with the Product Name, Product Description

        Element Should Be Visible       ${InsuranceName}
        ${Product}          Get Text        ${InsuranceName}
        Should Contain       ${Product}     Protection Plan
        Element Should Be Visible       ${InsuranceDescription}
         ${Description}          Get Text       ${InsuranceDescription}
        Should Contain      ${Description}       protection plan


the Order Summary is displayed with totals and the Proceed button
        [Arguments]    ${Item}
        Element Should Be Visible       ${OrderSummary}
        Element Should Be Visible       ${TotalItems}
         ${Items}          Get Text         ${TotalItems}
        Should Contain        ${Items}     ${Item}
        Element Should Be Visible       ${ProceedToApplicationButton}

the Customer selects the 'X' button on the Insurance
            Wait Until Keyword Succeeds     1 Min       5 sec    click element       ${RemoveInsranceIcon}
            Wait Until Keyword Succeeds     1 Min       5 sec    click element  ${RemoveConfirmationBtn}

the Product is removed from Basket
            Wait Until Keyword Succeeds     1 Min       5 sec  Element Should Not Be Visible       ${ProductName}
            Element Should Not Be Visible      ${ProductDescription}
the Insurance is removed from Basket
             Wait Until Keyword Succeeds     1 Min       5 sec  Element Should Not Be Visible       ${InsuranceName}
             Element Should Not Be Visible       ${InsuranceDescription}

the Customer selects the 'X' button on the Product
             Wait Until Keyword Succeeds     1 Min       5 sec    click element      ${RemovedProductIcon}
            Wait Until Keyword Succeeds     1 Min       5 sec    click element  ${RemoveConfirmationBtn}
the Customer selects the 'Proceed' button
                Wait Until Keyword Succeeds     1 Min       5 sec    click element  ${ProceedToApplicationButton}

the user is taken to the PING authentication page
             Sleep        5Sec
             ${url}=   Get Location
             Should Contain      ${url}          authorization.oauth2