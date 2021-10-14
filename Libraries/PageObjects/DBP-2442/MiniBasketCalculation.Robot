*** Settings ***

Library    SeleniumLibraray
Library    ../Libraries/PageObjects/Resource.py

#Library    Selenium2Library
#Library    ../Resource.py
#Library  Collections
#Library  SeleniumLibrary.Get WebElements
#Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot

*** Variables ***
#Lending solution page
${MiniBasketRevolvingLoanProductName}      //*[@class="product-image" and @title="Revolving Loan"]
${MiniCartLink}                      //*[@class="minicart-link"]
${MiniCartContainer}             //*[@class="container cart"]
${EmptyMiniCartContainer}    //*[@class="container cart empty"]
${MiniCartMenu}        //*[contains(@class,"minicart menu-actions")]
${EmptyContainerHeader}         //*[@class="container cart empty"]//h1

${MiniBasketLoanProtectionPlanName}             //*[@class="product-image" and @title="Loan Protection Plan"]

${BasketRevolvingLoanProductName}     (//*[@class="line-item-name" and contains(text(),"Loan Protection Plan")])[1]
${BasketLoanProtectionPlanName}     (//*[@class="line-item-name" and contains(text(),"Loan Protection Plan")])[1]

${RemoveProductRevolvingLoanIcon}         //*[@aria-label="Remove product Revolving Loan"]

${RemoveProductLoanProtectionIcon}       //*[@aria-label="Remove product Loan Protection Plan"]
${MiniCartCloseIcon}                    //*[@data-text="close button click"]//img
${MiniCartCheckoutIcon}                    //*[@data-text="Checkout button click"]
${MenuIcon}         //*[contains(@class,"second-menu position-relative")]
${RemoveProductIcon}             (//*[@data-target="#removeProductModalRemoved"])[1]
${RemoveProductImage}    (//*[@class="product-image"])[1]
${InsuranceProductImage}       //*[@class="product-line-item insurance-line"]
${ProceedToApplicationBtn}        (//*[@data-text="proceed to application button click"])[1]
${UndoButton}           //button[@data-text="UNDO button click"]
${BackToHomepageButton}               //*[@data-text="Back to homepage button click"]
${MiniCartCheckoutOpenColor}                     rgba(255, 255, 255, 1)
${CheckoutHeader}            //h1//span[text()="Checkout"]
${MiniCartCheckoutCloseColor}                   rgba(0, 0, 0, 0)

${MenuIconColor}                 rgba(4, 51, 161, 1)

${PageColor}           rgb(243, 243, 244,1);


*** Keywords ***
Customer displays the Mini-Basket
                    wait until element is visible       ${MiniCartLink}
                    click element                       ${MiniCartLink}
                    WAIT UNTIL ELEMENT IS VISIBLE       ${MiniCartContainer}
                    element should be visible           ${MiniCartContainer}
the back of the icon background changes to White
                     ${elem}    Get Webelement    ${MiniCartMenu}
                     ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
                     should be equal    ${bgColor}    ${MiniCartCheckoutOpenColor}

the background of the page is defocused
                      Element Should Be Focused    ${MiniCartLink}


Product and Insurance is displayed
                    wait until element is visible       ${MiniBasketRevolvingLoanProductName}
                    element should be visible           ${MiniBasketRevolvingLoanProductName}
                    element should be visible           ${MiniBasketLoanProtectionPlanName}
Product and Insurance is displayed at the Basket
                    wait until element is visible       ${BasketRevolvingLoanProductName}
                    element should be visible          ${BasketRevolvingLoanProductName}
                    element should be visible           ${BasketLoanProtectionPlanName}

the option for each product to remove it from the basket is displayed
                    element should be visible          ${RemoveProductRevolvingLoanIcon}
                    element should be visible          ${RemoveProductLoanProtectionIcon}

a close button is displayed
                    element should be visible           ${MiniCartCloseIcon}
a checkout button is displayed
                    element should be visible              ${MiniCartCheckoutIcon}
the Customer selects the X icon
                    wait until element is visible   ${MiniCartCloseIcon}
                    click element                   ${MiniCartCloseIcon}
the basket modal is not displayed
                    element should not be visible   ${MiniCartContainer}

the back of the icon background changes back to Blue
                ${elem}    Get Webelement    ${MiniCartMenu}
                ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
                Log To Console    ${bgColor}
                should be equal    ${bgColor}    ${MiniCartCheckoutCloseColor}

                ${elem}    Get Webelement    ${MenuIcon}
                ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
                Log To Console    ${bgColor}
                should be equal    ${bgColor}    ${MenuIconColor}

the Customer selects the remove button on the product
                  Wait Until Keyword Succeeds  1 Min    5 Sec   click element      ${RemoveProductIcon}

the product is removed from the basket
                Wait Until Keyword Succeeds   1 Min     5 Sec   element should not be visible    ${RemoveProductImage}

an "Undo" button is displayed
                  Wait Until Keyword Succeeds   1 Min     5 Sec   element should be visible   ${UndoButton}
the related Insurance is removed
                Wait Until Keyword Succeeds  1MIn           5Sec  element should not be visible  ${InsuranceProductImage}

the Customer selects the undo button
                Wait Until Keyword Succeeds   1 Min     5 Sec   click element    ${UndoButton}

the product is restored in the basket
                 Wait Until Keyword Succeeds   1 Min     5 Sec   element should be visible    ${RemoveProductImage}
the product with its related insurance is restored in the basket
                 Wait Until Keyword Succeeds   1 Min     5 Sec   element should be visible    ${RemoveProductImage}
                 Wait Until Keyword Succeeds  1MIn       5Sec  element should be visible    ${InsuranceProductImage}
the Customer displays the Minibasket
                Wait Until Keyword Succeeds   1 Min     5 Sec   click element                   ${MiniCartCloseIcon}
                Sleep           5 Sec
                Wait Until Keyword Succeeds   1 Min     5 Sec   click element                  ${MiniCartLink}
the basket modal is displayed
                Wait Until Keyword Succeeds   1 Min     5 Sec   element should be visible           ${EmptyMiniCartContainer}
the "Your cart is empty" message is displayed
                sleep       5 Sec
                ${text}                get text        ${EmptyContainerHeader}
                should be equal          ${text}           Your cart is empty
a "Back to Homepage" button is displayed
                element should be visible           ${BackToHomepageButton}
the Customer selects the "Back to Homepage" button
                Wait Until Keyword Succeeds   1 Min     5 Sec   click element                  ${BackToHomepageButton}
                Sleep           5 Sec

the Homepage is opened
                ${url}=   Get Location
                Should Contain      ${url}          home

the Customer selects the "Checkout" button
                 Wait Until Keyword Succeeds   1 Min     5 Sec   click element      ${MiniCartCheckoutIcon}

Then the Check out process starts
                   Wait Until Keyword Succeeds   1 Min     5 Sec      element should be visible      ${ProceedToApplicationBtn}
                   Wait Until Keyword Succeeds   1 Min     5 Sec      click element      ${ProceedToApplicationBtn}
                   Sleep        5Sec
                   ${url}=   Get Location
                   Should Contain      ${url}          authorization.oauth2