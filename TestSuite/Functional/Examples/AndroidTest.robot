*** Settings ***
Library     AppiumLibrary
Library     Process
Library     Collections

#Suite Setup  Start Appium
#Suite Teardown  Stop Appium process

*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    9.0
${DEVICE_NAME}    Android Emulator
${BROWSER_NAME}     Chrome
#${APP}            /Users/krishna/Downloads/ContactManager.apk

*** variables ***
${APPIUM_SERVER1}    http://127.0.0.1:4723/wd/hub

*** Test Cases ***
Adding Contacts
#    setup and open android phone1
    add new contact  krishna  0749055035  krisna85@gmail.com
*** Keywords ***
add new contact
    [Arguments]    ${contact_name}    ${contact_phone}    ${contact_email}
    #Open Application  ${REMOTE_URL}  platformName=Android  platformVersion=${PLATFORM_VERSION}  deviceName=Pixel_XL_API_30  app=${APP}  automationName=appium  appPackage=com.example.android.contactmanager
    Open Application  ${REMOTE_URL}  platformName=Android  platformVersion=${PLATFORM_VERSION}  deviceName=Pixel_XL_API_30  browserName=${BROWSER_NAME}  automationName=UIAutomator2    appPackage=com.android.chrome
    Go To Url   https://www.standardbank.co.za/
    sleep  5
    #Click Element    accessibility_id=Add Contact
    #Input Text    xpath=//android.widget.TableLayout[@index='0']/android.widget.TableRow[@index='3']/android.widget.EditText[@index='0']    ${contact_name}
    #Input Text    xpath=//android.widget.TableLayout[@index='0']/android.widget.TableRow[@index='5']/android.widget.EditText[@index='0']     ${contact_phone}
    #Input Text    xpath=//android.widget.TableLayout[@index='0']/android.widget.TableRow[@index='7']/android.widget.EditText[@index='0']    ${contact_email}
    #Click Element    accessibility_id=Save



setup and open android phone1
    ${androiddriver1}=    Open Application    ${APPIUM_SERVER1}    platformName=android    platformVersion=11.0    deviceName=Pixel_XL_API_30    automationName=uiautomator2    browserName=Chrome
    ...    appPackage=com.samsung.android.contacts    newCommandTimeout=2500    appActivity=com.android.dialer.DialtactsActivity
    Set Suite Variable    ${androiddriver1}
