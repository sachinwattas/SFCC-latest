*** Settings ***
Library    SeleniumLibrary
Library    ../Resource.py

*** Variables ***
${needHelp?}    //*[@id="page__wrapper"]/div[2]/div[2]/span
#Contact Us
${contactUsTab}    //*[@data-target="#contact-us"]
${contactUsContent}    //*[@id="nav-tabContent"]
${lostOrStolenCards}    //*[@id="contact-us"]/div/div/h4[1]
${lrsSAMobile}    //*[@id="contact-us"]/div/div/li[1]
${lrsIntPhone}    //*[@id="contact-us"]/div/div/li[2]
${getInTouch}    //*[@id="contact-us"]/div/div/h4[2]
${gitSAMobile}    //*[@id="contact-us"]/div/div/h4[2]
${gitIntPhone}    //*[@id="contact-us"]/div/div/h4[2]
${seeContactDethlink}    //a[text()='See all contact details']
${seecontactdetredir}    //h1[contains(text(),'Give us a call')]
${findBranchhlink}    //*[@id="contact-us"]/div/div/div/a[2]
${findbranchRedir}    //div/div/div[1]/div/div/h1
#Call Me Back
${callMeBackTab}    //*[@data-target="#call-me-back"]
${callMeBackContent}    //*[@id="call-me-back"]/form
${submitDetailsDesc}    //*[@id="call-me-back"]/form/div[4]/p
${submitDetailsTxt}    Submit your details and we’ll get in touch with you to answer your questions
${firstName}    //*[@id="call-me-back"]/form/div[4]/div[1]/input
${firstnamesample}    Test One
${fnerror}    //*[@id="dwfrm_callBackForm_firstName-error"]
${longtextthan50}    aaaaaaaaaaa bbbbbbbbbbbb cccccccccccccc defdefdefdefdef
${longtextthan500}    sklbgaskbgwkatjvlkvzs;lVn;owkln as svosnz snVE j 46 w4rg 64wrfg64fg+w4v68s4vjasng ui89a67wgnajkvspj sklbgaskbgwkatjvlkvzs;lVn;owkln as svosnz snVE j 46 w4rg 64wrfg64fg+w4v68s4vjasng ui89a67wgnajkvspj sklbgaskbgwkatjvlkvzs;lVn;owkln as svosnz snVE j 46 w4rg 64wrfg64fg+w4v68s4vjasng ui89a67wgnajkvspj sklbgaskbgwkatjvlkvzs;lVn;owkln as svosnz snVE j 46 w4rg 64wrfg64fg+w4v68s4vjasng ui89a67wgnajkvspj sklbgaskbgwkatjvlkvzs;lVn;owkln as svosnz snVE j 46 w4rg 64wrfg64fg+w4v68s4vjasng ui89a67wgnajkvspjyjkzkv
${validlen50}    aaaaaaaaaaa bbbbbbbbbbbb cccccccccccccc defdefdefd
${surname}    //*[@id="call-me-back"]/form/div[4]/div[2]/input
${surnamesample}    Test two
${snerror}    //*[@id="dwfrm_callBackForm_lastName-error"]
${phNumber}    //*[@id="call-me-back"]/form/div[4]/div[3]/input
${validphno}    0648967424
${invalidphoneno}    08523654
${phNumbererror}    //*[@id="dwfrm_callBackForm_contactNumber-error"]
${ErrText}    This field is required.
${pherrtext}    This contact number is invalid
${iderrtext}    South African contact numbers are 10 digits
${saIDorPassport}    //*[@id="call-me-back"]/form/div[4]/div[4]/div
${saID}    //*[@id="call-me-back"]/form/div[4]/div[4]/div/label[1]/div
${textinSAID}    askldfg
${validSAID}    9003015800084
${invalidSAID}    958432864
${passport}    //*[@id="call-me-back"]/form/div[4]/div[4]/div/label[2]/div
${remsplcharerr}    Please remove special characters
${splchars}    @%#%&*^$@
${idNumfield}    //*[@id="call-me-back"]/form/div[4]/div[4]/input
${saIDerrtext}    South Africa ID number is invalid
${invalidSAIDerr}    South Africa ID is 13 digits
${idfielderr}    //*[@id="dwfrm_callBackForm_idNumber-error"]
${comments:}    //*[@id="call-me-back"]/form/div[4]/div[5]/textarea
${samplecomments}    Please call me back to discuss the account related issue
${commmaxlen}    500
${disclaimer}    //*[@id="call-me-back"]/form/div[4]/div[6]
${callMeBackbtn}    //*[@id="call-me-back"]/form/div[4]/div[7]/button
${disabledcolor}    rgba(0, 137, 255, 0.3)
${needHelpxbtn}    //*[@id="page__wrapper"]/div[2]/div[2]
${successmsg}    //*[@id="call-me-back"]/form/div[2]
${chekboxNeedHelp}        //*[@class="need-help"]//*[@class="form__control--checkbox"]//div[@class="form__control-indicator"]

