*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary.Get WebElements
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot

*** Variables ***
${ExisitngUserText}       //*[contains(text(),"Is this you? If not")]
${ExisitngUserMessage}     //*[contains(text(),"you’re signed into your account")]
${ExisitngUserMsgTxt}  (//*[@class="container quote-form-sign-in-title mt-5"]//p)[1]
${SignOutLink}       //*[@class="sign-out-link"]

*** Keywords ***
"Is this you? If not Sign out"
            Wait Until Keyword Succeeds   1 Min     5 Sec       Element Should Be Visible    ${ExisitngUserText}

"Hi <Customer First Name> you're signed into your account"
                    [Arguments]         ${LoggedUser}
                    Wait Until Keyword Succeeds   1 Min     5 Sec       Element Should Be Visible    ${ExisitngUserMessage}
                    ${UserName}             get text        ${ExisitngUserMsgTxt}
                    Should Start With      ${UserName}         Hi
                    Should Contain         ${UserName}         ${LoggedUser}
selects "Sign Out"
                 Wait Until Keyword Succeeds   1 Min     5 Sec      Click Element    ${SignOutLink}

reloads the page"
                Sleep       5 Sec
                ${url}=   Get Location
                Should Contain      ${url}          salesforce
it is displayed without the Logged in area
                 Sleep       5 Sec
                 Wait Until Keyword Succeeds   1 Min     5 Sec      Element Should Not Be Visible    ${ExisitngUserText}
                 Wait Until Keyword Succeeds   1 Min     5 Sec      Element Should Not Be Visible    ${SignOutLink}