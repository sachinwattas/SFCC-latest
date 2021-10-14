*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***
${StudentLoanImg}                       (//*[@data-pid='student-loans']//img)[1]
${StudentAltText}                       Student loans
${StudentTilteText}                     Student loans

${VehicleAndAssetInsuranceImg}          (//*[@data-pid='vehicle-asset-finance']//img)[1]
${VehicleAndAssetInsuranceAltTxt}       Vehicle & Asset finance
${VehicleAndAssetInsuranceTitleTxt}     Vehicle & Asset finance

${OverdraftImg}                         (//*[@data-pid='overdraft']//img)[1]
${OverdraftAltTxt}                      Overdraft
${OverdraftTitleTxt}                    Overdraft


${CreditCardImg}                        (//*[@data-pid='credit-card']//img)[1]
${CreditCardAltTxt}                        Credit Card
${CreditCardTitleTxt}                   Credit Card

${PersonalLoanImg}                        (//*[@data-pid='personal-loan']//img)[1]
${PersonalLoanAltTxt}                     Personal Loan
${PersonalLoanTitleTxt}                   Personal Loan


${HomeloansImg}                        (//*[@data-pid='home-loans']//img)[1]
${HomeloansAltTxt}                     Home Loans
${HomeloansTitleTxt}                   Home Loans
*** Keywords ***

the images in Guided Selling Listing Page - Product Tile Component displays for student loan
            Element Should Be Visible       ${StudentLoanImg}
	        Page Should Contain Element     ${StudentLoanImg}

it shows images to have alt and title attributes for student loan
            ${getAltAtrribute}=         Get Element Attribute       ${StudentLoanImg}     attribute=alt
            should be equal             ${StudentAltText}           ${getAltAtrribute}
            ${getTitleAtrribute}=       Get Element Attribute       ${StudentLoanImg}     attribute=title
            should be equal             ${StudentTilteText}         ${getTitleAtrribute}

the images in Guided Selling Listing Page - Product Tile Component displays for Vehicle and asset insurance
            Element Should Be Visible       ${VehicleAndAssetInsuranceImg}
	        Page Should Contain Element     ${VehicleAndAssetInsuranceImg}

it shows images to have alt and title attributes for Vehicle and asset insurance
            ${getAltAtrribute}=         Get Element Attribute                       ${VehicleAndAssetInsuranceImg}       attribute=alt
            should be equal             ${VehicleAndAssetInsuranceAltTxt}           ${getAltAtrribute}
            ${getTitleAtrribute}=       Get Element Attribute                       ${VehicleAndAssetInsuranceImg}     attribute=title
            should be equal             ${VehicleAndAssetInsuranceTitleTxt}         ${getTitleAtrribute}

the images in Guided Selling Listing Page - Product Tile Component displays for Overdraft
            Element Should Be Visible       ${OverdraftImg}
	        Page Should Contain Element     ${OverdraftImg}

it shows images to have alt and title attributes for Overdraft
            ${getAltAtrribute}=         Get Element Attribute        ${OverdraftImg}       attribute=alt
            should be equal             ${OverdraftAltTxt}           ${getAltAtrribute}
            ${getTitleAtrribute}=       Get Element Attribute        ${OverdraftImg}       attribute=title
            should be equal             ${OverdraftTitleTxt}         ${getTitleAtrribute}

the images in Guided Selling Listing Page - Product Tile Component displays for credit-card
            Element Should Be Visible       ${CreditCardImg}
	        Page Should Contain Element     ${CreditCardImg}

it shows images to have alt and title attributes for credit-card
            ${getAltAtrribute}=         Get Element Attribute        ${CreditCardImg}      attribute=alt
            should be equal             ${CreditCardAltTxt}            ${getAltAtrribute}
            ${getTitleAtrribute}=       Get Element Attribute        ${CreditCardImg}       attribute=title
            should be equal             ${CreditCardTitleTxt}          ${getTitleAtrribute}

the images in Guided Selling Listing Page - Product Tile Component displays for personal-loan
            Element Should Be Visible       ${PersonalLoanImg}
	        Page Should Contain Element     ${PersonalLoanImg}

it shows images to have alt and title attributes for personal-loan
            ${getAltAtrribute}=         Get Element Attribute        ${PersonalLoanImg}       attribute=alt
            should be equal             ${PersonalLoanAltTxt}        ${getAltAtrribute}
            ${getTitleAtrribute}=       Get Element Attribute        ${PersonalLoanImg}        attribute=title
            should be equal             ${PersonalLoanTitleTxt}      ${getTitleAtrribute}

the images in Guided Selling Listing Page - Product Tile Component displays for home-loans
            Element Should Be Visible       ${HomeloansImg}
	        Page Should Contain Element     ${HomeloansImg}

it shows images to have alt and title attributes for home-loans
            ${getAltAtrribute}=         Get Element Attribute        ${HomeloansImg}        attribute=alt
            should be equal             ${HomeloansAltTxt}           ${getAltAtrribute}
            ${getTitleAtrribute}=       Get Element Attribute        ${HomeloansImg}         attribute=title
            should be equal             ${HomeloansTitleTxt}         ${getTitleAtrribute}

