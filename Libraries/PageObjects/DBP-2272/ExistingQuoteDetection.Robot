*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary.Get WebElements
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot

*** Variables ***
${ExisitngUserText}       //*[contains(text(),"Is this you? If not")]
${ExisitngQuotePopUp}       //*[@class="quote-form__popup__content--existing"]
${BackgroundPopUp}       //*[@class="overlay in"]
${QuoteFromBackground}      //*[@class="form-container row mx-0"]
${Color}         rgba(0, 0, 0, 0.5)
${CloseQuotePopUp}   (//button[@class="btn popup__close"]//img)[2]
${SignInBtn}      //*[contains(@data-text,"sign in button click")]

${UsernameInput}        //input[@name="pf.username"]
${PasswordInput}        //input[@name="pf.pass"]
${PasswordForThisUser}           tEST@123
${Username}             uattwo@gmail.com

${signInBtnCommerce}         //*[@id="signon"]
${ProccedToApplicationBtn}        //*[@class="btn btn-lg btn-primary proceed-application_popup_link"]

${ExisitngQuoteUserTxt}         //h1[contains(text(),"Hi")]
${ExisitngQuoteUserApplicationTxt}         //h2[contains(text(),"We see you have an existing application under your profile.")]
*** Keywords ***
is logged in
            Wait Until Keyword Succeeds   1 Min     5 Sec       Element Should Be Visible    ${ExisitngUserText}
            Sleep                           5 Sec
Existing Quote detection modal is displayed
            Wait Until Keyword Succeeds   1 Min     5 Sec       Element Should Be Visible          ${ExisitngQuotePopUp}
background around modal changes to #000000 with opacity applied
                ${elem}    Get Webelement    ${BackgroundPopUp}
                ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
                Log To Console    ${bgColor}
                should be equal    ${bgColor}    ${Color}

the Customer hit the x sign on top-right of the modal
                wait Until Keyword Succeeds   1 Min     5 Sec       Click Element        ${CloseQuotePopUp}
the modal is closed
                Wait Until Keyword Succeeds   1 Min     5 Sec       Element Should Not Be Visible        ${ExisitngQuotePopUp}
background opacity removed
                 ${elem}    Get Webelement   ${QuoteFromBackground}
                ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
                Log To Console    ${bgColor}
                should not be equal    ${bgColor}    ${Color}
the Customer hit the 'Sign In 'button
                wait Until Keyword Succeeds   1 Min     5 Sec       Click Element       ${SignInBtn}

the Customer is redirected to to Application page in core
                Sleep        10Sec
                ${url}=   Get Location
                Should Contain      ${url}          authorization.oauth2
                wait Until Keyword Succeeds   1 Min     5 Sec          input text          ${UsernameInput}        ${Username}
                sleep       2 Sec
                wait Until Keyword Succeeds   1 Min     5 Sec          input text         ${PasswordInput}          ${PasswordForThisUser}
                sleep       10 Sec
                wait Until Keyword Succeeds   1 Min     5 Sec       Click Element           ${signInBtnCommerce}

                Sleep       20Sec
                ${url}=   Get Location
                Should Contain      ${url}          orderconfirmation

following text displays: Hi "Name of the applicant"
                Wait Until Keyword Succeeds   1 Min     5 Sec       Element Should Be Visible    ${ExisitngQuoteUserTxt}
                Wait Until Keyword Succeeds   1 Min     5 Sec       Element Should Be Visible    ${ExisitngQuoteUserApplicationTxt}

the Customer hit the 'Proceed to application 'button
                wait Until Keyword Succeeds   1 Min     5 Sec       Click Element       ${ProccedToApplicationBtn}

the Customer is redirected to to Application page in Community Cloud
                Sleep       20Sec
                ${url}=   Get Location
                Should Contain      ${url}          orderconfirmation