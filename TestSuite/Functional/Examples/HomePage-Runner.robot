*** Settings ***
Library     SeleniumLibrary
Resource   ../../Libraries/PageObjects/HomePageRepo.robot
Resource   ../../../Libraries/PageObjects/CommonRepo.robot
Test Setup  CommonRepo.Starting Session with Desktop Browser
Test Teardown  CommonRepo.Ending Session by Closing the Desktop Browser

*** Variables ***
${Text}
${Env}  PROD
&{url}  PROD=https://www.wikipedia.org/    Dev=http://standardbank.co.za   SIT=http://standardbank.co.za
${Browser}  Chrome


*** Test Cases ***
#Scaerios list....
Search topic Test
    [documentation]   wiki Home page and search topic Check
    [tags]  Sprint1
    HomePageRepo.search topic
View Contents
    [documentation]  view contents of the found topic
    [tags]  Sprint1
    HomePageRepo.Language Selection
    HomePageRepo.Content view

View Current events
    [documentation]  view current events
    [tags]  Sprint2
    HomePageRepo.Language Selection
    HomePageRepo.Current Events view


*** keywords ***

