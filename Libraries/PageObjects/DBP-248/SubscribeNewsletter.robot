*** Settings ***
Library    SeleniumLibrary
Library    ../Resource.py

*** Variables ***
${Sample_Varriable}    //span[contains(text(), 'SUBSCRIBE')]
${subscrCTA}    //*[@id="Personal"]/div[2]/div/div[4]/div/div/div/div/div/div/div/div
${subscribebtn}    //*[@data-text="Subscribe to our newsletter | SUBSCRIBE button click"]
${subscrCTAtxt}    //*[@id="Personal"]/div[2]/div/div[4]/div/div/div/div/div/div/div/div/div[2]/div/span
${newsletterform}    //*[@class="modal-content newsletter__modal-content"]
${formclosebtn}    //*[@id="newsletterModal"]/div/div/div[1]/button/span
${signuptitle}    //*[@id="dwfrm_newsletter"]/h5/span
${signuptxt}    SIGN UP FOR OUR NEWSLETTER
${subtitlelbl}    //*[@id="dwfrm_newsletter"]/p
${subtitiletxt}    Please complete your details below
${snlfirstname}    //*[@id="newsletter-form-fname"]
${fnlabel}    //*[@id="newsletter-form-fname"]/preceding-sibling::label
${errclr}    rgba(208, 2, 27, 1)
${snlsurname}    //*[@id="newsletter-form-sname"]
${snlabel}    //*[@id="newsletter-form-sname"]/preceding-sibling::label
${snlemail}    //*[@id="newsletter-form-email"]
${emaillabel}    //*[@id="newsletter-form-email"]/preceding-sibling::label
${selectallhlink}    //*[@id="dwfrm_newsletter"]/div[3]/div[2]/div/a[1]
${clearhlink}    //*[@id="dwfrm_newsletter"]/div[3]/div[2]/div/a[2]
${eventswebrrdbtn}    //*[@id="dwfrm_newsletter"]/div[4]/div[1]/label[1]/div/div/div
${savforfutrdbtn}    //*[@id="dwfrm_newsletter"]/div[4]/div[1]/label[2]/div/div/div
${buyahomerdbtn}    //*[@id="dwfrm_newsletter"]/div[4]/div[1]/label[3]/div/div/div
${betrwithmoneyrdbtn}    //*[@id="dwfrm_newsletter"]/div[4]/div[1]/label[4]/div/div/div
${snldisclaimerhead}    //*[@id="dwfrm_newsletter"]/div[5]/div/a
${disclaimerbody}    //*[@id="collapseTerms"]/div
${signupbutton}    //*[@id="dwfrm_newsletter"]/div[6]/button
${disabledcolor}    rgba(0, 137, 255, 0.3)
${signuphovercolor}    rgba(0, 105, 196, 1)
${newslettersuccess}    //*[@id="newsletterModal"]/div/div/div[2]/div/div/div[3]
${successmsgclose}    //*[@id="newsletterModal"]/div/div/div[1]/button/span

*** Keywords ***
The Customer click on associated CTA for newsletter subscription
    wait until page contains element    ${subscribebtn}    150
    scroll element into view    ${subscribebtn}
    capture page screenshot
     Wait Until Keyword Succeeds  2 min      5 sec     click element    ${subscribebtn}

Newsletter Subscription form is displayed
    wait until page contains element    ${newsletterform}    120
    page should contain element    ${newsletterform}

tapping on outside area of the modal or click X
    wait until page contains element    ${formclosebtn}    120
    set focus to element    ${formclosebtn}
    capture page screenshot
    click element    ${formclosebtn}

the form is disappeared
    wait until page contains element    ${subscribebtn}    150
    page should contain element    ${subscribebtn}

