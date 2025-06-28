*** Settings ***

Library    SeleniumLibrary
Resource    CommonKeywords.robot

*** Keywords ***

WebPage should display home page and display message as "${expected_message}"
   CommonKeywords.Wait util page contains element then verify text    ${expected_message}

user logout from WebPage
    # คลิกเปิด dropdown ที่ชื่อผู้ใช้
    Run Keyword And Ignore Error    CommonKeywords.Wait util element is ready then click element    xpath=//span[contains(text(),"ปริณดา") or contains(text(),"ชื่อผู้ใช้")]/ancestor::div[contains(@class,"dropdown") or contains(@class,"ant-dropdown-trigger")]//svg

    # หรือคลิกเมนู hamburger หาก responsive layout
    Run Keyword And Ignore Error    CommonKeywords.Wait util element is ready then click element    xpath=//button[@aria-label="เมนู"] | //button[@aria-label="Menu"]

    # คลิก "ออกจากระบบ"
    Run Keyword And Ignore Error    CommonKeywords.Wait util element is ready then click element    xpath=//div[normalize-space(text())="ออกจากระบบ"]