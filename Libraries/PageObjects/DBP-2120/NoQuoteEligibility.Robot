*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot
*** Variables ***
#Lending solution page
${QuoteFormPopupContainer}      //*[@class="quote-form__popup container"]//h2[contains(text(),"LOAN QUOTE RESULTS")]
${DoIQualifyLocator}            (//*[@class='overlay in'])[2]
${LoanTextTitle}                (//*[@class="quote-form__popup container"]//h2[contains(text(),"LOAN QUOTE RESULTS")])[2]
${SubTitleLoanText}             (//*[@class="quote-form__popup container"]//p[contains(text(),"Unfortunately, You do not qualify for this product!")])[2]
${DoNotQualifyImage}             (//*[@class="quote-form__popup container"]//img[contains(@alt,"Unfortunately, You do not qualify for this product!")])[2]
${DoNotQualifyCloseButton}                (//*[@class="quote-form__popup container"]//*[contains(text(),"Close")])[2]
${DoNotQualifyCloseIcon}          (//*[@class="overlay in"]//button[@class='btn popup__close'])[2]
# QuoteForm URL

*** Keywords ***

No Quote result modal is displayed
            Sleep                           60s

            Element Should Be Visible      ${QuoteFormPopupContainer}

background around modal changes to #000000 with opacity applied
             ${bgcolor}    Execute Javascript    return     document.defaultView.getComputedStyle(document.getElementsByClassName("overlay in")[1],null)['background-color']
            # ${bgcolor}     Call Method    ${DoIQualifyLocator}    value_of_css_property    background-color
             log to console   ${bgcolor}
            # element should be disabled       ${SubmitButonLocator}
Title: Loan Quote Result
             Element Should Be Visible         ${LoanTextTitle}

Subtitle: Unfortunately, You do not qualify for this product!
            Element Should Be Visible   ${SubTitleLoanText}

Icon Image is displayed
            Element Should Be Visible     ${DoNotQualifyImage}
the Close button is displayed
            Element Should Be Visible     ${DoNotQualifyCloseButton}
the Customer hit the x sign on top-right of the modal
#               Execute JavaScript  document.evaluate("${DoNotQualifyCloseButton}}", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
                double click element               ${DoNotQualifyCloseIcon}
 #              Execute JavaScript    document.getElementById("element-id").onclick()


No Quote result modal is closed
               sleep                           10s
               element should not be visible    ${QuoteFormPopupContainer}
the Customer hit the 'CLOSE' button
                  double click element            ${DoNotQualifyCloseButton}

the Customer is tapping on an area surrounding the modal
                double click element   ${QuoteFormPopupContainer}