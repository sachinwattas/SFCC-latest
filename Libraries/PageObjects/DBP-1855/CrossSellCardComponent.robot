*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***
${CreditCardForBusinessImg}              (//*[@data-swiper-slide-index=0]//picture)[1]//img
${CreditCardForBusinessAltText}                   Credit cards to help you manage your credit for Business.
${CreditCardForBusinessTitleText}                 Credit cards for your business

${InsuranceForBusinessImg}                       (//*[@data-swiper-slide-index=1]//picture)[1]//img
${InsuranceForBusinessTxt}                    Get advice on a wide range of short-term insurance products. Get your business back up and running when something unexpected happens.
${InsuranceForBusinessTitleTxt}                  Insurance for business

${HomeBuyingTipsImg}                              (//*[@data-swiper-slide-index=2]//picture)[2]//img
${HomeBuyingTipsAltTxt}                           Buying your first home is exciting, but it can also be little scary. Make sure your joy is not overshadowed by concerns about debt with these home buying tips.
${HomeBuyingTipsTitleTxt}                         Home buying tips for first-timers


${NavigationArrowNext}                     //*[@class="swiper-button-next"]



${PreOwnedCarImg}                      (//*[@data-swiper-slide-index=3]//picture)[2]//img
${PreOwnedCarAltTxt}                 Get affordable Pre-Owned cars that are in our care, simply search by make, model, price, and mileage.
${PreOwnedCarTitleTxt}              Want to buy a Pre-Owned Car?


*** Keywords ***


the images is displays
            [Arguments]             ${LocatorImg}
             Wait Until Keyword Succeeds    1 Min  5 Sec   Element Should Be Visible           ${LocatorImg}
	        Wait Until Keyword Succeeds    1 Min  5 Sec   Page Should Contain Element         ${LocatorImg}

it shows images to have alt and title attributes

            [Arguments]      ${LocatorImg}     ${LocatorAltText}            ${locatorTitleText}
            ${getAltAtrribute}=             Get Element Attribute           ${LocatorImg}         attribute=alt
            should contain any                 ${getAltAtrribute}           ${LocatorAltText}
            ${getTitleAtrribute}=            Get Element Attribute           ${LocatorImg}         attribute=title
            should contain                      ${getTitleAtrribute}         ${locatorTitleText}

the images in Cross-sell carousel card Component displays for Credit Card Business
            Wait Until Keyword Succeeds    1 Min  5 Sec   scroll element into view      ${CreditCardForBusinessImg}
            the images is displays      ${CreditCardForBusinessImg}

it shows images to have alt and title attributes for Credit Card Business
           it shows images to have alt and title attributes      ${CreditCardForBusinessImg}    ${CreditCardForBusinessAltText}    ${CreditCardForBusinessTitleText}

the images in Cross-sell carousel card Component displays for Insurance business
#            Wait Until Keyword Succeeds    1 Min  5 Sec   scroll element into view      ${CreditCardForBusinessImg}
            Reload Page
            the images is displays      ${InsuranceForBusinessImg}

it shows images to have alt and title attributes for Insurance business
           it shows images to have alt and title attributes      ${InsuranceForBusinessImg}     ${InsuranceForBusinessTxt}  ${InsuranceForBusinessTitleTxt}

the images in Cross-sell carousel card Component displays for Home buying tips
#            Wait Until Keyword Succeeds    1 Min  5 Sec   scroll element into view      ${NavigationArrowNext}
#            Wait Until Keyword Succeeds    1 Min  5 Sec         click element                    ${NavigationArrowNext}
            wait until element is visible    ${HomeBuyingTipsImg}
            the images is displays           ${HomeBuyingTipsImg}

it shows images to have alt and title attributes for Home buying tips

           it shows images to have alt and title attributes      ${HomeBuyingTipsImg}     ${HomeBuyingTipsAltTxt}     ${HomeBuyingTipsTitleTxt}



the images in Cross-sell carousel card Component displays for Pre-Owned Car
            Wait Until Keyword Succeeds    1 Min  5 Sec   scroll element into view      ${NavigationArrowNext}
            Wait Until Keyword Succeeds    1 Min  5 Sec     click element                    ${NavigationArrowNext}
            wait until element is visible    ${PreOwnedCarImg}
            the images is displays   ${PreOwnedCarImg}

it shows images to have alt and title attributes for Pre-Owned Car
           it shows images to have alt and title attributes      ${PreOwnedCarImg}      ${PreOwnedCarAltTxt}      ${PreOwnedCarTitleTxt}

