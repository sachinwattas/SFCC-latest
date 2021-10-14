*** Settings ***
Library    SeleniumLibrary
Documentation   	Feature:TabComponent
Library    pyautogui
Library    ImageHorizonLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/SiteManagerCommonKeywords.robot


#Suite Setup  CommonRepo.Starting Session with Desktop Browser
#Suite Teardown   CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***

${ucountTabComponentLocator}    //div[contains(@class,'experience-component experience-commerce_layouts-tabLayout')]
${registerMenuTabLocator}     css=a[href='#tab-0']
#${registerMenuCSSTabLocator}
${registerMenucontainerLocator}    //div[@id='tab-0']

${earnMenuTabLocator}    //*[@id="Personal"]/div[2]/div/div[9]/div/div/div[1]/div/div/div/ul/li[2]/a
${earnMenucontainerLocator}    //div[@id='tab-1']
${redeemMenuTabLocator}    //*[@id="Personal"]/div[2]/div/div[9]/div/div/div[1]/div/div/div/ul/li[3]/a
${redeemMenucontainerLocator}    //div[@id='tab-2']
${expBgBottomColor}    rgba(0, 137, 255, 1)


#Sitemanger - varibale for argument input for keyword "Launch Page Structure and access Tree components"
# "Tab Component" component
${tabComponentLocator}   //span[@title="Tab Component"]

${tabsContentDropdownLocator}    //html/body/select
${isActiveCheckboxLocator}    //html/body/div[2]/div[1]/div/div
${titleTextEditLocator}    //html/body/div[2]/div[2]/div/input
${contentTextEditFrameLocator}    //*[@id="cke_1_contents"]/iframe
${contentTextEditLocator}    //html/body


${additionalContentTextEditLocator}    //html/body/app-root/div/editor-screen/div/main/component-settings/div/div[2]/div[2]/form/div[2]/div/fieldset/div[2]/div/div/div/div[2]/div/div/div/div[2]/div/div[1]

#${text1ForTabComponent}      ID number
#    ...                      Create your account
#    ...                      Order your UCount Rewards card
#    ...                      Arrange payment details
#    ...                      Choose Your Own Rewards
#    ...                      Confirm your membership
${text1ForTabComponent}    •	ID number
${text2ForTabComponent}    •	Create your account
${text3ForTabComponent}    •	Order your UCount Rewards card
${text4ForTabComponent}    •	Arrange payment details
${text5ForTabComponent}    •	Choose Your Own Rewards
${text6ForTabComponent}    •	Confirm your membership

#<ul class="decorated"><li>ID number</li><li>Create your account</li><li>Order your UCount Rewards card</li><li>Arrange payment details</li><li>Choose Your Own Rewards</li><li>Confirm your membership</li></ul>
${additionalTextForTabcomponent}    View T&Cs
#<h4><a href="https://www.standardbank.co.za/" target="_self" data-link-type="external" data-link-label="https://www.standardbank.co.za/">View T&amp;Cs</a></h4><h4><br></h4>
${tabComponentSavaAndClose}    //html/body/app-root/div/editor-screen/div/main/component-settings/div/div[3]/button[2]

${tabComponentFrame1}    //html/body/app-root/div/editor-screen/div/main/component-settings/div/div[2]/div[2]/form/div[1]/div/fieldset/div[2]/div/div/div/div[2]/div/div/custom-attribute-editor/iframe
${tabComponentFrame2}    //html/body/div[2]/div[3]/div/div/iframe
${tabComponentTab1Register}    //html/body/select
${tabComponentTab1Select}    //html/body/select/option[1]/text()
${tabComponentCheckboxIsActive}    //html/body/div[2]/div[1]/div/div/label/span[1]
${tabComponentTitleInput}    //html[1]/body[1]/div[2]/div[2]/div[1]/input[1]
${tabComponentTextEditor}    //html/body
${tabComponentTextEditor1}    //html/body/p

${openAdditionalTextLargeEditor}  //html/body/app-root/div/editor-screen/div/main/component-settings/div/div[2]/div[2]/form/div[2]/div/fieldset/div[2]/div/div/div/div[2]/div/div/div/div[1]/ul[8]/li/div/button
${additionalTextContainer}    //html/body/div[10]/section/div/div/div/div[2]/div/div[1]
${addLinkToText}    //html/body/div[10]/section/div/div/div/div[1]/ul[5]/li[1]/div/div/button