following element are displayed: Title: Sign up for our newsletter (all caps),Sub-Title: Please complete your details below,Field to enter: First Name, Surname, Email,Subscription option selection: Select All,Title: CHOOSE AT LEAST ONE TOPIC OR PRODUCT YOU WANT TO SUBSCRIBE TO,Check box: Being better with money, Saving for the future, Buying a home, Global insights, Events/Webinar,Disclaimer title: Show Disclaimer and Conditions of access (arrow for show/collapse option),Legal copy,Sign Up button
    Sleep                           5s
    page should contain element    ${signuptitle}
    ${subsctitle}    get textvalue    ${signuptitle}
    run keyword and continue on failure    should be equal as strings    ${subsctitle}    ${signuptxt}
    page should contain element    ${subtitlelbl}
    scroll element into view    ${subtitlelbl}
    ${subttxt}    get textvalue    ${subtitlelbl}
    run keyword and continue on failure    should be equal as strings    ${subttxt}    ${subtitiletxt}
    page should contain element    ${snlfirstname}
    page should contain element    ${snlsurname}
    page should contain element    ${snlemail}
    page should contain element    ${selectallhlink}
    page should contain element    ${clearhlink}
    page should contain element    ${eventswebrrdbtn}
    page should contain element    ${savforfutrdbtn}
    page should contain element    ${buyahomerdbtn}
    scroll element into view    ${betrwithmoneyrdbtn}
    page should contain element    ${betrwithmoneyrdbtn}
    page should contain element    ${snldisclaimerhead}
    scroll element into view    ${signupbutton}
    page should contain element    ${signupbutton}
    click element    ${formclosebtn}

The Customer doesn't enter or keep the First Name empty
    Wait Until Keyword Succeeds   1 Min     5 sec   click element    ${eventswebrrdbtn}
    input text    ${snlsurname}    Test two
    input text    ${snlemail}   test@sbsa.co.za
    click element    ${signupbutton}

the box frame and title are turned to red and below the text 'This field is required' is displayed - First name
    scroll element into view    ${snlfirstname}
    capture page screenshot
    ${elem}    Get Webelement    ${fnlabel}
    ${txtColor}    Call Method    ${elem}    value_of_css_property     color
    log    ${txtColor}
    set suite variable  ${txtColor}    ${txtColor}
    log    ${txtColor}
    run keyword and continue on failure  Should Be True  '${txtColor}'=='${errclr}'
    click element    ${formclosebtn}

The Customer wants to choose the newsletter preference
    page should contain element    ${selectallhlink}

click each the box or Select All option to select all preferences
    Wait Until Keyword Succeeds   1 Min     5 Sec   click element    ${selectallhlink}
    capture page screenshot

Clear selected option to clear all selections
    click element    ${clearhlink}
    capture page screenshot
    click element    ${formclosebtn}

The Customer click the disclaimer title
    sleep                       5s
    Wait Until Keyword Succeeds  1 Min   5 Sec  scroll element into view    ${signupbutton}
    click element    ${snldisclaimerhead}
    capture page screenshot

disclaimer content is hidden
    sleep    2s
    page should contain element    ${disclaimerbody}
    click element    ${formclosebtn}

The Customer at least chose one of newsletter preferences
    Wait Until Keyword Succeeds  1 Min   5 Sec    scroll element into view    ${signupbutton}
    click element    ${buyahomerdbtn}

Sign Up button is activated (light blue), hoover (dark blue)
    mouse over    ${signupbutton}
    ${elem}    Get Webelement    ${signupbutton}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${bgColor}
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    run keyword and continue on failure  Should Be True  '${bgColor}'=='${signuphovercolor}'
    click element    ${formclosebtn}

the customer has completed the form
    Wait Until Keyword Succeeds  1 Min   5 Sec      click element    ${eventswebrrdbtn}
    input text    ${snlfirstname}    Test One
    input text    ${snlsurname}    Test two
    input text    ${snlemail}   test@sbsa.co.za
    capture page screenshot

click the sign up button
    scroll element into view    ${signupbutton}
    click element    ${signupbutton}

confirmation windows is displayed
    wait until page contains element    ${newslettersuccess}    120
    page should contain element    ${newslettersuccess}
    capture page screenshot
    click element    ${successmsgclose}

the customer has clicked the sign up button
    wait until page contains element   ${eventswebrrdbtn}    120
    Wait Until Keyword Succeeds  1 Min   5 Sec     click element    ${eventswebrrdbtn}
    input text    ${snlfirstname}    Test One
    input text    ${snlsurname}    Test two
    input text    ${snlemail}   test@sbsa.co.za
    scroll element into view    ${signupbutton}
    click element    ${signupbutton}