*** Keywords ***
the Customer has selected the 'Need Help' Button
    wait until page contains element    ${needHelp?}    150
    scroll element into view    ${needHelp?}
    click element    ${needHelp?}

has chosen the 'Call Me Back' tab
    wait until page contains element    ${callMeBackTab}    120
    Wait Until Keyword Succeeds  1 Min      5Sec    click element    ${callMeBackTab}

has filled all mandatory fields
    sleep    2
    wait until page contains element    ${firstName}    120
    input text    ${firstName}    Test One
    input text    ${surname}    Test two
    wait until page contains element    ${passport}    120
    click element    ${passport}
    input text    ${idnumfield}    K856987
    input text    ${comments:}    Please call me back to discuss the account related issue

the Customer enters text into the PHONE NUMBER field
    input text    ${phnumber}    phoneno

selects the 'CALL ME BACK' button
    click element    ${comments:}
    scroll element into view    ${callmebackbtn}

verify the error message displayed
    [Arguments]    ${ErrorDisplay}    ${Error}
    sleep    2
    wait until page contains element    ${ErrorDisplay}    120
    page should contain element    ${ErrorDisplay}
    capture page screenshot
    ${errordesc}    get textvalue    ${ErrorDisplay}
    run keyword and continue on failure    should be equal as strings    ${errordesc}    ${Error}


a 'This contact number is invalid' message is displayed
    wait until page contains element    ${phNumbererror}    120
    page should contain element    ${phNumbererror}
    capture page screenshot
    ${errordesc}    get textvalue    ${phNumbererror}
    run keyword and continue on failure    should be equal as strings    ${errordesc}    ${pherrtext}
    click element    ${needhelpxbtn}

the Customer opens any page in the Shop
    wait until page contains element    ${needHelp?}    150
    scroll element into view    ${needHelp?}

scrolls the page
    scroll element into view    ${needHelp?}

the Need Help button is displayed fix in the bottom right corner with text 'Need Help?'( Large, Medium) resp '?' (Small)
    page should contain element    ${needHelp?}
    capture page screenshot

the Customer selects the Need Help button
    scroll element into view    ${needHelp?}
    click element    ${needHelp?}

the two tabs 'Contact Us' and 'Call Me Back' are displayed
    page should contain element    ${contactUsTab}
    page should contain element    ${callMeBackTab}

'Contact Us' tab is selected
               Wait Until Keyword Succeeds  2min   5sec     click element    ${contactUsTab}

the Need Help button displays with an 'X'
    page should contain element    ${needHelpxbtn}
    capture page screenshot
    click element    ${needHelpxbtn}

the Customer selects the 'X' button
    wait until page contains element    ${needHelpxbtn}    120
    click element    ${needHelpxbtn}

the two tabs 'Contact Us' and 'Call Me Back' are closed
    page should contain element    ${needhelp?}

the button reads 'Need Help' again
    scroll element into view    ${needhelp?}
    capture page screenshot

the Customer displays the Contact Us tab
    page should contain element    ${contactUsTab}

the Contact Us details are displayed
    page should contain element    ${lostOrStolenCards}
    page should contain element    ${lrsSAMobile}
    page should contain element    ${lrsIntPhone}
    page should contain element    ${getInTouch}
    page should contain element    ${gitSAMobile}
    page should contain element    ${gitIntPhone}
    page should contain element    ${seeContactDethlink}
    page should contain element    ${findBranchhlink}
    click element    ${needhelpxbtn}

