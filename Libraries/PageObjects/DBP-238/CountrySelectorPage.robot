*** Settings ***
Library  SeleniumLibrary

Resource    ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***
${GetUrlLocation}   None
${Browser}  Chrome
${Env}  DEV
&{url}  DEV=https://storefront:coza2020@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/southafrica/personal    DEMO=https://krishnateja.rasappajayanna@standardbank.co.za:Krish123@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/southafrica/personal   UAT=uat.standardbank.co.za   PROD=http://standardbank.co.za
${UrlEnv}   ${url.${Env}}
${Link}  https://bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/southafrica/personal
${ConsentYesButton}  //*[@id="consent-tracking"]/div/div/div[3]/div/button[1]
${angolaLocator}                     link=Angola
${botswanaLocator}                   link=Botswana
${congoLocator}                      link=Congo
${cotedIvoireLocator}                link=Côte d’Ivoire
${ghanaLocator}                      link=Ghana
${kenyaLocator}                      link=Kenya
${lesothoLocator}                    link=Lesotho
${malawiLocator}                     link=Malawi
${mauritiusLocator}                  link=Mauritius
${mozambiqueLocator}                 link=Mozambique
${namibiaLocator}                    link=Namibia
${nigeriaLocator}                    link=Nigeria
${southAfricaLocator}                //a[@class='country-selector__section-country']//span[contains(text(),'South Africa')]
${swazilandLocator}                  link=Swaziland
${tanzaniaLocator}                   link=Tanzania
${ugandaLocator}                     link=Uganda
${zambiaLocator}                     link=Zambia
${zimbabweLocator}                   link=Zimbabwe

${isleofManLocator}                  link=Isle of Man
${jerseyLocator}                     link=Jersey
${unitedKingdomLocator}              link=United Kingdom
${unitedArabEmiratesLocator}         link=United Arab Emirates
${unitedStatesLocator}               link=United States
${chinaLocator}                      link=China
${brazilLocator}                     link=Brazil


${CountrySelector}                  //div[2]/li/a/span
${Country}  Angola
#&{CountryLocator}  Angolo=${angolaLocator}  Ghana=${ghanaLocator}  Botswana=${botswanaLocator}
#${LocatorCountry}  ${CountryLocator.${Country}}
&{CountrySite}     Angola=https://www.standardbank.co.ao/  Ghana=https://www.stanbicbank.com.gh/  Botswana=https://www.stanbicbank.co.bw/  IsleOfMan=https://international.standardbank.com/international/personal  Jersey=https://international.standardbank.com/international/personal  China=https://corporateandinvestment.standardbank.com//cib/global/country-presence/asia/china  Brazil=https://corporateandinvestment.standardbank.com/cib/global/country-presence/americas/brazil
${CountryLocatorSite}  ${CountrySite.${Country}}
${DefaultCountry}  South Africa
${ChooseCountryLocator}  //div[5]/div/div/div[1]
${ChooseCountryText}  Choose your country or region
#${CloseCountryLocator}  css=body > wainclude > div.page > header > div.country-selector-container > div > div > span > i > svg
${CloseCountryLocator}  css=i[data-icon='icon-close'] > [width='22px']
${SearchResultCountry}  //html/body/div[1]/header/div[5]/div/div/div[3]/div

${SearchResultCountry1}  //span[normalize-space()='${Country}']
#Search Variables
${InputCountryLocator}  //input[@placeholder='Start typing the country name here']
@{CountryList}  Angola  Ghana  Botswana

*** Keywords ***
Cross Browser Country Selection Run
    [Arguments]  ${Envs}  ${Browsers}  ${Paths}  ${Sites}  ${Countries}
    set global variable  ${Env}  ${Envs}
    set global variable  ${Browser}  ${Browsers}
    set global variable  ${Path}  ${Paths}
    set global variable  ${Site}  ${Sites}
    set global variable  ${Country}  ${Countries}
#    open browser    ${UrlEnv}  ${Browser}
#    maximize browser window
    HandleConsentYes
    Click Country
    Select country from country selector page
    Exit from Country Selector
#    close browser



Click Country
    [Documentation]  Click on the Country Selection to access Country selction page
    element text should be  ${CountrySelector}  ${DefaultCountry}
    Click Element  ${CountrySelector}
#    run keyword and continue on failure  element text should be  //div[1]/header/div[5]/div/div/div[1]  Choose your country or region
    wait until element contains  ${ChooseCountryLocator}  ${ChooseCountryText}  10
    run keyword and continue on failure  element should contain  ${ChooseCountryLocator}  ${ChooseCountryText}
 #   run keyword and continue on failure  element value should contain  //div[1]/header/div[5]/div/div/div[1]  Choose your country or region


Select country from country selector page
#    set global variable  ${Country}  ${Countries}
    log  ${Path}
    click element  ${Path}
    log  ${Site}
#    sleep  10
    select window  NEW
    wait until page contains  ${Country}
    location should be  ${Site}

Exit from Country Selector
    select window  MAIN
    Click Element  ${CloseCountryLocator}
#    wait until page contains  South Africa
    ${GetUrlLocation} =  get location
    log  ${GetUrlLocation}
    run keyword and continue on failure  Should Be True  '${GetUrlLocation}'=='${MainPageLocation1}' or '${GetUrlLocation}'=='${MainPageLocation2}' or '${GetUrlLocation}'=='${PersonalPageLocation2}' or '${GetUrlLocation}'=='${PersonalPageLocation1}'


#    Run Keyword If  ('$(GetLocation} == ${MainPageLocation1}')    Log To Console    Page Found
#        ...    ELSE IF  ('$(GetLocation} == ${MainPageLocation2}')    Log To Console     Page Found
#        ...    ELSE                             Log To Console    No pages found.
#    close window

#    run keyword if   '${GetUrlLocation}'=='${MainPageLocation1}'
#    ...    log  Page found
#    ...    ELSE IF   '${GetUrlLocation}'=='${MainPageLocation1}'
#    ...

Cross Browser Country Search Run
    [Arguments]  ${Envs}  ${Browsers}  ${Paths}  ${Sites}  ${Countries}
    set global variable  ${Env}  ${Envs}
    set global variable  ${Browser}  ${Browsers}
    set global variable  ${Path}  ${Paths}
    set global variable  ${Site}  ${Sites}
    set global variable  ${Country}  ${Countries}
#    open browser    ${UrlEnv}  ${Browser}
#    maximize browser window
    HandleConsentYes
    Click Country
    Search country from country selector page
    Exit from Country Selector
#    close browser

Search country from country selector page
    input text  ${InputCountryLocator}  ${Country}
    RUN KEYWORD IF   $Country in @{CountryList}  Valid Contry criteria
    ...  ELSE  Invalid country criteria

Valid Contry criteria
    run keyword and continue on failure    Page Should Contain   	${Country}
    #run keyword and continue on failure    element should contain  ${SearchResultCountry}  ${Country}
    ${innerText}=    Get Element Attribute    ${SearchResultCountry}    innerText
    log  ${innerText}
    should be equal  ${innerText}   ${Country}
    run keyword and continue on failure    Element Should Be Enabled    ${SearchResultCountry}
    #run keyword and continue on failure    element text should be  ${SearchResultCountry}  ${Country}
    click element  ${SearchResultCountry1}
#    sleep  10
    select window  NEW
    wait until page contains  ${Country}
    location should be  ${Site}
Invalid country criteria
    run keyword and continue on failure   page should not contain  ${SearchResultCountry}  ${Country}