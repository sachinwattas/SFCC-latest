*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***
${BankingAppImg}                       (//*[@data-text="Banking app tile click"]/img)[1]
${BankingAppAltText}                    Banking app
${BankingAppTitleText}                 Banking app

${OverdraftsImg}                       (//*[@data-text="Overdrafts tile click"]/img)[1]
${OverdraftsAltTxt}                    Overdrafts
${OverdraftsTitleTxt}                  Overdrafts

${PersonalLoansImg}                    (//*[@data-text="Personal loans tile click"]/img)[1]
${PersonalLoansAltTxt}                 Personal loans
${PersonalLoansTitleTxt}                  Personal loans


${GoldCreditCardImg}                    (//*[@data-text="Gold credit card tile click"]/img)[1]
${GoldCreditCardAltTxt}                 Gold credit card
${GoldCreditCardTitleTxt}               Gold credit card

*** Keywords ***


the images in Needs and goals banner Component displays for banking app
            Element Should Be Visible       ${BankingAppImg}
	        Page Should Contain Element     ${BankingAppImg}

it shows images to have alt and title attributes for banking app
            ${getAltAtrribute}=         Get Element Attribute           ${BankingAppImg}        attribute=alt
            should contain               ${getAltAtrribute}             ${BankingAppAltText}
            ${getTitleAtrribute}=       Get Element Attribute           ${BankingAppImg}        attribute=title
           should contain                ${BankingAppTitleText}            ${getTitleAtrribute}

the images in Needs and goals banner Component displays for overdraft
            Element Should Be Visible       ${OverdraftsImg}
	        Page Should Contain Element     ${OverdraftsImg}

it shows images to have alt and title attributes for overdraft
            ${getAltAtrribute}=         Get Element Attribute           ${OverdraftsImg}        attribute=alt
            should contain              ${getAltAtrribute}              ${OverdraftsAltTxt}
            ${getTitleAtrribute}=       Get Element Attribute           ${OverdraftsImg}         attribute=title
            should contain              ${OverdraftsTitleTxt}           ${getTitleAtrribute}


the images in Needs and goals banner Component displays for Personal loans
            Element Should Be Visible       ${PersonalLoansImg}
	        Page Should Contain Element     ${PersonalLoansImg}

it shows images to have alt and title attributes for Personal loans
            ${getAltAtrribute}=         Get Element Attribute           ${PersonalLoansImg}            attribute=alt
            should contain              ${getAltAtrribute}              ${PersonalLoansAltTxt}
            ${getTitleAtrribute}=       Get Element Attribute           ${PersonalLoansImg}            attribute=title
           should contain                ${PersonalLoansTitleTxt}       ${getTitleAtrribute}

the images in Needs and goals banner Component displays for Gold Credit Card
            Element Should Be Visible       ${GoldCreditCardImg}
	        Page Should Contain Element     ${GoldCreditCardImg}

it shows images to have alt and title attributes for Gold Credit Card
            ${getAltAtrribute}=         Get Element Attribute           ${GoldCreditCardImg}              attribute=alt
            should contain              ${getAltAtrribute}              ${GoldCreditCardAltTxt}
            ${getTitleAtrribute}=       Get Element Attribute           ${GoldCreditCardImg}             attribute=title
           should contain               ${GoldCreditCardTitleTxt}         ${getTitleAtrribute}
