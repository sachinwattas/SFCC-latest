*** Settings ***
Library    SeleniumLibrary


*** Variables ***
# Site manager login screens
${userNameLocator}    //html/body/div[2]/div/div[2]/div/form/fieldset/div[1]/input
${passwordLocator}    //input[@id='idToken2']
${loginButton}    //html/body/div[2]/div/div[2]/div/form/fieldset/div[3]/input
${userNameTxt}    krishnateja.rasappajayanna@standardbank.co.za
${passworTxt}    Krish123
${siteMangerUrl}    https://krishnateja.rasappajayanna@standardbank.co.za:Krish123@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/on/demandware.store/Sites-Site
${logoffSitemanagerLocator}    //html/body/header/div/div[2]/ul/li[7]/a/span

# Site manager URL for
${pageDesignerUrl}    https://krishnateja.rasappajayanna@standardbank.co.za:Krish123@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/on/demandware.store/Sites-Site/default/ViewLdsBusinessManagerScreen-PageDesigner/#/list
${storeFrontUrl}    https://storefront:coza2020@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/on/demandware.store/Sites-Site/default/ViewLdsBusinessManagerScreen-PageDesigner/#/list
${storeSiteUrl}   https://krishnateja.rasappajayanna@standardbank.co.za:Krish123@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/on/demandware.store/Sites-SB-COZA-Site

# Merchant page objects
${merchantLocator}    //*[@id="site_navigation_column "]/div[1]/span/a/span[1]
${sbcozaLocator}    //*[@id="bm_content_column"]/table/tbody/tr/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/a
${merchantTitleLocator}    //*[@id="bm_content_column"]/table/tbody/tr/td/table/tbody/tr/td[2]/table/tbody/tr[1]/td

# Content page objects
${contentLocator}    //*[@id="bm_content_column"]/table/tbody/tr/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td[5]/table/tbody/tr[1]/td[2]/a
${contentTitleLocator}    //*[@id="bm_content_column"]/table/tbody/tr/td/table/tbody/tr/td[2]/table/tbody/tr[1]/td

# PageDesginer page objects
${pageDesignerLocator}    //*[@id="bm_content_column"]/table/tbody/tr/td/table/tbody/tr/td[2]/table/tbody/tr[7]/td[1]/table/tbody/tr[1]/td[2]/a
${pageDesignerTitle}    /html/body/app-root/div/list-screen/page-header/div/div[1]/div[1]/div/div[2]/div/div[1]/h1/span[1]/span

# Store Front Selector
${storeFrontLocator}    //span[@class='menu-overview-link-text'][contains(text(),'Storefront')]

# Site Menu Selector
${SelectSiteMenuLocator}    //html/body/table/tbody/tr[1]/td/header/div/div[1]/div[1]

${SelectCoZaSite}    //html/body/table/tbody/tr[1]/td/header/div/div[1]/div[1]/div[2]/div/span/div/form/div/span/span[2]/span/span[2]


${pageName}    ""
${PageLocator}    ""

#Page Designer pages records
${personalPageDesignerLocator}    //a[contains(text(),'Personal')]
${homePageDesignerLocator}    //html/body/app-root/div/list-screen/div/pages-results/table/tbody/tr[3]/td[1]/div/a
${wealthPageDesignerLocator}    //html/body/app-root/div/list-screen/div/pages-results/table/tbody/tr[2]/td[1]/div/a

# varibale for argument input for keyword "Launch Page Structure and access Tree components"
${tabComponentLocator}    //html/body/app-root/div/editor-screen/div/main/toolbox/div/page-structure/flyout-panel/div/div[2]/div/div/ul/li[2]/div/ul/li[10]/div/ul/li[1]/div/ul/li/div/div/span[2]

# Page structure to access components
${pageStructureLocator}     //html/body/app-root/div/editor-screen/div/main/toolbox/div/toolbox-button[2]/span/span[1]
${tabComponentTitle}    //h2[contains(text(),'Tab Component Component')]