${externalLinkAddressTab}    //html/body/app-root/section/div[2]/div/cc--link-builder-panel/div/ul/li[6]/a
${externalLinkInputLocator}    //html/body/app-root/section/div[2]/div/cc--link-builder-panel/div/div[6]/cc--url-picker/div/input
${externalLinkAddressText}    https://ucount.standardbank.co.za/personal/how-it-works/support/terms-and-conditions/
${openInNewWindowCheckbox}    //html/body/app-root/section/div[2]/footer/div/div[1]/div/span/label/span[1]
${createLinkButton}    //html/body/app-root/section/div[2]/footer/div/div[2]/button[2]
${applyButton}    //html/body/div[10]/section/div/footer/button[2]
${tabComponentSaveButton}    //html/body/app-root/div/editor-screen/div/main/component-settings/div/div[3]/button[3]


${registerTabTextLocator}    //div[@class='tab-component']/div[@class='tab-content']

${registerTabAddiTextLocator}    //p[.='View T&Cs']

${tab1NameLocator}    //select[@class='slds-select slds-m-bottom_small']
${tab2NameLocator}    //html/body/select/option[2]/text()
${tab3NameLocator}    //html/body/select/option[3]/text()
${tab4NameLocator}    //html/body/select/option[4]/text()
${tab5NameLocator}    //html/body/select/option[5]/text()
${tab6NameLocator}    //html/body/select/option[6]/text()
${tabComponentMainContentLinkButton}    //html/body/div[3]/div[3]/div/span[1]/span[2]/span[2]/span[3]/a[1]

${tabParagraphFormat}    //html/body/div[3]/div[3]/div/span[1]/span[2]/span[7]/span[4]/a
${objectStyles}    //html/body/div[3]/div[3]/div/span[1]/span[2]/span[7]/span[3]/a
${titleLocator}    //body[1]/div[3]/div[contains(.,'*  Title')]
${editLinkLocator}    //html/body/app-root/div[2]/ul/li[1]/a/span
${closeButton}    //html/body/app-root/div/editor-screen/div/main/component-settings/div/div[3]/button[1]

${discardChanges&ContinueButton}    //button[.='Discard Changes & Continue']

*** Test Cases ***

Site Manager sets the tab title in the input field on Page Designer
    [Documentation]  Feature: Tab Component
    ...    Scenario:  Customer displays the tab title
    [Tags]  Scenario_DBP-736  UserStory_DBP-485
    When the Site Manager adds the title for the tab
#    And set the associate tab content
#    And clicks Save
#    Then the tab title is saved


Customer displays the tab title
    [Documentation]  Feature: Tab Component
    ...    Scenario:  Customer displays the tab title
    [Tags]  Scenario_DBP-739  UserStory_DBP-485
#    Given Site Manager at least set a tab title
    When the Customer click the tab title
    Then the content a blue line below the tab title are displayed

Customer displays tab content
    [Documentation]  Feature: Tab Component
    ...    Scenario:   Customer displays tab content
    [Tags]  Scenario_DBP-740  UserStory_DBP-485
#    Given Site Manager has set the content for the associate tab title
    When the Customer click the tab title
    Then content is displayed

#Customer displays additional fix content
#    [Documentation]  Feature: Tab Component
#    ...    Scenario:  Customer displays additional fix content
#    [Tags]  Scenario_DBP-741  UserStory_DBP-485
#    When Customer navigate to the tab area
#    Then the additional content is displayed



*** Keywords ***

the Site Manager adds the title for the tab
    Open site manager
    Select site SB COZA
    go to merchant page
    go to content page under merchant tools
    Wait Until Keyword Succeeds    3x    200ms    open storefront and switch to business manager
    Run Keyword And Continue On Failure    go to page designer to access page    Personal
    Run Keyword And Continue On Failure    Launch Page Structure and access Tree components    ${tabComponentLocator}
    Verify Tab Component Fields
#    Verify Tab Component fields update changes



Verify Tab Component Fields
    Run Keyword And Continue On Failure        Select Frame    ${tabComponentFrame1}