the Customer selects 'See all contact details' link
     Wait Until Keyword Succeeds  1 Min      5 Sec       scroll element into view    ${seeContactDethlink}
    Wait Until Keyword Succeeds  1 Min      5 Sec   click element    ${seeContactDethlink}

the page for the URL 'https://wwwstandardbankcoza/southafrica/personal/contact-us/contact-us-details' is opened

    Wait Until Keyword Succeeds  1 Min      5 Sec   wait until page contains element    ${seecontactdetredir}
    page should contain element    ${seecontactdetredir}
    go back

selects the 'Find a Branch or Atm' link
    wait until page contains element    ${needhelp?}    120
    page should contain element    ${needhelp?}
    click element    ${needhelp?}
    wait until page contains element    ${findBranchhlink}    120
    Wait Until Keyword Succeeds      1 Min       5 Sec   click element  ${findBranchhlink}

the page with the branch locator is displayed
    sleep    2
    wait until page contains element    ${findbranchRedir}    120
    page should contain element    ${findbranchRedir}
    go back

the line 'Submit your details and we'll get in touch with you to answer your questions' is displayed
    page should contain element    ${submitDetailsDesc}

the following fields are displayed FIRST NAME,SURNAME,PHONE NUMBER,SA ID NUMBER / PASSPORT NUMBER,WHAT IS YOUR CALL ME BACK RELATED TO,COMMENTS
    page should contain element    ${firstname}
    page should contain element    ${surname}
    page should contain element    ${phnumber}
    page should contain element    ${saIDorPassport}
    page should contain element    ${said}
    page should contain element    ${passport}
    page should contain element    ${idnumfield}
    page should contain element    ${comments:}

a line 'Your information will be managed securely' with a lock symbol is displayed
    page should contain element    ${disclaimer}

a 'CALL ME BACK' button is displayed
    page should contain element    ${callmebackbtn}
    click element    ${needhelpxbtn}

the Customer provides input
    page should contain element    ${firstname}

the following fields are displayed as text fields FIRST NAME,SURNAME,PHONE NUMBER,COMMENTS
    page should contain element    ${surname}
    page should contain element    ${phnumber}
    page should contain element    ${comments:}

the 'SA ID NUMBER / PASSPORT NUMBER' field has radio buttons for 'ID NUMBER' and PASSPORT' with a text field
    page should contain element    ${saidorpassport}
    page should contain element    ${said}
    page should contain element    ${passport}

the 'WHAT IS YOUR CALL ME BACK RELATED TO' field is a dropdown list with the values 'Account in Arrears / Legal' ; 'Card' ; 'Fraud' ; 'Home Loans' ; 'Insurance' ; 'Investment / Savings' ; 'Standard Executors and Trustees' ; 'Transactional' ; 'Vehicle and Asset Finance' ; 'Digital Banking' ; 'Service Related' ; 'ATM' ; 'Unwarranted Marketing' ; 'UCount Rewards
    page should contain element    ${idnumfield}
    click element    ${needhelpxbtn}

did not enter anything
    page should contain element    ${callmebacktab}

the Customer navigates to the 'CALL ME BACK' button
    page should contain element    ${callmebacktab}

the button is disabled
    ${elem}    Get Webelement    ${callmebackbtn}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${bgColor}
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    run keyword and continue on failure  Should Be True  '${bgColor}'=='${disabledcolor}'
    click element    ${needhelpxbtn}

the Customer enters more than 50 characters into the NAME field
    set focus to element     ${firstname}
    Wait Until Keyword Succeeds  1 Min      5 Sec   input text    ${firstname}    ${longtextthan50}

all entered characters from the 51st are not entered into the NAME field
    ${getfnlength}    get length    ${firstname}
    run keyword and continue on failure    should be equal as integers    ${getfnlength}    48

Customer enters more than 50 characters into the SURNAME field
    sleep    2s
    set focus to element    ${surname}
    input text    ${surname}    ${longtextthan50}

