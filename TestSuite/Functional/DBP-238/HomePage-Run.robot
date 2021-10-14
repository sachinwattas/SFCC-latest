*** Settings ***
Library     SeleniumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown  CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***

${Env}  DEMO
&{url}  DEMO=https://krishnateja.rasappajayanna@standardbank.co.za:Krish123@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/    UAT=http://standardbank.co.za   PROD=http://standardbank.co.za
${UrlEnv}  ${url.${Env}}
${BROWSER}  chrome
#${Link}  https://bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/on/demandware.store/Sites-SB-COZA-Site
&{CountrySite}  Angola=https://www.standardbank.co.ao/  Ghana=https://www.stanbicbank.com.gh/  Botswana=https://www.stanbicbank.co.bw/  IsleOfMan=https://international.standardbank.com/international/personal  Jersey=https://international.standardbank.com/international/personal  China=https://corporateandinvestment.standardbank.com//cib/global/country-presence/asia/china  Brazil=https://corporateandinvestment.standardbank.com/cib/global/country-presence/americas/brazil

#${CountryLocatorSite}   ${CountrySite.${Country}}

${starttypingthecountrynameLocator}  xpath=//input[contains(@class,'country-selector__search-input')]
${CountrySelector}                  //div[2]/li/a/span

${CloseCountryLocator}  css=body > div.page > header > div.country-selector-container > div > div > span > i > svg

${chooseYourCountryTextLocator}    //div[5]/div/div/div[1]
${countrySearchTextInputLocator}    //input[@type='text']
${africaRegionTextLocator}    //html/body/div[1]/header/div[5]/div/div/div[3]/span
${angolaCountryTextLocator}    //span[contains(text(),'Angola')]
${botswanaCountryTextLocator}    //span[contains(text(),'Botswana')]
${ghanaCountryTextLocator}    //span[contains(text(),'Ghana')]
${zambiaCountryTextLocator}    //span[contains(text(),'Zambia')]

${EuropeCountryTextLocator}    //span[contains(text(),'Europe')]
${isleOfManCountryTextLocator}    //span[contains(text(),'Isle of Man')]
${unitedKingdomCountryTextLocator}    //span[contains(text(),'United Kingdom')]
${jerseyCountryTextLocator}    //span[contains(text(),'Jersey')]

${asiaMiddleEastRegionTextLocator}    //span[contains(text(),'Asia Middle East')]
${chinaCountryTextLocator}    //span[contains(text(),'China')]


${americasRegionTextLocator}    //span[contains(text(),'Americas')]
${brazilCountryTextLocator}    //span[contains(text(),'Brazil')]


*** Test Cases ***

Verify Country Selector navigation
    [Documentation]    Scenario 1: Navigate to Country selector and view the country options
...     "*Feature:* Country Selector
...    *Scenario:* Customer click one of the country from the list
...    *Given:* The selected URL has been set up in each country
...    *When* the Customer click the selected country
...    *Then* it should be redirecting to a certain web page"
    [Tags]    QA-SPRINT1  PROJECT-SPRINT4  DBP-238
#    CommonRepo.Starting Session with Desktop Browser
    Click Country
    Verify Country Selector page
    Exit from Country Selector


*** Keywords ***


Click Country
    [Documentation]  Click on the Country Selection to access Country selction page
    element text should be  //div[2]/li/a/span  South Africa
    Click Element  ${CountrySelector}
#    run keyword and continue on failure  element text should be  //div[1]/header/div[5]/div/div/div[1]  Choose your country or region
    wait until element contains  ${chooseYourCountryTextLocator}  Choose your country or region  5
    run keyword and continue on failure  element should contain  ${chooseYourCountryTextLocator}  Choose your country or region
 #   run keyword and continue on failure  element value should contain  //div[1]/header/div[5]/div/div/div[1]  Choose your country or region

Verify Country Selector page
    [Documentation]  Verify all the elements text on the country selector
    run keyword and continue on failure    Page Should Contain   	Choose your country or region
    run keyword and continue on failure  element should contain  ${chooseYourCountryTextLocator}  Choose your country or region
    run keyword and continue on failure      element should be visible  ${countrySearchTextInputLocator}
    run keyword and continue on failure      element text should be  ${africaRegionTextLocator}    Africa
    run keyword and continue on failure      element text should be  ${angolaCountryTextLocator}  Angola
    run keyword and continue on failure      element text should be  ${ghanaCountryTextLocator}    Ghana
    run keyword and continue on failure      element text should be  ${botswanaCountryTextLocator}    Botswana
    run keyword and continue on failure      element text should be  ${europecountrytextlocator}  Europe
    run keyword and continue on failure      element text should be  ${isleOfManCountryTextLocator}    Isle of Man
    run keyword and continue on failure      element text should be  ${jerseyCountryTextLocator}   Jersey
    run keyword and continue on failure      element text should be  ${asiaMiddleEastRegionTextLocator}  Asia Middle East
    run keyword and continue on failure      element text should be  ${chinaCountryTextLocator}    China
    run keyword and continue on failure      element text should be  ${americasRegionTextLocator}  Americas
    run keyword and continue on failure      element text should be  ${brazilCountryTextLocator}    Brazil



Exit from Country Selector
    Click Element   	${CloseCountryLocator}
    Location Should be  ${MainPageLocation3}

Select country from country selector page
    [Arguments]    ${locatorName}  ${country}    ${countrySite}
    log to console  ${locatorName}
    click element  ${locatorName}
    location should be  ${countrySite}
    close window

