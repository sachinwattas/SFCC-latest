*** Settings ***
Documentation   	Test suite created with Cross browser testing
Library   	SeleniumLibrary
Library
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource   ../../../Libraries/PageObjects/DBP-238/CountrySelectorPage.robot

Suite Setup  CommonRepo.Starting Session with Desktop Browser
Suite Teardown  CommonRepo.Ending Session by Closing the Desktop Browser
Test Template  Cross Browser Country Selection Run

*** Variables ***

*** Test Cases ***
View Angola Country Page   DEMO  ${Browser}  ${angolaLocator}  https://www.standardbank.co.ao/  Angola
    [Documentation]   Verify Angola Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-238

View Botswana Country Page   DEMO  ${Browser}  ${botswanaLocator}  https://www.stanbicbank.co.bw/  Botswana
    [Documentation]   Verify Botswana Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_1

View Congo Country Page   DEMO  ${Browser}  ${congoLocator}  https://www.standardbank.cd/  Congo
    [Documentation]   Verify Congo Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_2

View Cote D ivoire Country Page   DEMO  ${Browser}  ${cotedIvoireLocator}   https://www.stanbicbank.com.ci/  Côte d’Ivoire
    [Documentation]   Verify CotedIvory Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_3

View Ghana Country Page   DEMO  ${Browser}  ${ghanaLocator}  https://www.stanbicbank.com.gh/  Ghana
    [Documentation]   Verify Ghana Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_4

View Kenya Country Page   DEMO  ${Browser}  ${kenyaLocator}  https://www.stanbicbank.co.ke/  Kenya
    [Documentation]   Verify Kenya Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_5

View Lesotho Country Page   DEMO  ${Browser}  ${lesothoLocator}  https://www.standardlesothobank.co.ls/  Lesotho
    [Documentation]   Verify Lesotho Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_6

View Malawi Country Page   DEMO  ${Browser}  ${malawiLocator}  https://www.standardbank.co.mw/  Malawi
    [Documentation]   Verify Malawi Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_7

View Mauritius Country Page   DEMO  ${Browser}  ${mauritiusLocator}  https://www.standardbank.mu/  Mauritius
    [Documentation]   Verify mauritius Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_8

View Mozambique Country Page   DEMO  ${Browser}  ${mozambiqueLocator}  https://www.standardbank.co.mz/en  Mozambique
    [Documentation]   Verify Mozambique Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_9

View Namibia Country Page   DEMO  ${Browser}  ${namibiaLocator}  https://www.standardbank.com.na/  Namibia
    [Documentation]   Verify Namibia Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_10

View Nigeria Country Page   DEMO  ${Browser}  ${nigeriaLocator}  https://www.stanbicibtcbank.com/  Nigeria
    [Documentation]   Verify Nigeria Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_11

View South Africa Country Page   DEMO  ${Browser}  ${southAfricaLocator}  https://www.standardbank.co.za/  South Africa
    [Documentation]   Verify South Africa Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_12

View Swaziland Country Page   DEMO  ${Browser}  ${swazilandLocator}  https://www.standardbank.co.sz/  Swaziland
    [Documentation]   Verify Swaziland Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_13

View Tanzania Country Page   DEMO  ${Browser}  ${tanzaniaLocator}  https://www.stanbicbank.co.tz/  Tanzania
    [Documentation]   Verify Tanzania Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_14

View Uganda Country Page   DEMO  ${Browser}  ${ugandaLocator}  https://www.stanbicbank.co.ug/  Uganda
    [Documentation]   Verify Uganda Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_15

View Zambia Country Page   DEMO  ${Browser}  ${zambiaLocator}  https://www.stanbicbank.co.zm/  Zambia
    [Documentation]   Verify Zambia Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_16

View Zimbabwe Country Page   DEMO  ${Browser}  ${zimbabweLocator}  https://www.stanbicbank.co.zw/  Zimbabwe
    [Documentation]   Verify Zimbabwe Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_17

View IsleofManLocator Country Page   DEMO  ${Browser}  ${isleofManLocator}  https://international.standardbank.com/international/personal  Isle of Man
    [Documentation]   Verify IsleofManLocator Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_18

View Jersey Country Page   DEMO  ${Browser}  ${JerseyLocator}  https://international.standardbank.com/international/personal  Jersey
    [Documentation]   Verify Jersey Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_19

View United Kingdom Country Page   DEMO  ${Browser}  ${unitedKingdomLocator}  https://corporateandinvestment.standardbank.com/cib/global/country-presence/europe/united-kingdom  United Kingdom
    [Documentation]   Verify United Kingdom Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_20

View United Arab Emirates Country Page   DEMO  ${Browser}  ${unitedArabEmiratesLocator}  https://corporateandinvestment.standardbank.com/cib/global/country-presence/asia/united-arab-emirates  United Arab Emirates
    [Documentation]   Verify United Arab Emirates Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_21

View United States Country Page   DEMO  ${Browser}  ${unitedStatesLocator}  https://corporateandinvestment.standardbank.com/cib/global/country-presence/americas/usa  United States
    [Documentation]   Verify United States Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_22

View China Country Page   DEMO  ${Browser}  ${chinaLocator}  https://corporateandinvestment.standardbank.com/cib/global/country-presence/asia/china  China
    [Documentation]   Verify China Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_23

View Brazil Country Page   DEMO  ${Browser}  ${BrazilLocator}  https://corporateandinvestment.standardbank.com/cib/global/country-presence/americas/brazil  Brazil
    [Documentation]   Verify Brazil Country selection
    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-Adhoc_24


#View Selected Country Page check in firefox  DEMO  ff  ${ghanaLocator}  https://www.stanbicbank.com.gh/  Ghana
#    [Documentation]   Verify Ghana Country selection
#    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-238
#View Selected Country Page check in opera    DEMO  opera  ${botswanaLocator}   https://www.stanbicbank.co.bw/  Botswana
#    [Documentation]   Verify Botswana Country selection
#    [Tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-238
#Home page check in safari   DEMO  safari  ${botswanaLocator}  https://www.stanbicbank.co.bw/  Bostswana
#    [documentation]   SBSA Home page and Static header Check
#    [tags]  QA-SPRINT1  PROJECT-SPRINT4  DBP-238


*** Keywords ***
