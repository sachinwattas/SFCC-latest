*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary.Get WebElements
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot

*** Variables ***
#Lending solution page
${RevolvingLoanContinueButton}       //*[text()="Revolving Loan"]/../..//*[contains(text(),"Continue")]
${RevolvingLoanAddToCartButton}      //*[text()="Revolving Loan"]/../..//*[contains(text(),"Add to Cart")]
${MiniCartLink}         //*[@class="minicart-link"]
${HeaderMenu}             //*[@class="navbar-collapse justify-content-end"]

${AddToCartButton}     //*[@class="btn btn-primary btn-block"]

*** Keywords ***
the Customer selects the 'continue' button
                wait until keyword succeeds     5      5s      click element   ${RevolvingLoanContinueButton}
the Customer selects the 'Add To Cart' button
                wait until keyword succeeds     5      5s      click element   ${RevolvingLoanAddToCartButton}
one product was added to the basket

                 sleep                           5
                wait until element is visible  ${AddToCartButton}
                wait until keyword succeeds     5      5s      click element   ${AddToCartButton}


the customer displays the header
                wait until element is visible           ${HeaderMenu}
                element should be visible               ${HeaderMenu}

the Minibasket icon is displayed
                sleep                               5s
                wait until element is visible       ${MiniCartLink}
                element should be visible           ${MiniCartLink}
the Minibasket icon is not displayed

                element should not be visible           ${MiniCartLink}