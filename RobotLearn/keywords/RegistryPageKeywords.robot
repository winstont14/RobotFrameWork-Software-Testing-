*** Settings ***

Library    SeleniumLibrary
Resource    CommonKeywords.robot

*** Keywords ***

user registry from WebPage with ${email} ${firstName} ${lastName} ${phoneNumber} ${newPassword} ${confirmPassword}
    CommonKeywords.Wait util element is ready then click element    xpath=//button[text()="สมัครสมาชิก" and contains(@class, "css-1jz8a59")]     
    CommonKeywords.Wait util element is ready then Input element    name=email         ${email} 
    CommonKeywords.Wait util element is ready then Input element    name=firstName     ${firstName}
    CommonKeywords.Wait util element is ready then Input element    name=lastName      ${lastName}
    CommonKeywords.Wait util element is ready then Input element    name=phoneNumber   ${phoneNumber} 
    CommonKeywords.Wait util element is ready then Input element    name=newPassword   ${newPassword} 
    CommonKeywords.Wait util element is ready then Input element    name=confirmPassword    ${confirmPassword}
    CommonKeywords.Wait util element is ready then click element    xpath=//input[@type="checkbox" and @name="consent"]
    CommonKeywords.Wait util element is ready then click element    xpath=//button[text()="สมัครสมาชิก"]     

WebPage should display validate registry fail message as ${expected_message}
    Wait util page contains element then verify text    ${expected_message}    