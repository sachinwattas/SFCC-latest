*** Settings ***
Documentation    This script starts apps on two phones
Library           AppiumLibrary
Library          Collections

*** Variables ***
${APPIUM_SERVER1}    http://localhost:4723/wd/hub



*** Test cases ***
Test
    setup and open android phone1


*** Keywords ***
setup and open android phone1
    ${androiddriver1}=    Open Application    ${APPIUM_SERVER1}    platformName=android    platformVersion=11.0    deviceName=Pixel_XL_API_30    automationName=uiautomator2
    ...    appPackage=com.samsung.android.contacts    newCommandTimeout=2500    noReset=true    appActivity=com.android.dialer.DialtactsActivity
    Set Suite Variable    ${androiddriver1}