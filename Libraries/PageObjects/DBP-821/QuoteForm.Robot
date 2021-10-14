*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***
#Lending solution page
${LendingSolutionPageTxt}       //*[text()='VIEW ALL OUR LENDING SOLUTIONS']
${DoIQualifyLocator}            //*[contains(text(),'Do I qualify?')]
# QuoteForm URL


${QuoteFormURL}  UATQuote
&{customerUrl}   QuoteUrl=https://bfrb-001.sandbox.us01.dx.commercecloud.salesforce.com/s/SB-COZA/commerce/guided-selling/quote     UATQuote=https://uat.standardbank.co.za/commerce/guided-selling


#Quote Form elements
${QuotePageTitle}               //*[text()='GET AN INSTANT FREE QUOTE']
${QuoteFormText}                //*[text()='Please complete your details below']

${QuoteNameFieldLocator}        //*[@name='dwfrm_quoteForm_firstName']
${QuoteNamelabelLocator}        //*[@name='dwfrm_quoteForm_firstName']/../label
${QuoteNamelabelTxt}            NAME (AS PER ID)
${QuoteNameBlankErrLocator}     //*[@name='dwfrm_quoteForm_firstName']/..//li[1]
${QuoteNameBlankErrText}        Please enter your Name as it appears on your ID. The First Name field cannot be left blank.
${QuoteNameQuantityErrLocator}  //*[@name='dwfrm_quoteForm_firstName']/..//li[2]
${QuoteNameQuantityErrText}     A valid Name has more than one letter.

${QuoteNameTxt}                 FirstName

${QuoteSurNameFieldLocator}         //*[@name='dwfrm_quoteForm_lastName']
${QuoteSurNamelabelLocator}         //*[@name='dwfrm_quoteForm_lastName']/../label
${QuoteSurNamelabelTxt}             SURNAME (AS PER ID)
${QuoteSurNameTxt}                  LastName
${QuoteSurNameBlankErrLocator}      //*[@name='dwfrm_quoteForm_lastName']/..//li[1]
${QuoteSurNameBlankErrText}         Please enter your Surname as it appears on your ID. The Surname field cannot be left blank.
${QuoteSurNameQuantityErrLocator}   //*[@name='dwfrm_quoteForm_lastName']/..//li[2]
${QuoteSurNameQuantityErrText}      A valid Surname has more than one letter.

${QuoteSAIdFieldLocator}            //*[@name='dwfrm_quoteForm_identityNo']
${QuoteSAIdlabelLocator}            //*[@name='dwfrm_quoteForm_identityNo']/../label
${QuoteSAIdlabelTxt}                SOUTH AFRICAN ID / PASSPORT NUMBER
${IDNumberInvalid}                  ABCDEFGHIJM
${IDNumberValid}                    6909057128098
${ExistingApplicationID}            8510084681196
${QuoteSAIdTextErrorLocator}        //*[@name='dwfrm_quoteForm_identityNo']/..//li[2]
${QuoteSAIdTextErrorTxt}            South African ID number is invalid
${QuoteSAIdQuantityErrorLocator}    //*[@name='dwfrm_quoteForm_identityNo']/..//li[1]
${QuoteSAIdQyantityTextErrorTxt}    South African ID is 13 digits


${QuoteCellPhoneNumberFieldLocator}     //*[@name='dwfrm_quoteForm_phoneNumber']
${QuoteCellPhoneNumberlabelLocator}     //*[@name='dwfrm_quoteForm_phoneNumber']/../label
${QuoteCellPhoneNumberlabelTxt}         CELLPHONE
${QuoteCellPhoneNumberErrorLocator}     //*[@name='dwfrm_quoteForm_phoneNumber']/..//li
${QuoteCellPhoneNumberErrorTxt}         Please enter your cellphone number. The cellphone number field cannot be left blank.
${QuoteCellPhoneNumberTxt}              0887636274


${QuoteEmailAddressFieldLocator}        //*[@name='dwfrm_quoteForm_email']
${QuoteEmailAddresslabelLocator}        //*[@name='dwfrm_quoteForm_email']/../label
${QuoteEmailAddresslabelTxt}            EMAIL ADDRESS
${QuoteEmailAddressErrorLocator}        //*[@name='dwfrm_quoteForm_email']/..//li
${QuoteEmailAddressErrorTxt}            This field is required
${QuoteEmailAddressTxt}                 firstname@gmail.com

