*** Settings ***
Library         Selenium2Library
Library         AppiumLibrary
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Suite Setup    CommonRepo.Starting session with Andriod Chrome Browser
Suite Teardown  CommonRepo.Ending session by closing the Andriod Chrome Browser

*** Variables ***
${remote_url}    http://localhost:4723/wd/hub
${platformName} =    Android
${platformVersion} =    9.0
${deviceName}=    'Pixel_3a_API_28'
${browserName}=    Chrome
${automationName}=  UIAutomator2

*** Test Cases ***
Opening browsers
    Open Page

*** Keywords ***
Open Page
    log  "Done"
    sleep  10
    run keyword  ~/Library/Android/sdk/emulator/emulator -avd Pixel_3a_API_28