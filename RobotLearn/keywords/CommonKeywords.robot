*** Settings ***

Library    SeleniumLibrary

*** Keywords ***

Wait util element is ready then click element
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds     5x    2s   Click Element    ${locator}

 
Wait util element is ready then Input element
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds    5x    2s    Input Text    ${locator}    ${text}


Wait util page contains element then verify text
    [Arguments]    ${expected_text}
    Wait Until Keyword Succeeds    5x    2s  Page Should Contain    ${expected_text}