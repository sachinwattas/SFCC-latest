*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***
${UcountImg}                     //*[@class="experience-component experience-commerce_assets-ctabanner"]//img
${UcountAltText}                       For only R25 per month, UCount Rewards gives you access to great benefits, discounts and special offers.
${UcountTilteText}                     Join UCount Rewards

*** Keywords ***
the images in Title, Image, Text and CTA Component displays for Ucount

            Element Should Be Visible       ${UcountImg}
	        Page Should Contain Element     ${UcountImg}

it shows images to have alt and title attributes for Ucount
            ${getAltAtrribute}=         Get Element Attribute       ${UcountImg}        attribute=alt
            should be equal             ${UcountAltText}            ${getAltAtrribute}
            ${getTitleAtrribute}=       Get Element Attribute       ${UcountImg}        attribute=title
            should be equal             ${UcountTilteText}          ${getTitleAtrribute}