${QuoteGrossMonthlyIncomeFieldLocator}      //*[@name='dwfrm_quoteForm_income']
${QuoteGrossMonthlyIncomelabelLocator}      //*[@name='dwfrm_quoteForm_income']/../label
${QuoteGrossMonthlyIncomelabelTxt}          GROSS MONTHLY INCOME
${QuoteGrossMonthlyIncomeTxt}               58000
${QuoteGrossMonthlyIncomeToolImg}           //*[@name='dwfrm_quoteForm_income']/../label//img
${QuoteGrossMonthlyIncomeToolTextLocator}   //*[@name='dwfrm_quoteForm_income']/../label//span[@class='tooltip']
${QuoteGrossMonthlyIncomeToolText}          To calculate the most accurate amount that you may qualify for, we need to know the amount of money on your payslip before income tax, medical aid, pension or any other additional deductions. Please insert a maximum of 10 characters including decimals
${QuoteGrossMonthlyIncomeLocator}           //*[@name='dwfrm_quoteForm_income']/..//li
${QuoteGrossMonthlyIncomeErrorTxt}          Please enter a valid input

${QuoteTotalMonthlyExpenseFieldLocator}     //*[@name='dwfrm_quoteForm_expenses']
${QuoteTotalMonthlyExpenselabelLocator}     //*[@name='dwfrm_quoteForm_expenses']/../label
${QuoteTotalMonthlyExpenselabelTxt}         TOTAL MONTHLY EXPENSES
${QuoteTotalMonthlyExpenseTxt}              8000
${QuoteTotalMonthlyIncomeToolImg}           //*[@name='dwfrm_quoteForm_expenses']/../label//img
${QuoteTotalMonthlyIncomeToolTextLocator}   //*[@name='dwfrm_quoteForm_expenses']/../label//span[@class='tooltip']
${QuoteTotalMonthlyIncomeToolText}          Your expenses are everything that you pay for per month. That includes automatic deductions like income tax, medical aid and pension. Please insert a maximum of 10 characters including decimals
${QuoteTotalMonthlyIncomeLocator}           //*[@name='dwfrm_quoteForm_expenses']/..//li
${QuoteTotalMonthlyIncomeErrorTxt}          Please enter a valid input

${ConfirmationCheckbox}                     //*[@class='form__control--checkbox']/div
${ConfirmationTextlocator}                  //*[@class='form__control--checkbox-title']
${ConfirmationText}                         I am not insolvent, under debt review (current or applied for), administration or sequestration. Standard Bank can collect and share my personal details to confirm my identity, address and income for compliance purposes. I also agree to a credit and fraud check.

${LockIconImg}                              //*[@class='form__bottom-text d-flex align-items-start']//*[contains(@src,'lock.svg')]
${LockSymbolTextLocator}                    //*[@class='form__bottom-text d-flex align-items-start']//p
${LockSymbolText}                           Your information will be managed securely and kept confidential. It will not be shared with any third parties.

${SubmitButonLocator}                       //*[@data-text='submit button click']
${SubmitButonTxt}                           SUBMIT
${SubmitButonDisable}                       //*[@class='btn form__submit-button form__submit-button--disabled']


${CancelButonLocator}                       //*[@data-text='cancel button click']
${cancelButonTxt}                           CANCEL

#Quote Pgae

${QuoteResultPageTxt}     //*[contains(text(),'Congratulations! You were quoted for these products')]


*** Keywords ***

The Customer opens the Form by selecting "Do I qualify?" on Guided Selling Listing Page
            Element Should Be Visible       ${LendingSolutionPageTxt}
            Click Element                   ${DoIQualifyLocator}
            Wait Until Keyword Succeeds     1 Min       5 Sec   Element Should Be Visible   	${QuotePageTitle}
	        Page Should Contain Element     ${QuotePageTitle}

