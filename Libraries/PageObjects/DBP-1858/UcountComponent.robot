*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***
${UcountImg}                      //*[@class="experience-component experience-commerce_assets-imageandtext"]//img
${UcountAltText}                   Join now to benefit every time you swipe your Credit, Cheque or Debit card.
${UcountTilteText}                  Join UCount Rewards

*** Keywords ***
the images in Image and Text Component displays
            Element Should Be Visible       ${UcountImg}
	        Page Should Contain Element     ${UcountImg}

it shows images to have alt and title attributes
            ${getAltAtrribute}=         Get Element Attribute       ${UcountImg}        attribute=alt
            Should Contain              ${getAltAtrribute}              ${UcountAltText}
            ${getTitleAtrribute}=       Get Element Attribute       ${UcountImg}        attribute=title
             Should Contain            ${getTitleAtrribute}              ${UcountTilteText}

