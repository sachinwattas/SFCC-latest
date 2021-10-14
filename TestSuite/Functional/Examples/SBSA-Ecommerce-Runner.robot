*** settings ***
Library     SeleniumLibrary
Resource   ../../Resources/SBSA-EcommerceRepo.robot
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown  CommonRepo.Ending Session by Closing the Desktop Browser
Documentation   	Test suite created with ChromeRobot.
Library   	SeleniumLibrary   15.0   5.0

*** Variables ***
${Text}
${Env}  PROD
&{url}  PROD=https://www.standardbank.co.za/    Dev=http://standardbank.co.za   SIT=http://standardbank.co.za
${BROWSER}  ff
@{list}

*** Test Cases ***

SBSA Home page
    [documentation]   SBSA Home page and Static header Check
    [tags]  Sprint1  UserStory:DBP-287
    Verify Static Primary Navigation header options
    OtherStuff

Homepage Checks
    [documentation]   home page verify element text
    [tags]  Sprint1  UserStory:DBP-245
	HomePageValidation

Homepage Clicks
    [documentation]   home page verify click actions
    [tags]  Sprint1  UserStory:DBP-213
    Check clicks

*** Keywords ***

OtherStuff
    ${Var}  get element attribute   //*[@id="Shape"]  id
    log  ${Var}
    #run keyword if
    ${Var}  get element count  //*[@id="Shape"]
    log  ${Var}
    #${Var}  get element location  //*[@id="Shape"]
    #log  ${Var}
    ${Var}  get window titles
    log  ${Var}
    #get text
    @{list}=  get webelements  xpath:/html/body/header/div[3]
    FOR  ${num}  IN  @{list}
    ${element}=  get text  ${num}
    ${EleCount}=  get element count  /html/body/header/div
    element should be visible  //*[@id="Shape"]
    log to console  Standabank logo visible
    capture page screenshot  Homepage.png
    run keyword if  ${EleCount} == 1  log to console  given-element count matches  ELSE  log to console  given-element count not matching
    END


