*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary.Get WebElements
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot
*** Variables ***
${PopUp}       //*[@class="quote-form__popup container position-relative pt-md-2"]
${ExisitngQuoteTxt}      //*[contains(text(),"We see you have an existing application under your profile")]
${UserMsgTxt}           (//*[@class="quote-form__popup__content--existing"]//h1)[1]

*** Keywords ***
redirect to sign up page
                Sleep        10Sec
                ${url}=   Get Location
                Should Contain      ${url}          authorization.oauth2
the Customer hit the area surrounding of the modal
                 Wait Until Keyword Succeeds    1 Min           5 Sec           Click Element       ${PopUp}

following text displays: Hi <Name of the applicant>
                [Arguments]         ${User}
                    Wait Until Keyword Succeeds   1 Min     5 Sec       Element Should Be Visible    ${ExisitngQuoteTxt}
                    ${UserName}             get text        ${UserMsgTxt}
                    Should Start With      ${UserName}         Hi
                    Should Contain         ${UserName}         ${User}
