*** Settings ***

Library    SeleniumLibrary
Resource    ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../PageObjects/SiteManagerCommonKeywords.robot

*** Variables ***

${sitePreferences}              //html/body/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[2]/table/tbody/tr[11]/td[5]/table/tbody/tr[1]/td[2]/a
${customePreferences}           xpath=(//a[contains(text(),'Custom Preferences')])[3]
${customePreferencesText}       //html/body/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td[2]/table/tbody/tr[17]/td[1]/table/tbody/tr[2]/td
${storeFrontConfigURL}          https://bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/on/demandware.store/Sites-Site/default/ViewApplication-BM?csrf_token=CbAXdA5GCh2zcBz00aa78MRO_Ng0cei-lu4eorxXhzwXBfqlbheJjLhEy5NDpktIea2tZjGz_uv7poplZZvODHmf4HrhAyLtBpWXfmlwg9y2DW8heiZmgHcG1dHymKm0ZTDT2xUWjJ-ZEXmSb1C4pqFa7esreiyEeY6dPK_BIMhzW-xKu1E=#/?preference#site_preference_group_attributes!id!Storefront%20Configs

${enableMiniCart}               xpath=(//select[@class="dw-select"])[10]
${savePreferences}              //button[@class="dw-button dw-primary"]
${minCartLocator}               //div[@class='minicart menu-action d-flex order-lg-2 align-items-center']
${miniCartImage}                //img[@src='/on/demandware.static/-/Library-Sites-SBSharedLibrary/default/dw693db0db/common/header/icons/basket.svg']
${minCartLocatorArea}           css=.minicart


*** Keywords ***
the Site Manager has turned on the Basket
    Open site manager
    Select site SB COZA
    go to merchant page
    go to site preference
    go to custom preferences
    go to storefront configs
    select mini cart to enable or disable    ${enableMiniCart}  0

the Site Manager has turned off the Basket
    go to    ${siteMangerUrl}
    Select site SB COZA
    go to merchant page
    go to site preference
    go to custom preferences
    go to storefront configs
    select mini cart to enable or disable    ${enableMiniCart}  1

go to site preference
    click link      ${sitePreferences}

go to custom preferences
    wait until element is enabled    ${customePreferencesText}
    mouse over    ${customePreferencesText}
#    scroll element into view    ${customePreferences}
    wait until keyword succeeds     5x      300ms    Click Link    ${customePreferences}

go to storefront configs
    go to    ${storeFrontConfigURL}

select mini cart to enable or disable
    [Arguments]    ${dropdown_Locator}      ${enable_disable}
    reload page
    Run Keyword And Continue On Failure    Wait Until Page Contains Element    ${dropdown_Locator}    20sec
#    Wait Until Page Contains Element    xpath=(//select[@class="dw-select"])[10]
#    Select From List By Value    xpath=(//select[@class="dw-select"])[10]    0
    Run Keyword And Continue On Failure    Select From List By Value       ${dropdown_Locator}          ${enable_disable}
    Run Keyword And Continue On Failure    Click Button    ${savePreferences}

the Customer opens Commerce
    go to    ${PersonalPageLocation1}

the basket is displayed in the Header
    Run Keyword And Continue On Failure    Wait Until Element Is Visible   	${minCartLocatorArea}
	Run Keyword And Continue On Failure    Page Should Contain Element   	${miniCartImage}
	Run Keyword And Continue On Failure    Element Should Be Visible   	${minCartLocator}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${minCartLocator}

the basket is not displayed in the Header
    Run Keyword And Continue On Failure    page should not contain image    ${miniCartImage}
	Run Keyword And Continue On Failure    Element Should Not Be Visible   	${minCartLocator}
	Run Keyword And Continue On Failure    Page Should Not Contain Element   	${minCartLocatorArea}
    close all browsers
