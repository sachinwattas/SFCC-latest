
*** Settings ***
Documentation   	Test suite created with Cross browser testing
Library   	SeleniumLibrary   15.0   5.0
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown  CommonRepo.Ending Session by Closing the Desktop Browser
Test Template  Cross Browser Run


*** Variables ***

***Variables***
${JIRA_PROJECT}     https://aws-tools.standardbank.co.za/jira/
${JIRA_PROJECT_ID}  DBP
${JIRA_ASSIGNEE}    currentUser()
${JIRA_ISSUE_TYPE}  Test Scenario

#${Env}  DEMO
&{url}  DEMO=https://bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/on/demandware.store/Sites-SB-COZA-Site    UAT=http://standardbank.co.za   PROD=http://standardbank.co.za
#${UrlEnv}  ${url.${Env}}
#${BROWSER}  chrome
${Link}  https://bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/on/demandware.store/Sites-SB-COZA-Site

*** Test Cases ***

Home page check in chrome   ${Link}  chrome
    [documentation]   SBSA Home page and Static header Check
    [tags]  Sprint1  UserStory:DBP-287
Home page check in firefox  ${Link}  ff
    [documentation]   SBSA Home page and Static header Check
    [tags]  Sprint1  UserStory:DBP-281
Home page check in opera    ${Link}  opera
    [documentation]   SBSA Home page and Static header Check
    [tags]  Sprint1  UserStory:DBP-282
Home page check in safari   ${Link}  safari
    [documentation]   SBSA Home page and Static header Check
    [tags]  Sprint1  UserStory:DBP-284
*** Keywords ***
Cross Browser Run
    [arguments]  ${Url}  ${Browser}
    open browser  ${Url}  ${Browser}
    MAXIMIZE BROWSER WINDOW
    HandleConsent
    PageContainCheck
    ClickElementCheck
HandleConsent
    #${AlertMsg}=  handle alert
    #click alert  YES
    click Button  //*[@id="consent-tracking"]/div/div/div[3]/div/button[1]

PageContainCheck

	Page Should Contain   	icon-close
	Page Should Contain   	Created with Sketch.
	Page Should Contain   	We use cookies to make your experience with us better. By continuing to use our website without changing the\n\ \ \ \ \ \ \ \ \ \ \ \ settings, you are agreeing to our use of cookies. To find out more see our
	Page Should Contain   	privacy statement

ClickElementCheck
   	Click Element   	xpath:(.//div[contains(normalize-space(.), 'icon-close Created with Sketch. We use cookies to make your experience with us better. By continuing')])[3]
	Click Element   	xpath:.//body
	Click Element   	alertBanner
	Go Back
    Reload Page
    run keyword and continue on failure  Click Element   	xpath:(.//div[contains(normalize-space(.), 'Personal Products and Services Shop Standard bank devices Standard bank mobile UCount Rewards Retail')])[2]
	Go Back
    Reload Page
#    wait until page contains element   xpath:(.//div[contains(normalize-space(.), 'Fraud line South Africa 0800 020 600 International +27 10 249 0100 Get in Touch South Africa 0860 12')])[3]
#	run keyword and continue on failure  Click Element   	xpath:(.//div[contains(normalize-space(.), 'Fraud line South Africa 0800 020 600 International +27 10 249 0100 Get in Touch South Africa 0860 12')])[3]
	Go Back
    Reload Page
	wait until page contains element   xpath:(.//div[contains(normalize-space(.), 'Standard Bank App')])[2]
	run keyword and continue on failure  Click Element   	xpath:(.//div[contains(normalize-space(.), 'Standard Bank App')])[2]
	Go Back
    Reload Page
    wait until page contains element  xpath:(.//div[contains(normalize-space(.), 'Security Centre Regulatory Legal Terms&Conditions Standard Bank is a licensed financial services pro')])[2]
	Click Element   	xpath:(.//div[contains(normalize-space(.), 'Security Centre Regulatory Legal Terms&Conditions Standard Bank is a licensed financial services pro')])[2]