confirmation pop up window opens
    sleep    2s

following items are displayed: Title: Success! Sub-title: You have successfully been subscribed to our newsletter Icon:
    wait until page contains element    ${newslettersuccess}    120
    page should contain element    ${newslettersuccess}

click the X sign or click background outside the pop up window
    wait until page contains element    ${successmsgclose}    120
    click element    ${successmsgclose}

the confirmation modal is closed
    wait until page contains element    ${subscribebtn}    120
    page should contain element    ${subscribebtn}

The Customer doesn't fill or keep the Surname empty
    Wait Until Keyword Succeeds  1 Min   5 Sec  click element    ${eventswebrrdbtn}
    input text    ${snlfirstname}    Test One
    input text    ${snlemail}   test@sbsa.co.za
    scroll element into view    ${signupbutton}
    click element    ${signupbutton}

the box frame and title are turned to red and below the box text 'This field is required' is displayed - Surname
    scroll element into view    ${snlsurname}
    capture page screenshot
    ${elem}    Get Webelement    ${snlabel}
    ${txtColor}    Call Method    ${elem}    value_of_css_property     color
    log    ${txtColor}
    set suite variable  ${txtColor}    ${txtColor}
    log    ${txtColor}
    run keyword and continue on failure  Should Be True  '${txtColor}'=='${errclr}'
    click element    ${formclosebtn}

The Customer has not inserted the email address in the box
    Wait Until Keyword Succeeds  1 Min      5Sec    click element    ${eventswebrrdbtn}
    input text    ${snlfirstname}    Test One
    input text    ${snlsurname}    Test two
    scroll element into view    ${signupbutton}
    Wait Until Keyword Succeeds  1 Min      5Sec    click element    ${signupbutton}

the box frame and title are turned to red and below the text 'This field is required' is displayed - Email
    scroll element into view    ${snlemail}
    capture page screenshot
    ${elem}    Get Webelement    ${emaillabel}
    ${txtColor}    Call Method    ${elem}    value_of_css_property     color
    log    ${txtColor}
    set suite variable  ${txtColor}    ${txtColor}
    log    ${txtColor}
    run keyword and continue on failure  Should Be True  '${txtColor}'=='${errclr}'
    click element    ${formclosebtn}

The Customer has not selected the one of newsletter preferences
    Wait Until Keyword Succeeds  1 Min      5 sec       scroll element into view    ${signupbutton}
    capture page screenshot

Sign Up button is disabled
    ${elem}    Get Webelement    ${signupbutton}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     background-color
    log    ${bgColor}
    set suite variable  ${bgColor}    ${bgColor}
    log    ${bgColor}
    run keyword and continue on failure  Should Be True  '${bgColor}'=='${disabledcolor}'
    click element    ${formclosebtn}

The customer has selected one of newsletter preference
    Wait Until Keyword Succeeds  1 Min      5 Sec   click element    ${savforfutrdbtn}

The Customer wants to clear the selected newsletter preference
    click element    ${selectallhlink}

click Clear selected option
    click element    ${clearhlink}

all check box are unchecked and the option Clear selected is disappeared
    click element    ${formclosebtn}

The Customer has inserted invalid email format in the box
    Wait Until Keyword Succeeds   1 Min     5 sec   click element    ${eventswebrrdbtn}
    Wait Until Keyword Succeeds  1 Min      5Sec    click element    ${betrwithmoneyrdbtn}
    input text    ${snlfirstname}    Test One
    input text    ${snlemail}    SFGsg#42536
    input text    ${snlsurname}    Test two
    scroll element into view    ${signupbutton}
    Wait Until Keyword Succeeds  1 Min      5Sec    click element    ${signupbutton}

the box frame and title are turned to red and below the text 'Please enter a valid input' is displayed
    scroll element into view    ${snlemail}
    capture page screenshot
    ${elem}    Get Webelement    ${emaillabel}
    ${txtColor}    Call Method    ${elem}    value_of_css_property     color
    log    ${txtColor}
    set suite variable  ${txtColor}    ${txtColor}
    log    ${txtColor}
    run keyword and continue on failure  Should Be True  '${txtColor}'=='${errclr}'
    click element    ${formclosebtn}