#    Run Keyword And Continue On Failure    Click Element    //html/body/app-root/div/editor-screen/div/main/component-settings/div/div[2]/div[2]/form/div[1]/div/fieldset/div[2]/div/div/div/div[2]/div/div/custom-attribute-editor
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${tabComponentTab1Register}    20
    Element Should Be Visible    ${tabComponentTab1Register}
    Run Keyword And Continue On Failure    Click Element    ${tabComponentTab1Register}
    Run Keyword And Continue On Failure    Element Should Contain    ${tab1NameLocator}    REGISTER
    Press Keys    ${tab1NameLocator}    ARROW_DOWN
    Press Keys  ${tabComponentTextEditor}  ENTER
    Run Keyword And Continue On Failure    Element Should Contain    ${tab1NameLocator}    EARN
    Run Keyword And Continue On Failure    Click Element    ${tabComponentTab1Register}
    Press Keys    ${tab1NameLocator}    ARROW_DOWN
    Press Keys  ${tabComponentTextEditor}  ENTER
    Run Keyword And Continue On Failure    Element Should Contain    ${tab1NameLocator}    REDEEM
    Run Keyword And Continue On Failure    Click Element    ${tabComponentTab1Register}
    BuiltIn.Sleep    1s
    Press Keys    ${tab1NameLocator}    ARROW_DOWN
    Press Keys  ${tabComponentTextEditor}  ENTER
#    BuiltIn.Sleep    1s
#    Run Keyword And Continue On Failure    Element Should Contain    ${tab1NameLocator}    Tab No 4
#    Run Keyword And Continue On Failure    Click Element    ${tabComponentTab1Register}
#    Press Keys    ${tab1NameLocator}    ARROW_DOWN
#    Press Keys  ${tabComponentTextEditor}  ENTER
    Run Keyword And Continue On Failure    Element Should Contain    ${tab1NameLocator}    Tab No 5
    Run Keyword And Continue On Failure    Click Element    ${tabComponentTab1Register}
    Press Keys    ${tab1NameLocator}    ARROW_DOWN
    Press Keys  ${tabComponentTextEditor}  ENTER
    Run Keyword And Continue On Failure    Element Should Contain    ${tab1NameLocator}    Tab No 6
    Run Keyword And Continue On Failure    Element Should Be Visible    ${tabComponentCheckboxIsActive}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${tabComponentTitleInput}
#    Run Keyword And Continue On Failure    Element Should Contain    ${titleLocator}    REGISTER

#    RUN KEYWORD AND CONTINUE ON FAILURE    Element Should Be Visible    ${titleLocator}
    Run Keyword And Continue On Failure    Select Frame    ${tabComponentFrame2}
#    Run Keyword And Continue On Failure    Element Should Be Visible    ${tabComponentMainContentLinkButton}
#    Run Keyword And Continue On Failure    Element Should Be Visible    ${tabParagraphFormat}
#    Run Keyword And Continue On Failure    Element Should Be Visible    ${objectStyles}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${tabComponentTextEditor}
    Unselect Frame
    Unselect Frame

    Run Keyword And Continue On Failure    Click Element    ${openAdditionalTextLargeEditor}
    wait until element is visible    ${additionalContentTextEditLocator}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${additionalTextContainer}
    Run Keyword And Continue On Failure    Click Element    ${addLinkToText}
    Run Keyword And Continue On Failure    Click Element    ${editLinkLocator}

    Run Keyword And Continue On Failure    Click Element    ${externalLinkAddressTab}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${externalLinkInputLocator}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${openInNewWindowCheckbox}
    Run Keyword And Continue On Failure    Click Element    ${createLinkButton}
    Run Keyword And Continue On Failure    Click Element    ${applyButton}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${tabComponentSaveButton}
    Run Keyword And Continue On Failure    Element Should Be Visible    ${tabComponentSavaAndClose}
    Run Keyword And Continue On Failure    Click Element    ${closeButton}
    unsaved component changes
    Exit Page Designer


Verify Tab Component fields update changes
    Run Keyword And Continue On Failure        Select Frame    ${tabComponentFrame1}
