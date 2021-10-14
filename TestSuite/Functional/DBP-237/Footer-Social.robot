*** Settings ***
Documentation   	Feature:Footer

Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource   ../../../Libraries/PageObjects/DBP-237-Footer/Footer.robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***



*** Test Cases ***

Customer views Social link options
    [Documentation]  Customer Views "Social"
    [Tags]  Scenario_DBP-581  UserStory_DBP-237
    Given Customer navigte to footer section of the home page
    When the Customer displays the "Social" part
    Then the link to Facebook ("https://www.facebook.com/StandardBankSA") is displayed
    And the link to Twitter ("https://twitter.com/standardbankza") is displayed
    And the link to LinkedIn ("https://www.linkedin.com/company/standard-bank-south-africa/") is displayed
    And the link to Youtube ("https://www.youtube.com/channel/UC_oz5no5MIucu45I4PO9nCQ") is displayed

*** Keywords ***

Customer navigte to footer section of the home page
    HandleConsentYes
    mouse over  ${SocialLocation}

the Customer displays the "Social" part
    run keyword and continue on failure  Verify Scocial Links

Verify Scocial Links
	Element Should Be Visible   	${FacebookPath}
	Element Should Be Visible   	${TwitterPath}
	Element Should Be Visible   	${LinkedinPath}
	Element Should Be Visible   	${YoutubePath}


the link to Facebook ("https://www.facebook.com/StandardBankSA") is displayed
	Page Should Contain Link   	${FacebookTxt}
	${EleAttr}=  get element attribute  ${FacebookPath}  href
    log  ${EleAttr}
    evaluate  '${EleAttr}' == '${FacebookTxt}'
#	element attribute should match  ${FacebookPath}  href  ${FacebookTxt}

the link to Twitter ("https://twitter.com/standardbankza") is displayed
	Page Should Contain Link   	${TwitterTxt}
	${EleAttr}=  get element attribute  ${TwitterPath}  href
    log  ${EleAttr}
    evaluate  '${EleAttr}' == '${TwitterTxt}'

the link to LinkedIn ("https://www.linkedin.com/company/standard-bank-south-africa/") is displayed
	Page Should Contain Link   	${LinkedinTxt}
	${EleAttr}=  get element attribute  ${LinkedinPath}  href
    log  ${EleAttr}
    evaluate  '${EleAttr}' == '${LinkedinTxt}'

the link to Youtube ("https://www.youtube.com/channel/UC_oz5no5MIucu45I4PO9nCQ") is displayed
	Page Should Contain Link   	${Youtubetxt}
	${EleAttr}=  get element attribute  ${YoutubePath}  href
    log  ${EleAttr}
    evaluate  '${EleAttr}' == '${Youtubetxt}'


