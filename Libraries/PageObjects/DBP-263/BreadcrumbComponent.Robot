*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  SeleniumLibrary.Get WebElements
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Resource    ../../../Libraries/PageObjects/DBP-821/QuoteForm.Robot

*** Variables ***

${BreadCrumbLinks}                  //*[contains(@class, "breadcrumb breadcrumb")]//a
${BreadCrumbComponenet}              (//*[contains(@class, "breadcrumb breadcrumb")])[1]//li
${BreadCrumb1stComponenet}            (//*[contains(@class, "breadcrumb breadcrumb")])[1]//a[1]
${BreadCrumb2ndComponenet}             (//*[contains(@class, "breadcrumb breadcrumb")])[1]//li[2]/a
${BreadCrumb3rdComponenet}          (//*[contains(@class, "breadcrumb breadcrumb")])[1]//li[3]
${LendingSolutionsTertiary}         //*[contains(@class, "breadcrumb breadcrumb")]//*[text()="Lending Solutions"]


*** Keywords ***
the Customer has open guided selling
                    GO TO                           ${customerUrl.${QuoteFormURL}}
the links are set up as clickable
                    wait until element is enabled    ${BreadCrumbLinks}
                    element should be visible          ${BreadCrumbLinks}

the Customer has navigated to a page on the Tertiary Navigation level
                    element should be visible   ${LendingSolutionsTertiary}

the Customer displays the Breadcrumb Component
                    element should be visible      ${BreadCrumbComponenet}

the first node is displayed as 'Home' with link to Primary Navigation level
                    ${homeExpected}   get text      ${BreadCrumb1stComponenet}
                    should contain   ${homeExpected}        Home
the second node is displayed with its label with link to Secondary Navigation level
                   ${ProductsAndServicesExpected}   get text      ${BreadCrumb2ndComponenet}
                   should contain   ${ProductsAndServicesExpected}       Products and Services

the third node is displayed with its label to Tertiary Navigation level
                   ${LendingSolutionsExpected}   get text      ${BreadCrumb3rdComponenet}
                   should contain    ${LendingSolutionsExpected}       Lending Solutions
the Customer clicks the last node of the Breadcrumb Component
                    click element               ${BreadCrumb2ndComponenet}
the page behind the link is opened
                    sleep                   5s
                    ${CurrentURL}           get location
                    log to console          ${CurrentURL}
                    should contain          ${CurrentURL}    products
the Customer clicks the first node of the Breadcrumb Component
                     click element               ${BreadCrumb1stComponenet}
the page behind the link is opened for first node
                       sleep                   5s
                    ${CurrentURL}           get location
                    log to console          ${CurrentURL}
                    should contain          ${CurrentURL}    home
no breadcrumb navigation is displayed
                      element should not be visible      element should be visible          ${BreadCrumbLinks}

the Customer clicks a node of the Breadcrumb Component
                        click element            ${BreadCrumb3rdComponenet}
the node is displayed without a link
                        element should not be visible   ${BreadCrumb3rdComponenet}//a