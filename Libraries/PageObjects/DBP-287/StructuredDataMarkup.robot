*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Libraries/PageObjects/CommonRepo.robot

*** Variables ***
${HomepageHeadTagImg1}                  (//*[@type="application/ld+json"])[1]
${HomepageJSON1Text}                  { "@context" : "http://schema.org","@type" : "Organization","legalName" : "Standard Bank","url" : "https://www.standardbank.co.za","contactPoint" : [{"@type" : "ContactPoint","telephone"
                                        : "+27 11 636 9111","contactType" : "customer service"}]"logo" : "https://www.standardbank.co.za/static_file/assets/favicons/favicon.ico","sameAs" : [ "https://www.facebook.com/StandardB
                                        ankSA","http://www.twitter.com/standardbankza","https://www.youtube.com/channel/UC_oz5no5MIucu45I4PO9nCQ","https://www.linkedin.com/company/standard-bank-south-africa/"]}
${HomepageHeadTagImg2}                  (//*[@type="application/ld+json"])[2]
${HomepageJSON2Text}                    {"@context" : "http://schema.org","@type" : "WebSite","name" : "Standard Bank","url" : "https://www.standardbank.co.za","potentialAction" : {"@type" : "SearchAction","target" : "www.standardbank.co.za/southafrica/personal/search?q={search_term}","query-input" : "required name=search_term"}}

*** Keywords ***
is stored in a Site Preference attribute called Homepage's Structured Mark-up
	        Page Should Contain Element     ${HomepageHeadTagImg1}
	        ${getAltAtrribute}=             Get Element Attribute           ${HomepageHeadTagImg1}     attribute=text
	        should contain                  ${getAltAtrribute}              ${HomepageJSON1Text}
	        Page Should Contain Element    ${HomepageHeadTagImg2}
	        ${getAltAtrribute}=             Get Element Attribute           ${HomepageHeadTagImg2}     attribute=text
	        should contain                  ${getAltAtrribute}              ${HomepageJSON2Text}



