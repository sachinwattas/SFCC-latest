*** Settings ***
Library    SeleniumLibrary
Library    ../Libraries/PageObjects/Resource.py
#Library    ExtendedRequestsLibrary
#Library    AppiumLibrary
Library  SeleniumLibrary
*** Variables ***
${MainPageLocation1}  https://krishnateja.rasappajayanna%40standardbank.co.za:${password}@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/
${MainPageLocation2}  https://krishnateja%2Erasappajayanna%40standardbank%2Eco%2Eza:${password}@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/
${MainPageLocation3}  https://storefront:coza2020@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/
${PersonalPageLocation1}  https://krishnateja.rasappajayanna%40standardbank.co.za:${password}@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/on/demandware.store/Sites-SB-COZA-Site/default/Search-Show?cgid=personal
${PersonalPageLocation2}  https://storefront:coza2020@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/southafrica/personal
${PersonalPageLocation3}  https://bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/southafrica/personal
${PersonalPageLocation4}    https://uat.standardbank.co.za/southafrica/personal/home

${urlLink}  https://krishnateja.rasappajayanna%40standardbank.co.za:coza2020@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com

#${userId}   krishnateja.rasappajayanna@standardbank.co.za
#${password}    Krish123
${userId}   storefront
${password}    coza2020

${Browser}  chrome
${Env}      UAT
&{customerUrl}  DEV=https://dev.standardbank.co.za       UATQuote=https://uat.standardbank.co.za/commerce/guided-selling        DEMO=https://${userId}:${password}@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/southafrica/personal/home    UAT=https://uat.standardbank.co.za/southafrica/personal/home     PROD=https://www.standardbank.co.za  QuoteUrl=https://${userId}:${password}@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/commerce/guided-selling

${QuoteFormURL}  UATQuote
&{customerUrl}   DemoQuote=https://bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/commerce/guided-selling/quote     UATQuote=https://uat.standardbank.co.za/commerce/guided-selling


${UrlEnv}  ${customerUrl.${Env}}

# HandleConsentPopUp
${ConsentYesButton}  //*[@id="consent-tracking"]/div/div/div[3]/div/button[1]

*** Keywords ***
Starting Session with Desktop Browser
    #Append To Environment Variable  PATH   C:\\Users\sachin.w\\PycharmProjects\\SFCC-master\S\FCC-master\\chromedriver.exe
   # Create Webdriver     Chrome     PATH    chromedriver.exe
#    Create Webdriver    Chrome    executable_path=C:\Users\sachin.w\PycharmProjects\SFCC-master\SFCC-master\chromedriver
#    Go To    ${customerUrl.${Env}}
    open browser    ${customerUrl.${Env}}   ${Browser}
    Set Window Size     ${1280}     ${1024}
    MAXIMIZE BROWSER WINDOW
    HandleConsentYes
Ending Session by Closing the Desktop Browser
    close browser

the Customer has opened the Quote page
        GO TO                           ${customerUrl.${QuoteFormURL}}

Starting session with Andriod Chrome Browser
#Start Process  /usr/local/bin/appium  -p  ${port}  shell=True  alias=appiumserver  stdout=${CURDIR}/appium_stdout.txt  stderr=${CURDIR}/appium_stderr.txt
#Process Should Be Running  appiumserver
#Sleep  10s

#    reset application
    Open Application  ${remote_url}  platformName=${platformName}  platformVersion=${platformVersion}  deviceName=${deviceName}  browserName=${browserName}  automationName=${automationName}
#    Open Application  http://localhost:4723/wd/hub   platformName=Android   platformVersion=9.0    deviceName='Pixel_3a_API_28'   browserName=Chrome  automationName=UIAutomator2
    Go To URL  http://www.Standardbank.co.za

Ending session by closing the Andriod Chrome Browser
    Close Application
#Terminate Process  appiumserver  kill=True

#Common Keywords
HandleConsentYes
    #${AlertMsg}=  handle alert
    #click alert  YES
#    ${consentExist}=    run keyword and return status    element should be visible    ${ConsentYesButton}
#    Register Keyword To Run On Failure
#    run keyword if  ${consentExist}    SelectConsent

    ${TestObj}=    Register Keyword To Run On Failure    Logmsg
    ${status}    ${error}    Run Keyword And Ignore Error    element should be visible    ${ConsentYesButton}
    Register Keyword To Run On Failure    ${TestObj}
    Run Keyword If    '${status}'=='PASS'    SelectConsent

logmsg
    log to console    "step complete"

SelectConsent
    click Button  ${ConsentYesButton}


OthSession
    ${var} =	Create Client OAuth2 Session	label	https://uat.standardbank.co.za	key	secret
