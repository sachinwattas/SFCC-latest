*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***
${InsuranceImg}                       (//*[@data-text="I need insurance tile click"]/img)[1]
${InsuranceAltText}                    I need insurance
${InsuranceTitleText}                 I need insurance

${NeedAccountImg}                       (//*[@data-text="I need a bank account tile click"]/img)[1]
${NeedAccountAltTxt}                    I need a bank account
${NeedAccountTitleTxt}                  I need a bank account

${NeedHomeLoanImg}                    (//*[@data-text="I need a loan tile click"]/img)[1]
${NeedHomeLoanAltTxt}                 I need a loan
${NeedHomeLoanTitleTxt}               I need a loan


${NeedTravelAssistanceImg}                     (//*[contains(@data-text," I need travel assistance tile click")]/img)[1]
${NeedTravelAssistanceAltTxt}                 I need travel assistance
${NeedTravelAssistanceTitleTxt}               I need travel assistance


${INeedACarImg}                     (//*[contains(@data-text,"I need a car tile click")]/img)[1]
${INeedACarAltTxt}                 I need a car
${INeedACarTitleTxt}               I need a car

${INeedARetirementFundImg}                     (//*[contains(@data-text,"I need to save tile click")]/img)[1]
${INeedARetirementFundAltTxt}                 I need to save
${INeedARetirementFundTitleTxt}               I need to save
*** Keywords ***


the images is displays
            [Arguments]             ${LocatorImg}
            Element Should Be Visible           ${LocatorImg}
	        Page Should Contain Element         ${LocatorImg}

it shows images to have alt and title attributes

            [Arguments]      ${LocatorImg}     ${LocatorAltText}            ${locatorTitleText}
            ${getAltAtrribute}=             Get Element Attribute           ${LocatorImg}         attribute=alt
            should contain any                 ${getAltAtrribute}           ${LocatorAltText}
            ${getTitleAtrribute}=            Get Element Attribute           ${LocatorImg}         attribute=title
            should contain                      ${getTitleAtrribute}         ${locatorTitleText}

the images in Needs and goals banner Component displays for Insurance
            the images is displays      ${InsuranceImg}

it shows images to have alt and title attributes for Insurance
           it shows images to have alt and title attributes      ${InsuranceImg}    ${InsuranceAltText}    ${InsuranceTitleText}

the images in Needs and goals banner Component displays for I Need Account
            the images is displays      ${NeedAccountImg}

it shows images to have alt and title attributes for I Need Account
           it shows images to have alt and title attributes      ${NeedAccountImg}     ${NeedAccountAltTxt}  ${NeedAccountTitleTxt}

the images in Needs and goals banner Component displays for I need a home loan
            the images is displays     ${NeedHomeLoanImg}

it shows images to have alt and title attributes for I need a home loan
           it shows images to have alt and title attributes      ${NeedHomeLoanImg}     ${NeedHomeLoanAltTxt}    ${NeedHomeLoanTitleTxt}

the images in Needs and goals banner Component displays for I need travel assistance
            the images is displays    ${NeedTravelAssistanceImg}

it shows images to have alt and title attributes for I need travel assistance
           it shows images to have alt and title attributes      ${NeedTravelAssistanceImg}     ${NeedTravelAssistanceAltTxt}     ${NeedTravelAssistanceTitleTxt}


the images in Needs and goals banner Component displays for I need a car
            the images is displays    ${INeedACarImg}

it shows images to have alt and title attributes for I need a car
           it shows images to have alt and title attributes      ${INeedACarImg}     ${INeedACarAltTxt}     ${INeedACarAltTxt}

the images in Needs and goals banner Component displays for I need a retirement fund
            the images is displays    ${INeedARetirementFundImg}

it shows images to have alt and title attributes for I need a retirement fund
           it shows images to have alt and title attributes      ${INeedARetirementFundImg}      ${INeedARetirementFundAltTxt}       ${INeedARetirementFundTitleTxt}