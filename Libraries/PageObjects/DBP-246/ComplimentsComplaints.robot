*** Settings ***
Library    SeleniumLibrary
#Library    Selenium2LibraryExtension
Library    ../Resource.py

*** Variables ***
${Comp&compllink}    //*[@id="page__wrapper"]/footer/div[2]/div[1]/div/div/div[4]/button/span
${letusknowbtn}    //*[@id="page__wrapper"]/footer/div[2]/div[2]/div/div/p[5]/button
${componentBackgroundColorBlue}    rgba(0, 137, 255, 0)
${componentBackgroundColorWhite}    rgba(255, 255, 255, 1)
${wholescreen}    //*[@id="complimentsAndComplaintsModal"]
${comp&compform}    //*[@id="complimentsAndComplaintsModal"]/div/div[2]
${comp2formclose}    //*[@id="complimentsAndComplaintsModal"]//*[@data-text='close button click']
${comp2heading}    //h3[@class="text-uppercase"]
${comp2headtxt}    HOW DID WE DO?
${comp2desc}    (//*[@id="complimentsAndComplaintsModal"]//div[@class="js-form-body-container"]//p)[1]
${comp2desctxt}    We're continuously striving to deliver great service.
${feedbacktypecbx}    //select[@id="feedbackType"]
${feedbackType}    COMPLAINT
${feedbackrelatedtocbx}    //select[@id="categories"]
${feebackrelto}    Account in Arrears / Legal
${feedbackcategorycbx}    //*[@id="select2-Account in Arrears / Legal-container"]
${feedbackcategory}    Credit Card
${titlecbx}    //select[@name="dwfrm_feedback_title"]
${titlevalue}    Mr
${Nametxtinput}    //*[@id="registration-form-name"]
${surnametxtinput}    //*[@id="registration-form-surname"]
${surnamelbl}    //*[@id="feedback"]/div[19]/label
${errclr}    rgba(208, 2, 27, 1)
${disabledclr}    rgba(0, 137, 255, 0.3)
${idnumtxtinput}    //*[@id="registration-form-idnumber"]
${idnumlbl}    //*[@id="feedback"]/div[20]/label
${contnumtxtinput}    //*[@id="registration-form-contactnumber"]
${Altcontnumtxtinput}    //*[@id="registration-form-altcontactnumber"]
${emailtxtinput}    //*[@id="registration-form-email"]
${existcustyes}    //*[@id="feedback"]/div[24]/div[1]/label[1]
${existcustno}    //*[@id="feedback"]/div[24]/div[1]/label[2]
${commentsbox}    //*[@id="feedback"]/div[25]/textarea
${disclosure}    //*[@id="feedback"]/div[26]//p
${disclosuretext}    Your information will be managed securely
${compsubmitbtn}    //*[@id="feedback"]/button
${compAgreementCheckBox}        //*[@id="complimentsAndComplaintsModal"]//*[@class="form__control--checkbox"]//div
${successmsg}    //*[@class="call-back-form__sucess-message text-center"]//h4[contains(text(),"feedback")]
${successclose}    //*[@id="complimentsAndComplaintsModal"]/div/div[2]/div[1]/button/span

*** Keywords ***
the Customer opens the Form by selecting the 'Let us know' button in the footer
    wait until page contains element    ${letusknowbtn}    150
    scroll element into view    ${letusknowbtn}
    click element    ${letusknowbtn}

form is displayed with background color #ffffff
    wait until page contains element    ${comp&compform}
    ${elem}    Get Webelement    ${comp&compform}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${bgColor}
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    run keyword and continue on failure  Should Be True  '${bgColor}'=='${componentBackgroundColorWhite}'

the title 'HOW DID WE DO?' is displayed
    Sleep           5s
    ${desctext}    get_textvalue    ${comp2heading}
    log to console    ${desctext}
#    ${desctext}    call method    ${comp2heading}    value_of_css_property    text
    run keyword and continue on failure    Should Be Equal As Strings    ${desctext}    ${comp2headtxt}

the sub-title 'We're continuously striving to deliver great service' is displayed
    ${desctext}    get_textvalue   ${comp2desc}
#    ${desctext}    call method    ${comp2desc}    value_of_css_property    text
    run keyword and continue on failure    Should Be Equal As Strings    ${desctext}    ${comp2desctxt}

the following fields are displayed FEEDBACK TYPE,WHAT IS YOUR FEEDBACK RELATED TO?,TITLE,NAME,SURNAME,ID NUMBER,CONTACT NUMBER,ALTERNATIVE CONTACT NUMBER (OPTIONAL *),EMAIL,ARE YOU AN EXISTING STANDARD BANK CUSTOMER?,COMMENTS
    scroll element into view    ${feedbacktypecbx}
    element should be visible    ${feedbacktypecbx}
    scroll element into view	${feedbackrelatedtocbx}
    element should be visible	${feedbackrelatedtocbx}
    scroll element into view	${titlecbx}
    element should be visible	${titlecbx}
    scroll element into view	${Nametxtinput}
    element should be visible	${Nametxtinput}
    scroll element into view	${surnametxtinput}
    element should be visible	${surnametxtinput}
    scroll element into view	${idnumtxtinput}
    element should be visible	${idnumtxtinput}
    scroll element into view	${contnumtxtinput}
    element should be visible	${contnumtxtinput}
    scroll element into view	${Altcontnumtxtinput}
    element should be visible	${Altcontnumtxtinput}
    scroll element into view	${emailtxtinput}
    element should be visible	${emailtxtinput}
    scroll element into view	${existcustyes}
    element should be visible	${existcustyes}
    scroll element into view	${existcustno}
    element should be visible	${existcustno}
    scroll element into view	${commentsbox}
    element should be visible	${commentsbox}

the info with a lock symbol and the text 'We'll keep your information confidential and will not be shared with any third parties' is displayed
    scroll element into view    ${disclosure}
    element should be visible    ${disclosure}
    ${disctxt}    get_textvalue    ${disclosure}
    run keyword and continue on failure    Should Be Equal As Strings    ${disctxt}    ${disclosuretext}

the 'SUBMIT' button is displayed
    scroll element into view	${compsubmitbtn}
    element should be visible	${compsubmitbtn}
    Wait Until Keyword Succeeds  1 Min      5Sec      click element    ${comp2formclose}

the Customer has opened the form
    wait until page contains element    ${letusknowbtn}    120
    scroll element into view    ${letusknowbtn}
    click element    ${letusknowbtn}

the Customer selects the 'X' in the upper right corner
    wait until page contains element    ${comp2formclose}    120
     Wait Until Keyword Succeeds  1 Min      5Sec   click_close    ${comp2formclose}

the form is closed

    Wait Until Keyword Succeeds  1 Min      5Sec     element should not be visible    ${comp&compform}

the Customer clicks outside of the modal
    wait until page contains element    ${comp&compform}    120
    wait until page contains element    ${comp2formclose}    120
    Wait Until Keyword Succeeds  1 Min      5Sec   click_close     ${comp2formclose}

the Customer provides input
    wait until page contains element    ${comp&compform}    120

the following fields are dropdowns with respective values FEEDBACK TYPE (Compliment ; Complaint ; Suggestion) WHAT IS YOUR FEEDBACK RELATED TO? (Account in Arrears / Legal ; Card ; Fraud ; Home Loans ; Insurance ; Investment / Savings ; Standard Executors and Trustees ; Transactional ; Vehicle and Asset Finance ; Digital Banking ; Service Related ; ATM ; Unwarranted Marketing ; UCount Rewards) TITLE (Mr ; Ms ; Mrs ; Rev ; Judge ; Advocate ; Doctor ; Professor)
    Wait Until Keyword Succeeds  1 Min      5Sec    select from list by value    ${feedbacktypecbx}    ${feedbackType}
    select from list by value    ${feedbackrelatedtocbx}    ${feebackrelto}
    select from list by value    ${titlecbx}    ${titlevalue}

upon selection of 'WHAT IS YOUR FEEDBACK RELATED TO?' the dropdown 'PLEASE SELECT A FEEDBACK CATEGORY' (Credit Card ; Cheque Account ; Home Loans ; Insurance ; Overdraft ; Personal Loans ; Vehicle Asset Finance) is displayed
    wait until page contains element    ${feedbackcategorycbx}    120
    click element    ${feedbackcategorycbx}
    press keys    None    RETURN

the following fields are text fields NAME,SURNAME,ID NUMBER,CONTACT NUMBER,ALTERNATIVE CONTACT NUMBER,EMAIL,COMMENTS
    input text    ${Nametxtinput}    Test One
    input text    ${surnametxtinput}    Test two
    input text    ${idnumtxtinput}    9003015800084
    input text    ${contnumtxtinput}    0869587455
    input text    ${altcontnumtxtinput}    0687458565
    input text    ${emailtxtinput}    test@sbsa.co.za
    input text    ${commentsbox}    common issue with credit card

'ARE YOU AN EXISTING STANDARD BANK CUSTOMER?' is displayed as Yes/No Radio buttons
    click element    ${existcustyes}
    Wait Until Keyword Succeeds  1 Min      5Sec   click element    ${compAgreementCheckBox}
     Wait Until Keyword Succeeds  1 Min      5Sec   click element    ${compsubmitbtn}
    wait until page contains element    ${successmsg}    120
    page should contain element    ${successmsg}
    capture page screenshot
     Wait Until Keyword Succeeds  1 Min      5Sec   click_close    ${comp2formclose}

did not enter anything
    wait until page contains element    ${Nametxtinput}

the Customer selects one of the following fields NAME,SURNAME,ID NUMBER,CONTACT NUMBER,EMAIL
    wait until page contains element    ${Nametxtinput}    120
    Wait Until Keyword Succeeds  1 Min      5Sec    click element    ${Nametxtinput}

clicks another field
    press keys    None    TAB

a 'This field is required' info is displayed beneath the field
    sleep     2s
    ${elem}    Get Webelement    ${surnamelbl}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     color
    log    ${bgColor}
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    run keyword and continue on failure  Should Be True  '${bgColor}'=='${errclr}'
    click element    ${comp2formclose}

the 'SUBMIT' button is disabled
    sleep     2s
    ${elem}    Get Webelement   ${compsubmitbtn}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${bgColor}
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    run keyword and continue on failure  Should Be True  '${bgColor}'=='${disabledclr}'
    click element    ${comp2formclose}

has filled in all mandatory fields
    Wait Until Keyword Succeeds  1 Min      5Sec    select from list by value    ${feedbacktypecbx}    ${feedbackType}
    select from list by value    ${feedbackrelatedtocbx}    ${feebackrelto}
    select from list by value    ${titlecbx}    ${titlevalue}
    wait until page contains element    ${feedbackcategorycbx}    120
    click element    ${feedbackcategorycbx}
    press keys    None    RETURN
    input text    ${Nametxtinput}    Test One
    input text    ${surnametxtinput}    Test two
    input text    ${contnumtxtinput}    0869587455
    input text    ${altcontnumtxtinput}    0687458565
    input text    ${emailtxtinput}    test@sbsa.co.za
    input text    ${commentsbox}    common issue with credit card

the Customer enters text into the field 'ID NUMBER'
    input text    ${idnumtxtinput}    idnumber

deselects the field
    press keys    None    TAB

a 'South African ID number is invalid' is displayed beneath the field
    sleep     2s
    ${elem}    Get Webelement    ${idnumlbl}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     color
    log    ${bgColor}
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    run keyword and continue on failure  Should Be True  '${bgColor}'=='${errclr}'

the Customer enters a number with less than 13 digits into the field 'ID NUMBER'
    input text    ${idnumtxtinput}    90030158

selects the 'SUBMIT' button
    press keys    None    TAB

has filled all mandatory fields
    select from list by value    ${feedbacktypecbx}    ${feedbackType}
    select from list by value    ${feedbackrelatedtocbx}    ${feebackrelto}
    select from list by value    ${titlecbx}    ${titlevalue}
    sleep    5s
    input text    ${Nametxtinput}    Test One
    input text    ${surnametxtinput}    Test two
    input text    ${contnumtxtinput}    0869587455
    input text    ${altcontnumtxtinput}    0687458565
    input text    ${emailtxtinput}    test@sbsa.co.za
    input text    ${commentsbox}    common issue with credit card

has entered a valid ID Number
    input text    ${idnumtxtinput}    9003015800084
    press keys    None    TAB

the Customer selects the 'SUBMIT' button
    sleep    2
     Wait Until Keyword Succeeds  1 Min      5Sec   click element    ${compAgreementCheckBox}
    Wait Until Keyword Succeeds  1 Min      5Sec    click element    ${compsubmitbtn}

the message 'Your feedback has been received' is displayed
    page should contain element    ${successmsg}
   Wait Until Keyword Succeeds  1 Min      5Sec   click_close    ${comp2formclose}