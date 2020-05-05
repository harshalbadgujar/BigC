*** Settings ***
Library    String
Library    SeleniumLibrary

*** Variable ***
${site}                https://sit-big-c.2c2p.com/portal/login
${Email}               shruitkirti.tun@2c2pexternal.com
${Password}            Shruti@123
${Browser}              Chrome
${Search by coupon code}  test

*** Keywords ***
Login
     Open Browser      ${site}   ${Browser}
     Maximize Browser Window
     sleep  2s
     Input text    //input[contains(@placeholder,'Enter your email')]  ${Email}
     Input text    //input[@placeholder='Enter your password']         ${Password}
     sleep  2s
     Click Element    //button[@class='btn login_btn form-control']
     sleep  5s
     Click Element     //span[contains(text(),'Coupons')]