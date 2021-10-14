*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***
# Open Browser arguments





#Footer Social elements

${SocialLocation}  //div[@class='footer-card__social-block']//div[@class='content-asset']
${FacebookPath}  //a[@href='https://www.facebook.com/StandardBankSA/']

${TwitterPath}  //a[@href='https://twitter.com/standardbankza/']
${LinkedinPath}  //a[@href='https://www.linkedin.com/company/standard-bank-south-africa/']
${YoutubePath}  //a[@href='https://www.youtube.com/channel/UC_oz5no5MIucu45I4PO9nCQ/']

${FacebookTxt}  https://www.facebook.com/StandardBankSA/
${TwitterTxt}  https://twitter.com/standardbankza/
${LinkedinTxt}  https://www.linkedin.com/company/standard-bank-south-africa/
${YoutubeTxt}  https://www.youtube.com/channel/UC_oz5no5MIucu45I4PO9nCQ/

#Financial Statement elements
${FinancialStatementPath}  xpath:(.//div[contains(normalize-space(.), 'Standard Bank is a licensed financial services provider in terms of the Financial Advisory and Inter')])[last()]
${FinancialStatementTxt}  Standard Bank is a licensed financial services provider in terms of the Financial Advisory and Intermediary Services Act and a registered credit provider in terms of the National Credit Act, registration number NCRCP15

#Footer Legal elements

${FooterLegaBlockLocator}   xpath=//ul[contains(@class,'footer-card__links-block')]/div
${securityCentreLocator}   link=Security Centre
${regulatoryLocator}       link=Regulatory
${legalLocator}            link=Legal
${termsConditionsLocator}  link=Terms & Conditions

${securityCentreTxt}  Security Centre
${regulatoryTxt}      Regulatory
${legalTxt}           Legal
${termsConditionsTxt}  Terms & Conditions

${securityCentreLink}  /southafrica/personal/products-and-services/security-centre/bank-safely
${regulatoryLink}  /southafrica/personal/about-us/regulatory
${legalLink}    /southafrica/personal/about-us/legal
${termsConditionsLink}    /southafrica/personal/about-us/terms-and-conditions

# SBSA Mobile App scenario variables

${footerAppBlockLocator}  //div[@class='app-card']
${footerAppBlockTextPath}  //div[@class='title title--module-sub-title app-card__app-title']
${footerAppTitle}  Standard Bank App
${andriodStorePath}  //div[@class='app-card']//a[1]//img[1]
${appleStorePath}  //div[@class='app-card']//a[2]//img[1]
${mobileDeviceImg}  //div[@class='app-card__snapshot']//img
${andriodSbsaAppLink}  https://play.google.com/store/apps/details?id=com.sbg.mobile.phone
${appleSbsaAppLink}  https://apps.apple.com/za/app/standard-bank-stanbic-bank/id528239110
${andriodHrefLink}  https://play.google.com/store/apps/details?id=com.sbg.mobile.phone
${appleHrefLink}  https://itunes.apple.com/za/app/standard-bank-stanbic-bank/id528239110?mt=8

# SBSA Get To Know Us scenario variables

## Get to know us block elements attributes
#Object link value
${newsandmediaLocator}       //span[contains(.,'News and media')]
${investorrelationsLocator}  css=[data-text='get to know us | investor relations link click'] > .link__text
${standardBankGroupLocator}  //a[.='Standard Bank Group']
${whowesponsorLocator}       //a[contains(.,'Who we sponsor')]
${whoweareLocator}           //a[.='Who we are']
${findabranchLocator}        //span[contains(.,'Find a branch')]
${gettoknowusLocator}        //div[@class='about-card__container']/div[@class='content-asset']/div[contains(.,'Get to know us')]

# Object Text
${gettoknowusTxt}        Get to know us
${newsandmediaTxt}       News and media
${investorrelationsTxt}  Investor relations
${standardBankGroupTxt}  Standard Bank Group
${whowesponsorTxt}       Who we sponsor
${whoweareTxt}           Who we are
${findabranchTxt}        Find a branch

# click and link should be
${newsandmediaLink}       /southafrica/news-and-media
${investorrelationsLink}  https://reporting.standardbank.com/
${standardBankGroupLink}  https://www.standardbank.com/
${standardBankGroupLink-Demo}   https://storefront:coza2020@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/
${whowesponsorLink}       https://sponsorships.standardbank.com/
${whoweareLink}           /sbg/standard-bank-group/who-we-are/our-group-at-a-glance
${findabranchLink}        /southafrica/personal/branch-locator

#Work with us block under footer

${workwithusLocator}                 xpath=//div[@class='about-card__container']/div[@class='content-asset']/div[contains(.,'Work with us')]
${joinourLocator}  xpath=//div[contains(@class,'about-card__container')]/div/p[1]
${viewopportunitiesLocator}          xpath=//div[@class='about-card']//ul[2]//li[1]//a[1]
${expectedWorkWithUsTxt}    Work with us
${expectedjoinourTxt}    Join our international team and you could move your career forward from the start.
${expectedviewopportunitiesTxt}    View opportunities
${viewOppurtunityLink}    https://careers.standardbank.com/standimg/Careers/index.html
${workwithusValue}    ""
${joinourValue}    ""
${viewopportunitiesValue}    ""

#Need help block under footer

${needhelpwithoneofourproduLocator}  xpath=//div[@class='about-card__container']/div[@class='content-asset']/div[contains(.,'Need help with one of our products or services')]
${visitourcommunityLocator}    //a[contains(text(),'Visit our community')]
${needHelpLocator}    //div[@class='about-card__container']/div[@class='content-asset']/div[contains(.,'Need help with one of our products or services')]
${communityLink}    https://community.standardbank.co.za/


#Physical address

${physicalAddressLocator}            xpath=//div[@class='about-card__container']/div[@class='content-asset']/div[contains(.,'Physical Address')]
${element5SimmondsstreetLocator}  css=div.about-card__container p:nth-of-type(2)
${physicalAddressLabelText}    Physical Address
${physicalAddressDetailsText}    5 Simmonds street, Selby, Johannesburg, 2001
${physicalAddressValue}    ""
${element5SimmondsstreetValue}    ""

#Feedback complements and complaints

${wewantyourfeedbackLocator}         //div[@class='about-card__container']/div[@class='content-asset']/div[contains(.,'We want your feedback')]
${gotacomplimentorcomplaintLocator}  //p[contains(.,'Got a compliment or complaint?')]
${letusknowLocator}                  //button[contains(text(),'Let us know')]
${wewantyourfeedbackTxt}    We want your feedback
${gotacomplimentorcomplaintTxt}    Got a compliment or complaint?
${letUsKnowTxt}    LET US KNOW
${feedbackFormLocator}    css=h3.text-uppercase
${feedbackFormHeaderTxt}    HOW DID WE DO?
${feedbackformExitLocator}    css=div.py-4 [width='22px']
# Footer Contact lines block elements attributes
# fraud contact elements
${fraudHeaderLocator}    //div[contains(text(),'Fraud line')]
${fraudHeaderTxt}    Fraud line
${fraudSALocation}    //div[@class='contact-card']//ul[1]//li[1]//span[1]
${fraudSAText}    SOUTH AFRICA
${fraudIntLocator}    //div[@class='contact-card']//ul[1]//li[2]//span[1]
${fraudIntTxt}    INTERNATIONAL
${fraudSANumberLocation}    //div[@class='contact-card']//ul[1]//li[1]//a[1]
${fraudSANumberText}    0800 020 600
${fraudSANumberHref}    tel: 0800 020 600
${fraudInNumbertLocator}    //div[@class='contact-card']//ul[1]//li[2]//a[1]
${fraudIntNumberTxt}  +27 10 249 0100
${fraudIntNumberHref}    tel: +27 10 249 0100

#GetInTouch varables

${getintouchHeaderLocator}    //div[contains(text(),'Get in Touch')]
${getintouchHeaderTxt}    Get in Touch
${getintouchSALocation}    //div[@class='contact-card']//ul[2]//li[1]//span[1]
${getintouchSAText}    SOUTH AFRICA
${getintouchIntLocator}    //div[@class='contact-card']//ul[2]//li[2]//span[1]
${getintouchIntTxt}    INTERNATIONAL
${getintouchSANumberLocation}    //div[@class='contact-card']//ul[2]//li[1]//a[1]
${getintouchSANumberText}    0860 123 000
${getintouchSANumberHref}    tel: 0860 123 000
${getintouchInNumbertLocator}    //div[@class='contact-card']//ul[2]//li[2]//a[1]
${getintouchIntNumberTxt}  +27 10 249 0423
${getintouchIntNumberHref}    tel: +27 10 249 0423

#LostOrStolenCards variables

${LostOrStolenCardsHeaderLocator}    //div[contains(text(),'Lost or stolen cards')]
${LostOrStolenCardsHeaderTxt}    Lost or stolen cards
${LostOrStolenCardsSALocation}    //div[@class='contact-card']//ul[3]//li[1]//span[1]
${LostOrStolenCardsSAText}    SOUTH AFRICA
${LostOrStolenCardsIntLocator}    //div[@class='contact-card']//ul[3]//li[2]//span[1]
${LostOrStolenCardsIntTxt}    INTERNATIONAL
${LostOrStolenCardsSANumberLocation}    //div[@class='contact-card']//ul[3]//li[1]//a[1]
${LostOrStolenCardsSANumberText}    0800 020 600
${LostOrStolenCardsSANumberHref}    tel: 0800 020 600
${LostOrStolenCardsInNumbertLocator}    //div[@class='contact-card']//ul[3]//li[2]//a[1]
${LostOrStolenCardsIntNumberTxt}  +27 10 249 0100
${LostOrStolenCardsIntNumberHref}    tel: +27 10 249 0100

#Contact us

${contactUsLocator}    //span[contains(.,'Contact Us')]
${contactUsPageElement}     //body[1]/main[1]/section[1]/div[1]/div[1]/div[2]/div[1]/div[1]/h1[1]
${contactUsPageUrl}    /southafrica/personal/contact-us
${contactUsPageTxt}     Contact Us

#see all contact details
${GiveUsACallLocator}    //span[.='Give us a call']
${GiveUsACallPageUrl}    /southafrica/personal/contact-us
${GiveUsACallTxt}   Give us a call


*** Keywords ***


#Footer Financial Statement Keywords

the Customer displays the "Financial Statement" part
    HandleConsentYes
    run keyword and continue on failure  View the financial statement location

View the financial statement location
    mouse over  ${FinancialStatementPath}
	Click Element  ${FinancialStatementPath}
the fix text is displayed
    run keyword and continue on failure  Verify the financial statement text

Verify the financial statement text
	Element Should Be Visible   	${FinancialStatementPath}
	Page Should Contain Element   	${FinancialStatementPath}
	Page Should Contain   	        ${FinancialStatementTxt}

	${EleAttr}=  get element attribute  ${FinancialStatementPath}  text
    log  ${EleAttr}
    evaluate  '${EleAttr}' == '${FinancialStatementTxt}'
    Element Text Should Be  ${FinancialStatementPath}  ${FinancialStatementTxt}


#Footer Security centre, Regulatory, Legal & Terms&Condition functionality keywords

the Customer displays the "Legal" part
    run keyword and continue on failure  View the Legal statement location
View the Legal statement location
    HandleConsentYes
    mouse over  ${FooterLegaBlockLocator}

the links to the legal related pages within SFCC are displayed
    run keyword and continue on failure  Verify Elements for Security Regulatory Legal Terms&Condition displayed
    run keyword and continue on failure  Verify clicking on the link Security Centre

Verify Elements for Security Regulatory Legal Terms&Condition displayed
    Element Text Should Be  ${securityCentreLocator}  ${securityCentreTxt}
    Element Text Should Be  ${regulatoryLocator}  ${regulatoryTxt}
    Element Text Should Be  ${legalLocator}  ${legalTxt}
    Element Text Should Be  ${termsConditionsLocator}  ${termsConditionsTxt}

Verify clicking on the link Security Centre
    run keyword and continue on failure  Verify Clicking Security Centre link text
    run keyword and continue on failure  Verify Clicking Regulatory Link text
    run keyword and continue on failure  Verify Clicking Legal Link text
    run keyword and continue on failure  Verify Clicking Terms&Conditions Link text

Verify Clicking Security Centre link text
	Click Element  ${securityCentreLocator}
#    Location Should be  ${securityCentreLink}
    ${url}    get location
    Should Be True      '${securityCentreLink}' in '${url}'
    Go To Main Home Page

Go to Main Home Page
    Go Back
    Switch Window   MAIN
    ${GetUrlLocation} =  get location
    log  ${GetUrlLocation}
    run keyword and continue on failure  Should Be True  '${GetUrlLocation}' == '${MainPageLocation1}' or '${GetUrlLocation}' == '${MainPageLocation2}' or '${GetUrlLocation}' == '${PersonalPageLocation1}' or '${GetUrlLocation}' == '${MainPageLocation3}' or '${GetUrlLocation}' == '${PersonalPageLocation3}' or '${GetUrlLocation}' == '${PersonalPageLocation2}' or '${GetUrlLocation}' == '${PersonalPageLocation4}'


Verify Clicking Regulatory Link text
    wait until element is visible    ${regulatoryLocator}
	Click Element  ${regulatoryLocator}
    #Location Should be  ${regulatoryLink}
    ${url}    get location
    Should Be True      '${regulatoryLink}' in '${url}'
    Go To Main Home Page
Verify Clicking Legal Link text
    wait until element is visible    ${legalLocator}
	Click Element  ${legalLocator}
#    Location Should be  ${legalLink}
    ${url}    get location
    Should Be True      '${legalLink}' in '${url}'
    Go To Main Home Page
Verify Clicking Terms&Conditions Link text
    wait until element is visible    ${termsConditionsLocator}
	Click Element  ${termsConditionsLocator}
    #Location Should be  ${termsConditionsLink}
    ${url}    get location
    Should Be True      '${termsConditionsLink}' in '${url}'
    Go To Main Home Page

# Standard bank Mobile app display information on footer keywords


the Customer displays the "Apps" part
    run keyword and continue on failure  Verify SBSA mobile App reference on footer

Verify SBSA mobile App reference on footer
    HandleConsentYes
    mouse over  ${footerAppBlockLocator}
	Page Should Contain Element   	${footerAppBlockTextPath}
    Element Text Should Be  ${footerAppBlockTextPath}  ${footerAppTitle}
    Element Should Be Visible   	${footerAppBlockTextPath}
    Element Should Be Visible   	${andriodStorePath}
    Element Should Be Visible   	${appleStorePath}
    Element Should Be Visible   	${mobileDeviceImg}


the link to the Standard Bank App on Google Play Store ("https://play.google.com/store/apps/details?id=com.sbg.mobile.phone") is displayed
    run keyword and continue on failure  Verify SBSA Andriod app reference

Verify SBSA Andriod app reference
	Page Should Contain Link   	${andriodHrefLink}
	${EleAttr}=  get element attribute  ${andriodStorePath}  href
    log  ${EleAttr}
    evaluate  '${EleAttr}' == '${andriodHrefLink}'
#	element attribute should match  ${andriodStorePath}  href  ${andriodHrefLink}
	Click Element  ${andriodStorePath}
	Switch Window    NEW
    Location Should be  ${andriodSbsaAppLink}
    Go To Main Home Page

the link to the Standard Bank App on Apple App Store ("https://apps.apple.com/za/app/standard-bank-stanbic-bank/id528239110") is displayed
    run keyword and continue on failure  Verify SBSA Apple app reference
Verify SBSA Apple app reference
    Page Should Contain Link   	${appleHrefLink}
	${EleAttr}=  get element attribute  ${appleStorePath}  href
    log  ${EleAttr}
    evaluate  '${EleAttr}' == '${appleHrefLink}'
	Click Element  ${appleStorePath}
	Switch Window    NEW
    Location Should be  ${appleSbsaAppLink}
    Go To Main Home Page

# Footer SBSA Get to know information scenario keywords



the Customer displays the "Get to know us" part
    run keyword and continue on failure  Navigate to Footer "Get To Know Us" section

the Customer selects a link in the "Get to know us" section of the footer
    run keyword and continue on failure  Navigate to Footer "Get To Know Us" section

the Customer hovers over the links in the "Get to know us" section of the footer
    run keyword and continue on failure  Navigate to Footer "Get To Know Us" section

the page behind the link is opened
    run keyword and continue on failure  Verify the Links by click action

Navigate to Footer "Get To Know Us" section
    HandleConsentYes
    mouse over  ${gettoknowusLocator}

the links within SFCC are displayed
    run keyword and continue on failure  Validate the links under "Get To Know Us"

Validate the links under "Get To Know Us"
    Element Text Should Be  ${gettoknowusLocator}  ${gettoknowusTxt}
    Element Text Should Be  ${newsandmediaLocator}  ${newsandmediaTxt}
    Element Text Should Be  ${investorrelationsLocator}  ${investorrelationsTxt}
    Element Text Should Be  ${standardBankGroupLocator}  ${standardBankGroupTxt}
    Element Text Should Be  ${whowesponsorLocator}  ${whowesponsorTxt}
    Element Text Should Be  ${findabranchLocator}  ${findabranchTxt}
    Element Should Be Visible  ${gettoknowusLocator}
    Element Should Be Visible  ${newsandmediaLocator}
    Element Should Be Visible  ${investorrelationsLocator}
    Element Should Be Visible  ${standardBankGroupLocator}
    Element Should Be Visible  ${whowesponsorLocator}
    Element Should Be Visible  ${findabranchLocator}

Verify the Links by click action
    run keyword and continue on failure  click News&Media Link and Verify
    run keyword and continue on failure  click investorrelations Link and Verify
    run keyword and continue on failure  click standardBankGroup Link and Verify
    run keyword and continue on failure  click whowesponsor Link and Verify
    run keyword and continue on failure  click whoweare Link and Verify
    run keyword and continue on failure  click findabranch Link and Verify


click News&Media Link and Verify
	Click Element  ${newsandmediaLocator}
	wait until location contains    ${newsandmediaLink}
#    Location Should be  ${newsandmediaLink}
    ${url}    get location
    Run Keyword And Continue On Failure     Should Be True      '${newsandmediaLink}' in '${url}'
    Go To Main Home Page

click investorrelations Link and Verify
    Mouse Over    ${investorrelationsLocator}
	Click Element  ${investorrelationsLocator}
	Switch window  NEW
	wait until location contains    ${investorrelationsLink}
    Location Should be  ${investorrelationsLink}
    Go To Main Home Page

click standardBankGroup Link and Verify
	Click Element  ${standardBankGroupLocator}
	Switch window  NEW
	${url}      get location
	Run Keyword And Continue On Failure  Should Be True  '${standardBankGroupLink}' == '${url}' or '${standardBankGroupLink-Demo}' == '${url}'
    Go To Main Home Page

click whowesponsor Link and Verify
	Click Element  ${whowesponsorLocator}
	Switch window  NEW
    Run Keyword And Continue On Failure     Location Should be  ${whowesponsorLink}
    Go To Main Home Page

click whoweare Link and Verify
	Click Element  ${whoweareLocator}
	Switch window  NEW
    ${url}    get location
    Run Keyword And Continue On Failure    Should Be True      '${whoweareLink}' in '${url}'
    Go To Main Home Page

click findabranch Link and Verify
	Click Element  ${findabranchLocator}
	wait until location contains    ${findabranchLink}
    ${url}    get location
    Run Keyword And Continue On Failure    Should Be True      '${findabranchLink}' in '${url}'
    Go To Main Home Page

the arrow next to the link moves to the right (5px)
    mouse over  ${gettoknowusLocator}
    Capture Element Screenshot  ${gettoknowusLocator}
    mouse over  ${newsandmediaLocator}
    mouse over  ${investorrelationsLocator}
    mouse over  ${standardBankGroupLocator}
    mouse over  ${whowesponsorLocator}
    mouse over  ${findabranchLocator}


[Documentation]  ## Keywords for Work With us block"

the Customer displays Work with us under footer section
    run keyword and continue on failure    Mouse Over    ${workwithusLocator}

Views the text content under work with us
    Element Should Contain    ${workwithusLocator}    ${expectedWorkWithUsTxt}
    Element Should Contain    ${joinourLocator}      ${expectedjoinourTxt}
    Element Should Contain    ${viewopportunitiesLocator}    ${expectedviewopportunitiesTxt}

#    Get Workwithus
#    run keyword and continue on failure    should be true    ${workwithusValue} == ${expectedWorkWithUsTxt}
#    Get Joinourinternationalteama
#    run keyword and continue on failure    should be true    ${joinourValue} == ${expectedjoinourTxt}
#    Get Viewopportunities
#    run keyword and continue on failure    should be true    ${viewopportunitiesValue} == ${expectedviewopportunitiesTxt}

#Get Workwithus
#    [Documentation]  Get Workwithus DIV element value
#    ${workwithusValue}=  Get Text  ${workwithusLocator}
#    [Return]  ${workwithusValue}

#Get Joinourinternationalteama
#    [Documentation]  Get Joinourinternationalteama P element value
#    ${joinourValue}=  Get Text  ${joinourLocator}
#    [Return]  ${joinourValue}

#Get Viewopportunities
#    [Documentation]  Get Viewopportunities SPAN element value
#    ${viewopportunitiesValue}=  Get Text  ${viewopportunitiesLocator}
#    [Return]  ${viewopportunitiesValue}

Clicks on View Oppurtunities
    click element    ${viewopportunitiesLocator}
	Switch window  NEW
    Run Keyword And Continue On Failure     Location Should Be    ${viewOppurtunityLink}
    Go To Main Home Page

#[Documentation]    # Keys words for Need help block under footer

the Customer displays Need Help under footer section
    Run Keyword And Continue On Failure    mouse over    ${needHelpLocator}

Views the text content under Need Help
    Run Keyword And Continue On Failure    Get Needhelpwithoneofourprodu

Clicks on Visit our Community img
    Run Keyword And Continue On Failure    Click Visitourcommunity

Get Needhelpwithoneofourprodu
    [Documentation]  Get Needhelpwithoneofourprodu DIV element value
    ${needhelpwithoneofourproduValue}=  Get Text  ${needhelpwithoneofourproduLocator}
    [Return]  ${needhelpwithoneofourproduValue}

Click Visitourcommunity
    [Documentation]  Click on the Visitourcommunity A element
    Click Element  ${visitourcommunityLocator}
#    Switch window  NEW
    Run Keyword And Continue On Failure     Location Should Be    ${communityLink}
    Go To Main Home Page

#Physical address detais

the Customer displays Physical Address under footer section
    mouse over    ${physicalAddressLocator}
    Run Keyword And Continue On Failure    wait until element is visible    ${physicalAddressLocator}

Views the text content under Physical address
    Run Keyword And Continue On Failure    Element Should Be Visible    ${physicalAddressLocator}
    Run Keyword And Continue On Failure    Element Should Contain    ${physicalAddressLocator}  ${physicalAddressLabelText}
    run keyword and continue on failure    Element Should Be Visible    ${element5SimmondsstreetLocator}
    Run Keyword And Continue On Failure    Element Should Contain    ${element5SimmondsstreetLocator}  ${physicalAddressDetailsText}
#    Get PhysicalAddress
#    run keyword and continue on failure    should be true    """${physicalAddressValue}""" == """${expectedWorkWithUsTxt}"""
#    Get Element5SimmondsstreetSel
#    run keyword and continue on failure    should be true    """${element5SimmondsstreetValue}""".strip() == """${physicalAddressDetailsText}""".strip()

#Get PhysicalAddress
#    [Documentation]  Get PhysicalAddress DIV element value
#    ${physicalAddressValue}=  Get Text  ${physicalAddressLocator}
#    [Return]  ${physicalAddressValue}

#Get Element5SimmondsstreetSel
#    [Documentation]  Get Element5Simmondsstreet P element value
#    ${element5SimmondsstreetValue}=  Get Text  ${element5SimmondsstreetLocator}
#    [Return]  ${element5SimmondsstreetValue}

#Feedback - compliments/ complaints

the Customer displays Feedback info under footer section
    go to    https://krishnateja.rasappajayanna@standardbank.co.za:Krish123@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/southafrica/personal/?lang=en_ZA
    wait until element is visible    ${wewantyourfeedbackLocator}
    mouse over    ${wewantyourfeedbackLocator}

Views the text content on We Want Your Feedback
    Element Should Be Visible    ${wewantyourfeedbackLocator}
    Element Should Contain    ${wewantyourfeedbackLocator}    ${wewantyourfeedbackTxt}
    Element Should Be Visible    ${gotacomplimentorcomplaintLocator}
    Element Should Contain    ${gotacomplimentorcomplaintLocator}    ${gotacomplimentorcomplaintTxt}
    Element Should Be Visible    ${letusknowLocator}
#    run keyword and continue on failure    should be true    """${wewantyourfeedbackValue}""" == """${wewantyourfeedbackTxt}"""
#    Get Gotacomplimentorcomplaint
#    Element Should Be Visible    ${gotacomplimentorcomplaintLocator}
#    run keyword and continue on failure    should be true    """${gotacomplimentorcomplaintValue}""".strip() == """${gotacomplimentorcomplaintTxt}""".strip()
#    Element Should Be Visible    ${letusknowLocator}
#Get Wewantyourfeedback
#    [Documentation]  Get Wewantyourfeedback DIV element value
#    ${wewantyourfeedbackValue}=  Get Text  ${wewantyourfeedbackLocator}
#    [Return]  ${wewantyourfeedbackValue}

#Get Gotacomplimentorcomplaint
#    [Documentation]  Get Gotacomplimentorcomplaint P element value
#    ${gotacomplimentorcomplaintValue}=  Get Text  ${gotacomplimentorcomplaintLocator}
#    [Return]  ${gotacomplimentorcomplaintValue}

Clicks on Let Us Know img
    Run Keyword And Continue On Failure    Click Letusknow

Click Letusknow
    [Documentation]  Click on the Letusknow A element
    Element Should Contain  ${letusknowLocator}    ${letUsKnowTxt}
    Click Element  ${letusknowLocator}
#    Run Keyword And Continue On Failure    Page Should Contain  ${feedbackFormLocator}    ${feedbackFormHeaderTxt}
    run keyword and continue on failure    wait until element is visible    ${feedbackFormLocator}
    #Run Keyword And Continue On Failure    Element Should Contain    ${feedbackFormLocator}    ${feedbackFormHeaderTxt}

    ${innerTxt}=    Get Element Attribute    ${feedbackFormLocator}    innerText
    log  ${innerTxt}
    Should Be Equal    ${innerTxt}    ${feedbackFormHeaderTxt}
    run keyword and continue on failure    Click Element    ${feedbackformExitLocator}


## Footer contact lines (fraudlin, Get in touh, lost stolen cards, contact, see all contact us -Keywords

the Customer displays Fraudline info under footer section
    HandleConsentYes
    Run Keyword And Continue On Failure    mouse over    ${fraudHeaderLocator}

Views the text content on Fraudline
    run keyword and continue on failure    Verify text content on Fraudline block

Verify text content on Fraudline block
    element should contain    ${fraudHeaderLocator}    ${fraudHeaderTxt}
    element should contain    ${fraudSALocation}       ${fraudSAText}
    element should contain    ${fraudIntLocator}       ${fraudIntTxt}
    element should contain    ${fraudSANumberLocation}       ${fraudSANumberText}
    element should contain    ${fraudInNumbertLocator}       ${fraudIntNumberTxt}

Click on south africa fraudline contact
    Run Keyword And Continue On Failure    Verify if south africa contact number for fraud is clickable

Verify if south africa contact number for fraud is clickable
    element attribute value should be    ${fraudSANumberLocation}  href  ${fraudSANumberHref}
    element should be enabled    ${fraudSANumberLocation}
#    click element    ${fraudSANumberText}

Click on international fraudline contact
    Run Keyword And Continue On Failure    Verify if international contact number for fraud is clickable
Verify if international contact number for fraud is clickable
    element attribute value should be    ${fraudInNumbertLocator}  href  ${fraudIntNumberHref}
    element should be enabled    ${fraudInNumbertLocator}
#    click element    ${fraudIntNumberTxt}

# GetInTouch keywords
the Customer displays GetInTouch info under footer section
    HandleConsentYes
    Run Keyword And Continue On Failure    mouse over    ${getintouchHeaderLocator}

Views the text content on GetInTouch
    run keyword and continue on failure    Verify text content on Fraudline block

Verify text content on GetInTouch block
    element should contain    ${getintouchHeaderLocator}    ${getintouchHeaderTxt}
    element should contain    ${getintouchSALocation}       ${getintouchSAText}
    element should contain    ${getintouchIntLocator}       ${getintouchIntTxt}
    element should contain    ${getintouchSANumberLocation}       ${getintouchSANumberText}
    element should contain    ${getintouchInNumbertLocator}       ${getintouchIntNumberTxt}

Click on south africa GetInTouch contact
    Run Keyword And Continue On Failure    Verify if south africa GetInTouch number clickable
Verify if south africa GetInTouch number clickable
    element attribute value should be    ${getintouchSANumberLocation}  href  ${getintouchSANumberHref}
    element should be enabled    ${getintouchSANumberLocation}
#    click element    ${fraudSANumberText}

Click on international GetInTouch contact
    Run Keyword And Continue On Failure    Verify if international GetInTouch number clickable
Verify if international GetInTouch number clickable
    element attribute value should be    ${getintouchInNumbertLocator}  href  ${getintouchIntNumberHref}
    element should be enabled    ${getintouchInNumbertLocator}

#LostOrStolenCards Keywords

the Customer displays LostOrStolenCards info under footer section
    HandleConsentYes
    Run Keyword And Continue On Failure    mouse over    ${getintouchHeaderLocator}

Views the text content on LostOrStolenCards
    run keyword and continue on failure    Verify text content on Fraudline block

Verify text content on LostOrStolenCards block
    element should contain    ${LostOrStolenCardsHeaderLocator}    ${LostOrStolenCardsHeaderTxt}
    element should contain    ${LostOrStolenCardsSALocation}       ${LostOrStolenCardsSAText}
    element should contain    ${LostOrStolenCardsIntLocator}       ${LostOrStolenCardsIntTxt}
    element should contain    ${LostOrStolenCardsSANumberLocation}       ${LostOrStolenCardsSANumberText}
    element should contain    ${LostOrStolenCardsInNumbertLocator}       ${LostOrStolenCardsIntNumberTxt}

Click on south africa LostOrStolenCards contact
    Run Keyword And Continue On Failure    Verify if south africa LostOrStolenCards number clickable
Verify if south africa LostOrStolenCards number clickable
    element attribute value should be    ${LostOrStolenCardsSANumberLocation}  href  ${LostOrStolenCardsSANumberHref}
    element should be enabled    ${LostOrStolenCardsSANumberLocation}
#    click element    ${LostOrStolenCardsSANumberText}

Click on international LostOrStolenCards contact
    Run Keyword And Continue On Failure    Verify if international LostOrStolenCards number clickable
Verify if international LostOrStolenCards number clickable
    element attribute value should be    ${LostOrStolenCardsInNumbertLocator}  href  ${LostOrStolenCardsIntNumberHref}
    element should be enabled    ${LostOrStolenCardsInNumbertLocator}

# Contact us link
the Customer displays ContactUs info under footer section
    mouse over    ${contactUsLocator}
Views the text content on ContactUs
    Element Should Contain  ${contactUsLocator}  ${contactUsPageTxt}
Click on Contact us link
    click element  ${contactUsLocator}
    wait until location contains    ${contactUsPageUrl}
    ${url}    get location
    Should Be True      '${contactUsPageUrl}' in '${url}'
#    ${contains}=    Run Keyword And Return Status    Should Contain    ${url}       ${contactUsPageUrl}
#    location should be    ${contactUsPageUrl}
    Go To Main Home Page

# seAllContactDetails

the Customer displays GiveUsACall under footer section
    mouse over    ${GiveUsACallLocator}
View the text content of GiveUsACall
#    Element Should Contain  ${GiveUsACallLocator}    Give us a call
    ${inner html}=    Get Element Attribute    ${GiveUsACallLocator}    innerHTML
    Should Be Equal    ${inner html}    ${GiveUsACallTxt}

Click on GiveUsACall
    click element  ${GiveUsACallLocator}
    wait until location contains    ${contactUsPageUrl}
    ${url}    get location
    Should Be True      '${GiveUsACallPageUrl}' in '${url}'
#    location should be    ${GiveUsACallPageUrl}
    Go To Main Home Page


