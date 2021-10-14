*** Settings ***
Documentation   	Test suite created to input country name and search.
Library   	SeleniumLibrary
#Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource   ../../../Libraries/PageObjects/DBP-238/CountrySelectorPage.robot
#Test Setup  CommonRepo.Starting Session with Desktop Browser
#Test Teardown  CommonRepo.Ending Session by Closing the Desktop Browser
Test Template  CountrySelectorPage.Cross Browser Country Search Run


*** Variables ***

*** Test Cases ***
CountrySelectorPage.Enter valid Country Angola name and Search  DEV  chrome  ${angolaLocator}  https://www.standardbank.co.ao/  Angola
    [Documentation]   Verify Angola Country input and verify
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-238

CountrySelectorPage.Enter valid Country Zimbabwe name and Search  DEV  chrome  ${zimbabweLocator}  https://www.stanbicbank.co.zw/  Zimbabwe
    [Documentation]   Verify Zimbabwe Country input and verify
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-238

CountrySelectorPage.Enter invalid Country name and Search  DEV  chrome  ${ghanaLocator}  https://www.Dummybank.com.gh/  Dummy
    [Documentation]   Verify invalid Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-238
#Home page check in opera    DEMO  opera  ${botswanaLocator}   https://www.stanbicbank.co.bw/  Botswana
#    [documentation]   Verify Botswana Country selection
#    [tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-238
#Home page check in safari   DEMO  safari  ${botswanaLocator}  https://www.stanbicbank.co.bw/  Botswana
#    [documentation]   SBSA Home page and Static header Check
#    [tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-238


*** Keywords ***