HomePageValidation
	Page Should Contain   	Products and Services
	Page Should Contain   	Bank with us
	Page Should Contain   	Borrow for your needs
	Page Should Contain   	Grow your money
	Page Should Contain   	Insure what matters
	Page Should Contain   	Ways to bank
	Page Should Contain   	Security Centre
	Page Should Contain   	Bank accounts
	Page Should Contain   	See all accounts
	Page Should Contain   	Compare accounts
	Page Should Contain   	Managing your account
	Page Should Contain   	Credit cards
	Page Should Contain   	See all cards
	Page Should Contain   	Compare cards
	Page Should Contain   	Managing your card
	Page Should Contain   	Savings and investment
	Page Should Contain   	Digital wallets
	Page Should Contain   	Instant Money wallet
	Page Should Contain   	Shyft global wallet
	Page Should Contain   	SnapScan Wallet
	Page Should Contain   	Foreign exchange
	Page Should Contain   	Foreign notes
	Page Should Contain   	MoneyGram
	Page Should Contain   	International Payments
	Page Should Contain   	Foreign Nationals
	Page Should Contain   	Temporary resident banking
	Page Should Contain   	Non-resident banking
	Page Should Contain   	International solutions
	Page Should Contain   	Prepaid cards
	Page Should Contain   	Sharíah banking
	Page Should Contain   	Home services
	Page Should Contain   	Buying a home
	Page Should Contain   	LookSee Property Guide
	Page Should Contain   	Building a house
	Page Should Contain   	Setting up an Access Bond
	Page Should Contain   	Extending your homeloan
	Page Should Contain   	Managing your bond
	Page Should Contain   	Calculators
	Page Should Contain   	Additional Home Services
	Page Should Contain   	Tiered Rates
	Page Should Contain   	Personal loans
	Page Should Contain   	See all loans
	Page Should Contain   	Compare personal loans
	Page Should Contain   	Loan calculator
	Page Should Contain   	Overdraft
	Page Should Contain   	Vehicle Financing
	Page Should Contain   	See financing options
	Page Should Contain   	Vehicle finance calculators
	Page Should Contain   	Student loans
	Page Should Contain   	See all student loans
	Page Should Contain   	Share Trading
	Page Should Contain   	Trade Locally
	Page Should Contain   	Trade offshore
	Page Should Contain   	Financial planning
	Page Should Contain   	Investment solutions
	Page Should Contain   	Your car
	Page Should Contain   	Insurance
	Page Should Contain   	Car and home
	Page Should Contain   	Warranties
	Page Should Contain   	Dent and scratch
	Page Should Contain   	Your home
	Page Should Contain   	Home contents
	Page Should Contain   	Building insurance
	Page Should Contain   	Your income
	Page Should Contain   	Salary protection
	Page Should Contain   	Disability cover
	Page Should Contain   	Serious illness cover
	Page Should Contain   	Your future
	Page Should Contain   	Wills
	Page Should Contain   	Trusts
	Page Should Contain   	Estates
	Page Should Contain   	Beneficiary care
	Page Should Contain   	Yourself
	Page Should Contain   	Funeral plans
	Page Should Contain   	Life cover
	Page Should Contain   	Personal accident
	Page Should Contain   	Travel insurance
	Page Should Contain   	Your debt
	Page Should Contain   	Credit card
	Page Should Contain   	Loans
	Page Should Contain   	Car finance shortfall
	Page Should Contain   	Car finance protection
	Page Should Contain   	Home loan protection
	Page Should Contain   	Self service banking
	Page Should Contain   	Online Banking
	Page Should Contain   	Banking app
	Page Should Contain   	Cellphone
	Page Should Contain   	ATM
	Page Should Contain   	Telephone
	Page Should Contain   	Get your smart ID
	Page Should Contain   	Innovative payment solutions
	Page Should Contain   	SnapScan at the till or online
	Page Should Contain   	Tap your phone with Samsung Pay
	Page Should Contain   	Shop online with Masterpass
	Page Should Contain   	Tap your card to pay at the tills
	Page Should Contain   	Send Instant Money
	Page Should Contain   	Pay with MyBills
	Page Should Contain   	Virtual Card
	Page Should Contain   	Escrow Service
	Page Should Contain   	Digital Banking
	Page Should Contain   	Bank safely
	Page Should Contain   	Online
	Page Should Contain   	On the ATM
	Page Should Contain   	On your cellphone
	Page Should Contain   	MyUpdates
	Page Should Contain   	DigiMe
	Page Should Contain   	Protect yourself
	Page Should Contain   	Guard your PIN
	Page Should Contain   	Personal information
	Page Should Contain   	Debit orders
	Page Should Contain   	Scam and fraud
	Page Should Contain   	Scams
	Page Should Contain   	Card fraud
	Page Should Contain   	Cheque fraud
	Page Should Contain   	Latest scams
	Page Should Contain   	Shop
	Page Should Contain   	Standard Bank Mobile
	Page Should Contain   	Standard Bank Devices
	Page Should Contain   	UCount Rewards Travel Mall
	Page Should Contain   	UCount Rewards Retailers Online
	Page Should Contain   	Our Rewards Retailers
	Page Should Contain   	UCount Rewards
	Page Should Contain   	Learn
	Page Should Contain   	COVID 19
	Page Should Contain   	Shop

Check clicks

    #Click Link    //a[@href="/southafrica/personal/campaigns/covid-19?intcmp=coza-sitewide-alertbanner-personal-covid19site"]
    #Go Back
	#Reload Page
	#set browser implicit wait  900
    Click Link    xpath=(//a[@href="/southafrica/personal"])[2]
    Go Back
    Reload Page
    set browser implicit wait  900
    Click Link    //a[@href="/southafrica/personal/products-and-services"]
    Go Back
    Reload Page




