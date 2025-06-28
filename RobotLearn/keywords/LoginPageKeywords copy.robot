*** Settings ***

Library    SeleniumLibrary
Resource    CommonKeywords.robot

*** Keywords ***

user Login from WebPage with ${username}
    CommonKeywords.Wait util element is ready then click element    xpath=//button[span[normalize-space(.)="Login"]]     
    CommonKeywords.Wait util element is ready then Input element    name=email         ${username} 
    CommonKeywords.Wait util element is ready then click element    xpath=//button[span[normalize-space(.)="Login"]]

user logIn from WebPage with ${username} and ${password}      
     CommonKeywords.Wait util element is ready then click element    xpath=//button[./span[text()="Login"]]
     CommonKeywords.Wait util element is ready then Input element    name=email         ${username}             
     CommonKeywords.Wait util element is ready then Input element    name=password      ${password}
     CommonKeywords.Wait util element is ready then click element    xpath=//button[./span[text()="Login"]]

WebPage should display validate login fail message as ${expected_message}
    Wait util page contains element then verify text    ${expected_message}    