${pageDesignerBackButtonLocator}    //html/body/app-root/div/editor-screen/div/header/navigation/header/div[3]/div[1]/a/div[1]
${tabComponentFrame1}    //html/body/app-root/div/editor-screen/div/main/component-settings/div/div[2]/div[2]/form/div[1]/div/fieldset/div[2]/div/div/div/div[2]/div/div/custom-attribute-editor/iframe

*** Keywords ***
Open site manager
    open browser  ${siteMangerUrl}    Chrome
    maximize browser window
    wait until element is visible    ${userNameLocator}    50
    click element    ${userNameLocator}
    input text    ${userNameLocator}    ${userNameTxt}
    click element  ${loginButton}
    wait until element is visible      ${passwordLocator}    10
    click element   ${passwordLocator}
    input password  ${passwordLocator}  ${passworTxt}
    click element    ${loginButton}

Log off site Manger and Close Browser
    wait until element is visible    ${logoffSitemanagerLocator}
    click element    ${logoffSitemanagerLocator}
    wait until element is visible    ${userNameLocator}
    Close browser

Select site SB COZA
    #Switch Window    main
    wait until element is visible    ${SelectSiteMenuLocator}    50
    click element    ${SelectSiteMenuLocator}
    Run Keyword And Continue On Failure    wait until element is visible    ${SelectCoZaSite}
    Wait Until Keyword Succeeds    3x    200ms    clicking the site

clicking the site
    click element    ${SelectCoZaSite}

open storefront and switch to business manager
    mouse over      ${storeFrontLocator}
    click element    ${storeFrontLocator}
    switch window    NEW
    go to    ${storeSiteUrl}
    HandleConsentYes
    switch window    MAIN

Go to merchant page
    wait until element is visible    ${merchantLocator}    50
    click element    ${merchantLocator}
#    wait until element is visible    ${sbcozaLocator}
#    Click Element    ${sbcozaLocator}
    wait until element is visible    ${merchantTitleLocator}    20
    Element Should Contain    ${merchantTitleLocator}    Merchant Tools

Go to content page under merchant tools
    wait until element is visible    ${contentLocator}
    click element    ${contentLocator}
    wait until element is visible  ${contentTitleLocator}    20
    element should contain    ${contentTitleLocator}    Content

Go to Page Designer to access page
    [Arguments]    ${pageName}
    set global variable    ${pageName}    ${pageName}
    log    ${pageName}
    wait until element is visible    ${pageDesignerLocator}    50
    click element    ${pageDesignerLocator}
    #wait until element is visible    ${pageDesignerTitle}    100
    #element should contain    ${pageDesignerTitle}    Page Designer
#    seleniumlibrary.go to    ${pageDesignerUrl}
#    seleniumlibrary.go to    ${storeFrontUrl}
    get variable value for the inputed page name
#    go to    ${pageDesignerUrl}
    go to    ${storeFrontUrl}
    wait until element is visible    ${PageLocator}    50
    click element    ${PageLocator}

get variable value for the inputed page name
    log    ${pageName}
    run keyword if    '${pageName}' == 'Personal'    set test variable  ${PageLocator}  ${personalPageDesignerLocator}
    ...    ELSE IF    '${pageName}' == 'home'    set test variable  ${PageLocator}  ${homePageDesignerLocator}
    ...    ELSE IF    '${pageName}' == 'wealth'    set test variable  ${PageLocator}  ${wealthPageDesignerLocator}
    log    ${PageLocator}

Launch Page Structure and access Tree components
    [Arguments]    ${componentNameLocator}
    set test variable    ${componentNameLocator}    ${componentNameLocator}
    wait until element is visible    ${pageStructureLocator}    10
    Mouse Over    ${pageStructureLocator}
    Click element    ${pageStructureLocator}
    wait until element is visible    ${componentNameLocator}    50
    mouse over  ${componentNameLocator}
    Click Element  ${componentNameLocator}
    wait until element is visible    ${tabComponentTitle}    20
    element should be visible  ${tabComponentTitle}    Tab Component Component


Exit Page Designer
    Wait Until Element Is Visible    ${pageDesignerBackButtonLocator}
    Click Element    ${pageDesignerBackButtonLocator}
