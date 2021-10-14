*** settings ***
Library     SeleniumLibrary

*** Variables ***


*** keywords ***
Verify Static Primary Navigation header options
    element should contain  //li[@class='header__top-bar-nav-item header__top-bar-nav-item--active']//a[contains(text(),'Personal')]  Personal
    element should contain  //li[contains(@class,'header__top-bar-nav-item')]//a[contains(text(),'Business')]  Business
    element should contain  //li[contains(@class,'header__top-bar-nav-item')]//a[contains(text(),'Corporate and Institutions')]  Corporate and Institutions
    ${Title}  get window titles
    log  ${Title}