Verify the Quote form fields are displayed as text fields
	        Element Should Be Visible   	${QuoteNameFieldLocator}
	        Page Should Contain Element     ${QuoteNameFieldLocator}
            Element Should Be Visible   	${QuoteSurNameFieldLocator}
	        Page Should Contain Element     ${QuoteSurNameFieldLocator}
	        Element Should Be Visible   	${QuoteSAIdFieldLocator}
	        Page Should Contain Element     ${QuoteSAIdFieldLocator}
	        Element Should Be Visible       ${QuoteCellPhoneNumberFieldLocator}
	        Page Should Contain Element     ${QuoteCellPhoneNumberFieldLocator}
	        Element Should Be Visible       ${QuoteEmailAddressFieldLocator}
	        Page Should Contain Element     ${QuoteEmailAddressFieldLocator}
	        Element Should Be Visible       ${QuoteGrossMonthlyIncomeFieldLocator}
	        Page Should Contain Element     ${QuoteGrossMonthlyIncomeFieldLocator}
	        Element Should Be Visible       ${QuoteTotalMonthlyExpenseFieldLocator}
	        Page Should Contain Element     ${QuoteTotalMonthlyExpenseFieldLocator}

Verify the Quote form labels are displayed as expected
            Element Should Contain  	${QuoteNamelabelLocator}                    ${QuoteNamelabelTxt}
            Element Should Contain  	${QuoteSurNamelabelLocator}                 ${QuoteSurNamelabelTxt}
            Element Should Contain  	${QuoteSAIdlabelLocator}                    ${QuoteSAIdlabelTxt}
            Element Should Contain  	${QuoteCellPhoneNumberlabelLocator}         ${QuoteCellPhoneNumberlabelTxt}
            Element Should Contain  	${QuoteEmailAddresslabelLocator}            ${QuoteEmailAddresslabelTxt}
            Element Should Contain  	${QuoteGrossMonthlyIncomelabelLocator}      ${QuoteGrossMonthlyIncomelabelTxt}
            Element Should Contain  	${QuoteTotalMonthlyExpenselabelLocator}     ${QuoteTotalMonthlyExpenselabelTxt}
A checkbox with confirmation text is displayed
            Element Should Be Visible   	${ConfirmationCheckbox}
	        Page Should Contain Element     ${ConfirmationCheckbox}
            Element Should Contain  	    ${ConfirmationTextlocator}      ${ConfirmationText}

The info with a lock symbol and the text is displayed
            Element Should Be Visible   	${LockIconImg}
	        Page Should Contain Element     ${LockIconImg}
            Element Should Contain  	    ${LockSymbolTextLocator}        ${LockSymbolText}

The SUBMIT button is displayed
            Page Should Contain Element    ${SubmitButonLocator}
            Element Should Be Visible   	${SubmitButonLocator}
            Element Should Contain         ${SubmitButonLocator}           ${SubmitButonTxt}

The CANCEL button is displayed
            Page Should Contain Element    ${CancelButonLocator}
            Element Should Be Visible   	${CancelButonLocator}
            Element Should Contain         ${CancelButonLocator}           ${cancelButonTxt}

the Customer has opened the form
            GO TO                           ${customerUrl.${QuoteFormURL}}
            Click Element                   ${DoIQualifyLocator}
            sleep                           5s
            Wait Until Element Is Visible    ${QuoteFormText}

	        Page Should Contain Element     ${QuoteFormText}


has filled in all mandatory fields
            input text      ${QuoteNameFieldLocator}                        ${QuoteNameTxt}
            input text      ${QuoteSurNameFieldLocator}                     ${QuoteSurNameTxt}
            input text      ${QuoteCellPhoneNumberFieldLocator}             ${QuoteCellPhoneNumberTxt}
            input text      ${QuoteEmailAddressFieldLocator}                ${QuoteEmailAddressTxt}
            input text      ${QuoteGrossMonthlyIncomeFieldLocator}          ${QuoteGrossMonthlyIncomeTxt}
            input text      ${QuoteTotalMonthlyExpenseFieldLocator}         ${QuoteTotalMonthlyExpenseTxt}

has filled in income fields
            Sleep           5 Sec
            input text      ${QuoteGrossMonthlyIncomeFieldLocator}          ${QuoteGrossMonthlyIncomeTxt}
            input text      ${QuoteTotalMonthlyExpenseFieldLocator}         ${QuoteTotalMonthlyExpenseTxt}
the Customer enters IdNumber into the field
            [Arguments]   ${IDNumber}
            input text      ${QuoteSAIdFieldLocator}     ${IDNumber}

deselects the field
            Clear Element Text  ${QuoteSAIdFieldLocator}
            Press Keys       ${QuoteSAIdFieldLocator}   TAB

a 'South African ID number is invalid' is displayed beneath the field
            Element Should Contain      ${QuoteSAIdTextErrorLocator}            ${QuoteSAIdTextErrorTxt}