#    Run Keyword And Continue On Failure    Click Element    //html/body/app-root/div/editor-screen/div/main/component-settings/div/div[2]/div[2]/form/div[1]/div/fieldset/div[2]/div/div/div/div[2]/div/div/custom-attribute-editor
    Run Keyword And Continue On Failure    Wait Until Element Is Visible    ${tabComponentTab1Register}    20
    Run Keyword And Continue On Failure    Click Element    ${tabComponentTab1Register}
    Press Keys  None  ARROW_DOWN
    Press Keys  None  RETURN
    Run Keyword And Continue On Failure    Element Should Be Visible    ${tabComponentCheckboxIsActive}
    Run Keyword And Continue On Failure        Input Text    ${tabComponentTitleInput}     Register
    Run Keyword And Continue On Failure    Select Frame    ${tabComponentFrame2}
    Run Keyword And Continue On Failure        Input Text    ${tabComponentTextEditor}  ${text1ForTabComponent}    true
#    Press Keys  ${tabComponentTextEditor}  ENTER
#    Run Keyword And Continue On Failure        Input Text    ${tabComponentTextEditor1}  ${text2ForTabComponent}
#    Press Keys  ${tabComponentTextEditor}  ENTER
#    Run Keyword And Continue On Failure        Input Text    ${tabComponentTextEditor1}  ${text3ForTabComponent}
#    Press Keys  ${tabComponentTextEditor}  ENTER
#    Run Keyword And Continue On Failure        Input Text    ${tabComponentTextEditor1}  ${text4ForTabComponent}
#    Press Keys  ${tabComponentTextEditor}  ENTER
#    Run Keyword And Continue On Failure        Input Text    ${tabComponentTextEditor1}  ${text5ForTabComponent}
#    Press Keys  ${tabComponentTextEditor}  ENTER
#    Run Keyword And Continue On Failure        Input Text    ${tabComponentTextEditor1}  ${text6ForTabComponent}

    Unselect Frame
    Unselect Frame

    Click Element    ${openAdditionalTextLargeEditor}
    wait until element is visible    ${additionalContentTextEditLocator}
    Input Text    ${additionalTextContainer}   ${additionalTextForTabcomponent}    true
    BuiltIn.sleep    1s
    Press Keys  ${additionalTextContainer}   COMMAND+SHIFT+ARROW_RIGHT
    BuiltIn.sleep    1s
    Press Keys  ${additionalTextContainer}    COMMAND+a
    BuiltIn.sleep    1s
    Run Keyword And Continue On Failure    Click Element    ${addLinkToText}
    Run Keyword And Continue On Failure    Click Element    ${externalLinkAddressTab}
    Run Keyword And Continue On Failure    Input Text    ${externalLinkInputLocator}    ${externalLinkAddressText}
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${openInNewWindowCheckbox}
    Run Keyword And Continue On Failure    Click Element    ${createLinkButton}
    Run Keyword And Continue On Failure    Click Element    ${applyButton}
#    Click Element    ${tabComponentSaveButton}
    Click Element    ${tabComponentSavaAndClose}
    Exit Page Designer



the Customer click the tab title
#    Switch Window    New
    go to    ${PersonalPageLocation1}
    wait until element is visible    ${ucountTabComponentLocator}
    Mouse Over    ${ucountTabComponentLocator}
#    Click Element    ${registerMenuTabLocator}
    Run Keyword And Continue On Failure    Click Link    ${registerMenuTabLocator}
    Run Keyword And Continue On Failure    Mouse Over    ${registerMenuTabLocator}



the content a blue line below the tab title are displayed

    ${elem}    Get Webelement    ${registerMenuTabLocator}
    ${bgColor}    Call Method    ${elem}    value_of_css_property     border-bottom-color
    log    ${bgColor}
    #evaluate  ${bgColor} == ${expBgColor}
    should be equal    ${bgColor}    ${expBgBottomColor}

content is displayed
    Run Keyword And Continue On Failure    Element Should Be Visible    ${registerTabTextLocator}
#    Run Keyword And Continue On Failure    Element Should Be Visible    //div[@class='col-12 col-md-7 pr-md-0']
    Run Keyword And Continue On Failure    Element Should Be Visible    ${registerTabAddiTextLocator}
    Close All Browsers

unsaved component changes
    Run Keyword And Continue On Failure    Element Should Be Enabled    ${discardChanges&ContinueButton}
    ${popExist}=    run keyword and return status    element should be visible    ${discardChanges&ContinueButton}
    run keyword if  ${popExist}     Clicking DiscardChangesAndContinue

Clicking DiscardChangesAndContinue
    click Button  ${discardChanges&ContinueButton}
