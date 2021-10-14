*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***
${FindRightBankAccountImg}                     //*[@class="swiper-slide swiper-slide-article swiper-slide-active"]//img
${FindRightBankAccountAltText}                 Happy with the basics, or want the extra benefits your lifestyle demands? Safe and easy to use, our bank accounts give you the freedom to
${FindRightBankAccountTilteText}               Find the right bank account

${PersonaLoansImg}                     //*[@class="swiper-slide swiper-slide-article swiper-slide-next"]//img
${PersonaLoansAltTxt}                 There are many different types of loans, from personal and home loans to vehicle finance and student loans. When the time comes for you to borrow money, it’s important to know what type of loan you’re looking for?
${PersonaLoansTitleTxt}               5 Types of personal loans

${DebtCareImg}                     (//*[@class="swiper-slide swiper-slide-article swiper-slide-duplicate-prev"])[1]//img
${DebtCareAltTxt}                   Debt care
${DebtCareTitleTxt}               Debt Care
*** Keywords ***
the images in Article Carousel Block Component displays for Find the right bank account

            Element Should Be Visible      ${FindRightBankAccountImg}
	        Page Should Contain Element     ${FindRightBankAccountImg}

it shows images to have alt and title attributes for Find the right bank account
            ${getAltAtrribute}=         Get Element Attribute       ${FindRightBankAccountImg}     attribute=alt
            Should Contain             ${getAltAtrribute}           ${FindRightBankAccountAltText}
            ${getTitleAtrribute}=       Get Element Attribute       ${FindRightBankAccountImg}     attribute=title
            Should Contain               ${getTitleAtrribute}       ${FindRightBankAccountTilteText}

the images in Article Carousel Block Component displays for personal loans
            Element Should Be Visible      ${PersonaLoansImg}
	        Page Should Contain Element   ${PersonaLoansImg}

it shows images to have alt and title attributes for personal loans
            ${getAltAtrribute}=         Get Element Attribute                       ${PersonaLoansImg}     attribute=alt
            should contain              ${getAltAtrribute}                          ${PersonaLoansAltTxt}
            ${getTitleAtrribute}=       Get Element Attribute                       ${PersonaLoansImg}     attribute=title
            should contain              ${PersonaLoansTitleTxt}                     ${getTitleAtrribute}

the images in Article Carousel Block Component displays for Debt Care
            Element Should Be Visible       ${DebtCareImg}
	        Page Should Contain Element     ${DebtCareImg}

it shows images to have alt and title attributes for Debt Care
            ${getAltAtrribute}=         Get Element Attribute                       ${DebtCareImg}   attribute=alt
            should contain              ${getAltAtrribute}                          ${DebtCareAltTxt}
            ${getTitleAtrribute}=       Get Element Attribute                       ${DebtCareImg}   attribute=title
            should contain              ${getTitleAtrribute}                        ${DebtCareTitleTxt}