the SUBMIT button is disabled
            Page Should Contain Element   	${SubmitButonDisable}

the Customer hovers the tip icon at the GROSS MONTHLY INCOME
           Mouse Over   ${QuoteGrossMonthlyIncomeToolImg}

GROSS MONTHLY INCOME tool tip descirption is appeared
            Element Should Be Visible     ${QuoteGrossMonthlyIncomeToolTextLocator}
            Element Should Contain        ${QuoteGrossMonthlyIncomeToolTextLocator}   ${QuoteGrossMonthlyIncomeToolText}

hovers the tip icon at the TOTAL MONTHLY EXPENSES
            Mouse Over                      ${QuoteTotalMonthlyIncomeToolImg}

TOTAL MONTHLY EXPENSES tool tip descirption is appeared
            Element Should Be Visible    ${QuoteTotalMonthlyIncomeToolTextLocator}
            Element Should Contain       ${QuoteTotalMonthlyIncomeToolTextLocator}   ${QuoteTotalMonthlyIncomeToolText}

the Customer selects the CANCEL button
            Click Element                       ${CancelButonLocator}

the previous page is displayed
            Wait Until Element Is Visible       ${LendingSolutionPageTxt}
            Element Should Be Visible           ${LendingSolutionPageTxt}

the Customer selects the 'SUBMIT' button
             Wait Until Keyword Succeeds  1 Min     5 sec   Click Element    ${ConfirmationCheckbox}
             Wait Until Keyword Succeeds  1 Min     5 sec   Click Element    ${SubmitButonLocator}

the Customer click the 'SUBMIT' button
                Wait Until Keyword Succeeds  1 Min     5 sec   Click Element    ${SubmitButonLocator}

the Get Quote Results Page is displayed
#             sleep   20s
#             #Wait Until Element Is Visible   ${QuoteResultPageTxt}
#             sleep   40s
             Wait Until Keyword Succeeds  2 Min     5 sec   Page Should Contain Element     ${QuoteResultPageTxt}

Clear Field Of Characters
    [Arguments]    ${field}    ${character count}
    [Documentation]    This keyword pushes the delete key (ascii: \8) a specified number of times in a specified field.
    FOR    ${index}    IN RANGE    ${character count}
        Press Keys    ${field}    \\
    END

the Customer remove value from all mandatory fields

             Clear Element Text      ${QuoteNameFieldLocator}
             Clear Element Text      ${QuoteSurNameFieldLocator}
             Clear Element Text      ${QuoteSAIdFieldLocator}
             Clear Element Text      ${QuoteCellPhoneNumberFieldLocator}
             Clear Element Text      ${QuoteEmailAddressFieldLocator}
             Press Keys    ${QuoteGrossMonthlyIncomeFieldLocator}   A+BACKSPACE
             Press Keys     ${QuoteTotalMonthlyExpenseFieldLocator}  A+BACKSPACE


clicks another field
              Press Keys       NONE     TAB

a 'This field is required' info is displayed beneath all mandatory field
             Element Should Contain          ${QuoteNameBlankErrLocator}             ${QuoteNameBlankErrText}
             Element Should Contain          ${QuoteNameQuantityErrLocator}          ${QuoteNameQuantityErrText}
             Element Should Contain          ${QuoteSurNameBlankErrLocator}          ${QuoteSurNameBlankErrText}
             Element Should Contain          ${QuoteSurNameQuantityErrLocator}       ${QuoteSurNameQuantityErrText}
             Element Should Contain          ${QuoteSAIdTextErrorLocator}            ${QuoteSAIdTextErrorTxt}
             Element Should Contain          ${QuoteSAIdQuantityErrorLocator}        ${QuoteSAIdQyantityTextErrorTxt}
             Element Should Contain          ${QuoteCellPhoneNumberErrorLocator}     ${QuoteCellPhoneNumberErrorTxt}
             Element Should Contain          ${QuoteEmailAddressErrorLocator}        ${QuoteEmailAddressErrorTxt}
             Element Should Contain          ${QuoteGrossMonthlyIncomeLocator}       ${QuoteGrossMonthlyIncomeErrorTxt}
             Element Should Contain          ${QuoteTotalMonthlyIncomeLocator}       ${QuoteTotalMonthlyIncomeErrorTxt}