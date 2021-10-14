*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary.Get WebElements
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot

*** Variables ***
#Lending solution page
${TermLoanCallMeBackButton}       //*[text()="Term Loan"]/../..//*[@class="continue"]//*[@class="btn btn-outline-primary btn-block js-call-me-back"]
${RevolvingLoanCallMeBackButton}     //*[@class="continue"]//*[@class="btn btn-outline-primary btn-block js-call-me-back"]
${RevolvingLoanYesRadioBtn}        //*[text()="Revolving Loan"]//../..//label[contains(text(),"yes")]
${RevolvingLoanNoRadioBtn}        //*[text()="Revolving Loan"]//../..//label[contains(text(),"no")]
${CallMeBackPopUpModel}             //*[@class='call-me-back__popup container']
${CallMeBackPoUpTtile}         //*[@class='call-me-back__popup container']//*[contains(text(),'We’ll call you back')]
${CallMeBackPoUpMessage}          //*[@class='call-me-back__popup container']//p[contains(text(),'You’re one step closer to accessing your selected product. We just need your details and we’ll call you back.')]
${CallMeBackPoUpPhoneNumber}        //*[@class='call-me-back__popup container']//*[@name="phoneNumber"]
${CallMeBackPoUpAnytimeRadioBtn}    //*[@class='call-me-back__popup container']//*[@value="anytime" and @type="radio"]/../*[@class="form__control-indicator"]
${CallMeBackPoUpSpecificRadioBtn}    //*[@class='call-me-back__popup container']//*[@class="form__control form__control--radio w-100" and contains(text(),"At a specific time")]
${CallMeBackPoUpSubmitBtn}      //*[@class='call-me-back__popup container']//button[contains(text(),"submit")]
${CallMeBackPoUpCloseIcon}      //*[@class='call-me-back__popup container']//*[@class="btn js-close"]/img
${PhoneNumberLessDigitErrMsg}       Please enter a 10-digit cellphone number.
${PhoneNumberLetterErrMsg}            A valid Phone Number does not contain letters.
${PhoneNumberBlankErrMsg}          Please enter your cellphone number. The cellphone number field cannot be left blank.
${CallMeBackPopUpSpecificTime}              //*[@class='call-me-back__popup container']//*[@class="select2-selection select2-selection--single"]
${CallMeBackPopUpSpecificTimeList}      (//*[@id="select2-time-intervals-results"]//li)
${CallMeBackPopUpSpecificDatePicker}      //*[@class='call-me-back__popup container']//*[@id='date-input']
#${CallMeBackPopUpSpecificDate}   //*[@class='call-me-back__popup container']//*[@class='pika-row']//*[@data-day='${SpecificDate}']
${SpecificTimeOptions}=    ['08:00 - 09:00', '09:00 - 10:00', '10:00 - 11:00', '11:00 - 12:00', '12:00 - 13:00', '13:00 - 14:00', '14:00 - 15:00', '15:00 - 16:00']

*** Keywords ***
selects the choice of insurance
               wait until element is visible  ${RevolvingLoanYesRadioBtn}
               click element                   ${RevolvingLoanYesRadioBtn}

selects the choice of insurance as No
               wait until element is visible  ${RevolvingLoanNoRadioBtn}
               click element                   ${RevolvingLoanNoRadioBtn}

the Call Me Back button is displayed beneath the Insurance option
                wait until element is visible                     ${RevolvingLoanCallMeBackButton}
                ${Buttontext}                get text        ${RevolvingLoanCallMeBackButton}
                should be equal          ${Buttontext}   CALL ME BACK

for Term Loan the button is displayed at all times
                wait until element is visible                       ${TermLoanCallMeBackButton}
                ${Buttontext}                get text        ${TermLoanCallMeBackButton}
                should be equal          ${Buttontext}   CALL ME BACK

the Customer selects the Call Me Back button
                click element           ${RevolvingLoanCallMeBackButton}

the Call Me Back modal is displayed with the following:
                wait until element is visible   ${CallMeBackPopUpModel}
                element should be visible   ${CallMeBackPopUpModel}
Title: "We'll call you back" is displayed
                element should be visible  ${CallMeBackPoUpTtile}

Text: "You're one step closer to accessing your selected product. We just need your details and we'll call you back." is displayed
                element should be visible       ${CallMeBackPoUpMessage}
Mobile number is displayed
                element should be visible       ${CallMeBackPoUpPhoneNumber}

can you call? with radio buttons "Anytime" and "At a specific time" is displayed
                   element should be visible    ${CallMeBackPoUpAnytimeRadioBtn}
                   element should be visible    ${CallMeBackPoUpSpecificRadioBtn}
Submit button is displayed
                    element should be visible  ${CallMeBackPoUpSubmitBtn}
the Customer displays the Call Me Back modal
                    wait until element is visible   ${CallMeBackPoUpSubmitBtn}
                    element should be visible       ${CallMeBackPoUpSubmitBtn}
the Customer selects the X button
                    wait until element is visible   ${CallMeBackPoUpCloseIcon}
                    sleep               5s
                    wait until keyword succeeds          5  5s  click element     ${CallMeBackPoUpCloseIcon}
the Call Me Back modal is closed
                    wait until element is not visible   ${CallMeBackPopUpModel}
                    element should not be visible        ${CallMeBackPopUpModel}
the Customer enters a mobile number
                        [Arguments]   ${PhoneNumber}
                        wait until element is visible  ${CallMeBackPoUpPhoneNumber}
                       input text  ${CallMeBackPoUpPhoneNumber}     ${PhoneNumber}

leaves the field
                        Press Keys       NONE     TAB

the message "Please enter a 10-digit cellphone number." is displayed
                    ${getAltAtrribute}=         Get Element Attribute      ${CallMeBackPoUpPhoneNumber}        attribute=data-range-error
                    should be equal             ${getAltAtrribute}           ${PhoneNumberLessDigitErrMsg}


the message "A valid Phone Number does not contain letters." is displayed
                    ${getAltAtrribute}=         Get Element Attribute     ${CallMeBackPoUpPhoneNumber}          attribute=data-pattern-mismatch
                    should be equal             ${getAltAtrribute}           ${PhoneNumberLetterErrMsg}
the message "Please enter your cellphone number. The cellphone number field cannot be left blank." is displayed
                    ${getAltAtrribute}=         Get Element Attribute     ${CallMeBackPoUpPhoneNumber}          attribute=data-missing-error
                    should be equal             ${getAltAtrribute}          ${PhoneNumberBlankErrMsg}
the Customer opens the time picklist
                   wait until element is visible   ${CallMeBackPoUpSpecificRadioBtn}
                    sleep                           5s
                    wait until keyword succeeds   5  5s  click element                  ${CallMeBackPoUpSpecificRadioBtn}
                    wait until keyword succeeds   5  5s  click element                  ${CallMeBackPopUpSpecificTime}
the time options are displayed
                     sleep              5s
                     ${count}      get element count  ${CallMeBackPopUpSpecificTimeList}
                     ${GetTimeOptions}=    Create List
                     FOR   ${index}    IN RANGE   1    ${count}+1
                       ${value}=     get text    (${CallMeBackPopUpSpecificTimeList})[${index}]
                       Append To List       ${GetTimeOptions}   ${value}
                     END
                     ${GetTimeOption}    convert to string   ${GetTimeOptions}
                     should be equal  ${GetTimeOption}   ${SpecificTimeOptions}


the Customer opens the date picker
                       sleep                        5s
                    wait until keyword succeeds     5      5s   click element  ${CallMeBackPopUpSpecificDatePicker}
only a future weekday within the next 30 days can be selected
                    [Arguments]  ${SpecificDate}
                    sleep                           5s
                    wait until keyword succeeds     5       5s     click element  //*[@class='call-me-back__popup container']//*[@class='pika-row']//*[@data-day='${SpecificDate}']
                    sleep                           5s


the Customer select the form with specific time
                    [Arguments]  ${SpecificTime}
                    ${count}      get element count  ${CallMeBackPopUpSpecificTimeList}
                     ${GetTimeOptions}=    Create List
                     FOR   ${index}    IN RANGE   1    ${count}+1
                       ${value}=     get text    (${CallMeBackPopUpSpecificTimeList})[${index}]
                      ${time}   convert to string    ${value}
                       run keyword if   "${value}"=="'${SpecificTime}'"    click element  (${CallMeBackPopUpSpecificTimeList})[${index}
                     END
                     wait until keyword succeeds    5       5s      input text        ${CallMeBackPoUpPhoneNumber}     ${QuoteCellPhoneNumberTxt}


Title : "Your details were successfully submitted"
                        wait until keyword succeeds   5       5s     click element      ${CallMeBackPoUpSubmitBtn}
