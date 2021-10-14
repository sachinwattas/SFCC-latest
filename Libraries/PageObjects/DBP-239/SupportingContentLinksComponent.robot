*** Settings ***
Documentation    Feature: Supporting Content and Links Component repositores/resources
Library    SeleniumLibrary
Resource    ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***


${layoutComponent}    //html/body/div[1]/div/div/div[2]/div/div[8]

#Card 1 Resources
${layoutComponentTitle}    //html/body/div[1]/div/div/div[2]/div/div[8]/div/h5
${supporting-content_card1-Block}     //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[1]/div
${supporting-content-card1-title}    //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[1]/div/h4
${supporting-content_card1-content}    //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[1]/div/div
${card1-content-link1}    //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[1]/div/div/p[3]/a
${card1-content-text}    //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[1]/div/div/p[1]

#Card 2 Resources
${supporting-content_card2-Block}     //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[2]/div
${supporting-content-card2-title}    //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[2]/div/h4
${supporting-content_card2-content}    //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[2]/div/div
${card2-content-link1}    //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[2]/div/div/p[3]/a
${card2-content-text}    //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[2]/div/div/p[1]

#Card 3 Resources
${supporting-content_card3-Block}     //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[3]/div
${supporting-content-card3-title}    //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[3]/div/h4
${supporting-content_card3-content}    //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[3]/div/div
${card3-content-link1}    //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[3]/div/div/p[3]/a
${card3-content-text}    //html/body/div[1]/div/div/div[2]/div/div[8]/div/div/div[3]/div/div/p[1]

#navigation Links when clicked on hyperlink elements
${card1-link1}    /southafrica/personal/products-and-services/ways-to-bank/self-service-banking/onlinebanking
${card2-link1}    /southafrica/personal/products-and-services/ways-to-bank/innovative-payment-solutions/snapscan
${card3-link1}    /southafrica/personal/products-and-services/bank-with-us/bank-accounts/managing-your-account/keeping-your-card-safe

*** Keywords ***


the Customer displays the content blocks
#    Run Keyword And Continue On Failure    Click Element    //html/body/div[2]/header/div[3]/div/div/div[1]/nav/div/ul/li[1]/a/span
#    Run Keyword And Continue On Failure    Click Link    //html/body/div[1]/header/div[3]/div/div/div[1]/nav/div/ul/li[1]/a
#    Run Keyword And Continue On Failure    location should be    https://krishnateja.rasappajayanna%40standardbank.co.za:Krish123@bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/southafrica/personal/?lang=en_ZA
    Go To  ${PersonalPageLocation1}
    Run Keyword And Continue On Failure    Mouse Over    ${layoutComponent}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${layoutComponent}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${layoutComponentTitle}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${supporting-content_card1-Block}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${supporting-content-card1-title}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${supporting-content_card1-content}

    Run Keyword And Continue On Failure    Element Should Be Visible    ${supporting-content_card2-Block}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${supporting-content-card2-title}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${supporting-content_card2-content}

    Run Keyword And Continue On Failure    Element Should Be Visible    ${supporting-content_card3-Block}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${supporting-content-card3-title}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${supporting-content_card3-content}

the Title on component, the title, texts and URLs on the content blocks are displayed
    Run Keyword And Continue On Failure    Element Should Contain    ${supporting-content-card1-title}    Easy ways to bank
    Run Keyword And Continue On Failure    Element Should Contain    ${supporting-content-card2-title}    Quick ways to pay
    Run Keyword And Continue On Failure    Element Should Contain    ${supporting-content-card3-title}    Security Centre
    ${url-Chk}=  set variable    ${urlLink}${card1-link1}
    log     ${url-Chk}
    Run Keyword And Continue On Failure    Element Attribute Value Should Be    ${card1-content-link1}    href    ${url-Chk}
    ${url-Chk}=  set variable    ${urlLink}${card2-link1}
    Run Keyword And Continue On Failure    Element Attribute Value Should Be    ${card2-content-link1}    href    ${url-Chk}
    ${url-Chk}=  set variable    ${urlLink}${card3-link1}
    Run Keyword And Continue On Failure    Element Attribute Value Should Be    ${card3-content-link1}    href    ${url-Chk}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${card1-content-text}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${card2-content-text}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${card3-content-text}

the Customer selects the link
    Run Keyword And Continue On Failure    Click Link    ${card1-content-link1}
    #Switch Window    New
    ${url-Chk}=  set variable    ${urlLink}${card1-link1}
    Run Keyword And Continue On Failure    Location Should Be    ${url-Chk}
    #Switch Window    Main
    Go Back
    Run Keyword And Continue On Failure    Click Link    ${card2-content-link1}
    ${url-Chk}=  set variable    ${urlLink}${card2-link1}
    Run Keyword And Continue On Failure    Location Should Be    ${url-Chk}
    go back
    Run Keyword And Continue On Failure    Click Link    ${card3-content-link1}
    ${url-Chk}=  set variable    ${urlLink}${card3-link1}
    Run Keyword And Continue On Failure    Location Should Be    ${url-Chk}
    go back
    Location Should Be    ${PersonalPageLocation1}

the page behind the link is opened in the same browser tab
    Run Keyword And Continue On Failure    Click Link    ${card3-content-link1}
    ${url-Chk}=  set variable    ${urlLink}${card3-link1}
    Run Keyword And Continue On Failure    Location Should Be    ${url-Chk}
    go back
    Location Should Be    ${PersonalPageLocation1}

the page behind the link is opened in a new browser tab
    Run Keyword And Continue On Failure    Click Link    ${card1-content-link1}
#    Switch Window    New
    ${url-Chk}=  set variable    ${urlLink}${card1-link1}
    Run Keyword And Continue On Failure    Location Should Be    ${url-Chk}
#    Switch Window    Main
    go back
    Location Should Be    ${PersonalPageLocation1}