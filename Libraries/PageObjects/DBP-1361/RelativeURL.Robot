*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary.Get WebElements
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot

*** Variables ***
${HomePageLink}      //*[@src]

*** Keywords ***
Link does not contains absolute URL
                    [Arguments]  ${SpecificTime}
                    sleep           5s
                    ${count}      get element count  ${HomePageLink}
                     FOR   ${index}    IN RANGE   1    ${count}+1
                        ${value}=       get element attribute    (${HomePageLink})[${index}]      src
                        run keyword and continue on failure  should not contain   ${value}   ${SpecificTime}
                     END
