*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***
${SubscribeRealTimeUpdatesImg}                       (//*[@class="mainbanner-image image-fluid common-image-component "])[1]
${SubscribeRealTimeUpdatesAltText}                    Get real-time access to information on interruptions and outages on all your favourite services on our app or internet banking.
${SubscribeRealTimeUpdatesTitleText}                 Subscribe for real-time updates

${RevolvingLoanImageLink}                 //*[@class="pd-carousel-indicators"]//li[2]
${RevolvingLoanImg}                       (//*[@class="mainbanner-image image-fluid common-image-component "])[2]
${RevolvingLoanAltTxt}                    Access up to R300 000 whenever you need it and save up to 3%* on your interest rate.<br/ > *T&Cs apply.
${RevolvingLoanTitleTxt}                  Get your Revolving Loan online

#${MyMoPlusImageLink}                 //*[@class="pd-carousel-indicators"]//li[3]
#${MyMoPlusLiteracyImg}                       (//*[@class="mainbanner-image image-fluid common-image-component "])[3]
#${MyMoPluslLiteracyAltTxt}                    MyMo Plus Live “le gold life”
#${MyMoPlusTitleTxt}                  MyMo Plus


#
#${PersonalLoanImg}                       (//*[@class="side banner-right "])[1]//img
#${PersonalLoanAltText}                    Apply online today to find out if you qualify within minutes.
#${PersonalLoanTitleText}                 Get a personal loan and save 3%
#
#${CarouselIndicators2Img}                //*[@class="pd-carousel-indicators"]//li[2]
#${FuneralPlanImg}                       (//*[@class="side banner-right "])[2]//img
#${FuneralPlanAltTxt}                    Choose your cover amount, your monthly premium and the benefits you need.
#${FuneralPlanTitleTxt}                  Our Funeral Plan evolves with you
#
#${CarouselIndicators3Img}                //*[@class="pd-carousel-indicators"]//li[3]
#${VishingScammersImg}                      (//*[@class="side banner-right "])[3]//img
#${VishingScammersAltTxt}                   Learn how to protect yourself from scammers posing as bank employees as they can trick you into sharing sensitive data.
#${VishingScammersTitleTxt}                 Don’t be fooled by Vishing scammers
#
#${CarouselIndicators4Img}                 //*[@class="pd-carousel-indicators"]//li[4]
#${MyMoAccountImg}                        (//*[@class="side banner-right "])[4]//img
#${MyMoAccountAltTxt}                     Open a MyMo Account today and pay zero fees
#${MyMoAccountTitleTxt}                  Save money with MyMo
#
#${CarouselIndicators5Img}                 //*[@class="pd-carousel-indicators"]//li[5]
#${MakeMorePossibleImg}                          (//*[@class="side banner-right "])[5]//img
#${MakeMorePossibleAltTxt}                      Invest for the tomorrow you deserve with a MoneyMarket Select investment account, while earning competitive returns.
#${MakeMorePossibleTxt}                    Make more possible when you invest
#
#${CarouselIndicators6Img}              //*[@class="pd-carousel-indicators"]//li[6]
#${Pricing2021Img}                     (//*[@class="side banner-right "])[6]//img
#${Pricing2021AltTxt}                  A focus on simplicity and affordability
#${Pricing2021TitleTxt}                2021 Pricing
*** Keywords ***

the images in Banner Component displays for Subscribe for real-time updates
            Element Should Be Visible       ${SubscribeRealTimeUpdatesImg}
	        Page Should Contain Element     ${SubscribeRealTimeUpdatesImg}

it shows images to have alt and title attributes for Subscribe for real-time updates
            ${getAltAtrribute}=         Get Element Attribute           ${SubscribeRealTimeUpdatesImg}      attribute=alt
            should contain               ${getAltAtrribute}              ${SubscribeRealTimeUpdatesAltText}
            ${getTitleAtrribute}=       Get Element Attribute           ${SubscribeRealTimeUpdatesImg}        attribute=title
          should contain                ${SubscribeRealTimeUpdatesTitleText}         ${getTitleAtrribute}

the images in Banner Component displays for Revolving Loan
            click element                      ${RevolvingLoanImageLink}
            wait until element is visible        ${RevolvingLoanImg}
	        page Should Contain Element       ${RevolvingLoanImg}

it shows images to have alt and title attributes for Revolving Loan
            ${getTitleAtrribute}=       Get Element Attribute           ${RevolvingLoanImg}         attribute=title
            should contain              ${RevolvingLoanTitleTxt}          ${getTitleAtrribute}
            ${getAltAtrribute}=         Get Element Attribute           ${RevolvingLoanImg}       attribute=alt
            Log To Console              ${EMPTY}
            Log To Console              ${getAltAtrribute}
            Log To Console              ${EMPTY}
#            Log To Console              ${RevolvingLoanAltTxt}
            should contain              ${getAltAtrribute}              ${RevolvingLoanAltTxt}



#the images in Banner Component displays for MyMo Plus
#            click element                   ${MyMoPlusImageLink}
#            wait until element is visible       ${MyMoPlusLiteracyImg}
#	        page Should Contain Element    ${MyMoPlusLiteracyImg}
#
#it shows images to have alt and title attributes for MyMo Plus
#            ${getAltAtrribute}=         Get Element Attribute           ${MyMoPlusLiteracyImg}       attribute=alt
#           Should Contain Any               ${getAltAtrribute}              ${MyMoPluslLiteracyAltTxt}
#            ${getTitleAtrribute}=       Get Element Attribute          ${MyMoPlusLiteracyImg}        attribute=title
#            Should Contain Any            ${getTitleAtrribute}          ${MyMoPlusTitleTxt}

#
#the images is displays
#            [Arguments]             ${LocatorImg}
#            Element Should Be Visible           ${LocatorImg}
#	        Page Should Contain Element         ${LocatorImg}
#
#it shows images to have alt and title attributes
#
#            [Arguments]      ${LocatorImg}     ${LocatorAltText}            ${locatorTitleText}
#            ${getAltAtrribute}=               Get Element Attribute           ${LocatorImg}         attribute=alt
#            should contain any                 ${getAltAtrribute}           ${LocatorAltText}
#            ${getTitleAtrribute}=             Get Element Attribute           ${LocatorImg}         attribute=title
#            should contain                      ${getTitleAtrribute}         ${locatorTitleText}
#
#the images in Hero Banner Component displays for personal loan
#            the images is displays      ${PersonalLoanImg}
#
#it shows images to have alt and title attributes for personal loan
#           it shows images to have alt and title attributes      ${PersonalLoanImg}    ${PersonalLoanAltText}     ${PersonalLoanTitleText}
#
#the images in Hero Banner Component displays for Funeral Plan
#            click element              ${CarouselIndicators2Img}
#            wait until element is visible  ${FuneralPlanImg}
#            the images is displays     ${FuneralPlanImg}
#
#it shows images to have alt and title attributes for Funeral Plan
#           it shows images to have alt and title attributes      ${FuneralPlanImg}    ${FuneralPlanAltTxt}     ${FuneralPlanTitleTxt}
#
#
#the images in Hero Banner Component displays for Vishing Scammers
#            click element              ${CarouselIndicators3Img}
#            wait until element is visible  ${VishingScammersImg}
#            the images is displays    ${VishingScammersImg}
#
#it shows images to have alt and title attributes for Vishing Scammers
#           it shows images to have alt and title attributes      ${VishingScammersImg}      ${VishingScammersAltTxt}      ${VishingScammersTitleTxt}
#
#the images in Hero Banner Component displays for MyMo Account
#            click element              ${CarouselIndicators4Img}
#            wait until element is visible  ${MyMoAccountImg}
#            the images is displays    ${MyMoAccountImg}
#
#it shows images to have alt and title attributes for MyMo Account
#           it shows images to have alt and title attributes      ${MyMoAccountImg}       ${MyMoAccountAltTxt}      ${MyMoAccountTitleTxt}
#
#the images in Hero Banner Component displays for Make more possible
#            click element              ${CarouselIndicators5Img}
#            wait until element is visible  ${MakeMorePossibleImg}
#            the images is displays    ${MakeMorePossibleImg}
#
#it shows images to have alt and title attributes for Make more possible
#           it shows images to have alt and title attributes      ${MakeMorePossibleImg}        ${MakeMorePossibleAltTxt}      ${MakeMorePossibleTxt}
#
#the images in Hero Banner Component displays for Pricing 2021
#            click element              ${CarouselIndicators6Img}
#            wait until element is visible  ${Pricing2021Img}
#            the images is displays    ${Pricing2021Img}
#
#it shows images to have alt and title attributes for Pricing 2021
#           it shows images to have alt and title attributes      ${Pricing2021Img}        ${Pricing2021AltTxt}     ${Pricing2021TitleTxt}