all entered characters from the 51st are not entered into the SURNAME field
    ${getsnlength}    get length    ${surname}
    run keyword and continue on failure    should be equal as integers    ${getsnlength}    48
    click element    ${needhelpxbtn}

the Customer enters a number with more or less than 10 digits into PHONE NUMBER field
    input text    ${phnumber}    ${invalidphoneno}

deselects the field
    click element    ${comments:}

a 'South African contact numbers are 10 digits' message is displayed
    sleep    2
    wait until page contains element    ${phNumbererror}    120
    page should contain element    ${phNumbererror}
    ${errordesc}    get textvalue    ${phNumbererror}
    run keyword and continue on failure    should be equal as strings    ${errordesc}    ${iderrtext}
    click element    ${needhelpxbtn}

has selected SA ID radio button on SA ID / PASSPORT
    Wait Until Keyword Succeeds  1 Min      5 Sec   scroll element into view       ${chekboxNeedHelp}
    Wait Until Keyword Succeeds  1 Min      5 Sec       wait until element is visible    ${said}
    click element    ${said}

the Customer enters text into the SA ID PASSPORT field
    scroll element into view    ${idnumfield}
    input text    ${idnumfield}    ${textinSAID}

deselects the field - SA ID
    click element    ${comments:}

a 'South Africa ID number is invalid' message is displayed
    sleep     10S
    wait until page contains element    ${idfielderr}    120
    page should contain element    ${idfielderr}
    ${errordesc}    get_textvalue    ${idfielderr}
    run keyword and continue on failure    should be equal as strings    ${errordesc}    ${saIDerrtext}
    click element    ${needhelpxbtn}

the Customer enters a number with less than 13 digits into the SA ID PASSPORT field
    scroll element into view    ${idnumfield}
    input text    ${idnumfield}    ${invalidSAID}

a 'South Africa ID is 13 digits' message is displayed
    sleep    10S
    wait until page contains element    ${idfielderr}    120
    page should contain element    ${idfielderr}
    ${errordesc}    get_textvalue    ${idfielderr}
    run keyword and continue on failure    should be equal as strings    ${errordesc}    ${invalidSAIDerr}
    click element    ${needhelpxbtn}

has selected PASSPORT radio button on SA ID / PASSPORT
    scroll element into view    ${passport}
    click element    ${passport}

the Customer enters special characters into the SA ID PASSPORT field
    scroll element into view    ${idnumfield}
    input text    ${idnumfield}    ${splchars}

deselects the field - passport
    click element    ${comments:}

a 'Please remove special characters' message is displayed
    sleep    10S
    wait until page contains element    ${idfielderr}    120
    page should contain element    ${idfielderr}
    ${errordesc}    get_textvalue    ${idfielderr}
    run keyword and continue on failure    should be equal as strings    ${errordesc}    ${remsplcharerr}
    click element    ${needhelpxbtn}

the Customer enters more than 500 characters into the COMMENTS field
    sleep    2s
    Wait Until Keyword Succeeds   1 min     5 sec   scroll element into view       ${chekboxNeedHelp}
    click element    ${comments:}
    input_comments    ${comments:}    ${longtextthan500}
    capture element screenshot    ${comments:}

all entered characters from the 501st are not entered into the COMMENTS field
    ${getcommlen}    get maxlength    ${comments:}
    run keyword and continue on failure    should be equal as integers    ${getcommlen}    ${commmaxlen}
    click element    ${needhelpxbtn}

has filled all mandatory fields - SA ID
    sleep    2s
    input text    ${firstName}    ${firstnamesample}
    input text    ${surname}    ${surnamesample}
    input text    ${phnumber}    ${validphno}
    click element    ${saID}
    input text    ${idnumfield}    ${validSAID}
    input text    ${comments:}    ${samplecomments}

a Case is created in Service Cloud
     scroll element into view       ${chekboxNeedHelp}
     Wait Until Keyword Succeeds   1 Min     5 Sec    click element   ${chekboxNeedHelp}
     Wait Until Keyword Succeeds   1 Min     5 Sec      click element    ${callmebackbtn}

a Success Screen is displayed
    wait until page contains element    ${successmsg}    120
    page should contain element    ${successmsg}
    click element    ${needhelpxbtn}