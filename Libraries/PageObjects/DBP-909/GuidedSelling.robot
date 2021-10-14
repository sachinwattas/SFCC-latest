*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${GuidedSellingcbx}    //*[@id="Personal"]/div[2]/div/div[1]/div/div[2]/div/div[2]/div[1]/div/div/div/select
${guidedsellgval}    /s/SB-COZA/southafrica/guided-selling
${gsredirurl}    https://storefront:coza2020@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/southafrica/guided-selling

${worldcitcrcardtitle}    //body/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]
${worldcitcrcardimg}    //body/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/img[1]
${worldcitcrcardtxt}    //body[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/p[1]
${worldcitcrcardbtn}    //body[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[2]/div[1]/a[1]

${titletxt25char}    LongtextTitlewithtwentyfivecharacters
${desctxt90char}    LongtextDescriptionwithtwentyfivecharacters
${buttontxt25char}    LongtextButtonwithtwentyfivecharacters

${doiqualredirurl}    https://storefront:coza2020@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/commerce/guided-selling/quote?pid=ZWCC

${btnhovercolor}    rgba(0, 105, 196, 1)

*** Keywords ***
the Site Manager has entered text for the button
    element should be visible    ${GuidedSellingcbx}

the Customer displays the component
    select from list by value    ${GuidedSellingcbx}    ${guidedsellgval}

the image is displayed
    location should be    ${gsredirurl}
    element should be visible    ${worldcitcrcardimg}

the title is displayed
    element should be visible    ${worldcitcrcardtitle}

the text is displayed
    element should be visible    ${worldcitcrcardtxt}

the button is displayed
    element should be visible    ${worldcitcrcardbtn}

the Site Manager has entered more than 25 characters for the title
    element should be visible    ${GuidedSellingcbx}

entered more than 90 characters for the text
    select from list by value    ${GuidedSellingcbx}    ${guidedsellgval}

entered more than 25 characters for the button
    location should be    ${gsredirurl}

the Customer displays the component
    element should be visible    ${worldcitcrcardimg}

the title is displayed with the first 25 entered characters
    element should be visible    ${worldcitcrcardtitle}
    ${gettitletxt}  get text    ${worldcitcrcardtitle}
    run keyword and continue on failure    should be equal as strings    ${gettitletxt}    ${titletxt25char}

the text is displayed with the first 90 entered characters
    element should be visible    ${worldcitcrcardtxt}
    ${gettitletxt}  get text    ${worldcitcrcardtxt}
    run keyword and continue on failure    should be equal as strings    ${gettitletxt}    ${desctxt90char}

the button is displayed with the first 25 entered characters
    element should be visible    ${worldcitcrcardbtn}
    ${gettitletxt}  get text    ${worldcitcrcardbtn}
    run keyword and continue on failure    should be equal as strings    ${gettitletxt}    ${buttontxt25char}

the Site Manager has set the Button URL
    element should be visible    ${GuidedSellingcbx}
    select from list by value    ${GuidedSellingcbx}    ${guidedsellgval}

the Customer selects button
    element should be visible    ${worldcitcrcardbtn}
    click element    ${worldcitcrcardbtn}

the page behind the URL is opened in the same browser tab
    location should be    ${doiqualredirurl}

the Customer hovers over (tab and hold on Mobile) the button
    mouse over    ${worldcitcrcardbtn}

the button is displayed in hover mode (darker background)
    ${elem}    Get Webelement    ${worldcitcrcardbtn}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${bgColor}
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    run keyword and continue on failure  Should Be True  '${bgColor}'=='${btnhovercolor}'

the Site Manager has entered no text for the button
    element should be visible    ${GuidedSellingcbx}

the button is not displayed
    element should not be visible    ${worldcitcrcardbtn}