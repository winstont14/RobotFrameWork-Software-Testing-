*** Settings ***

Library    SeleniumLibrary
Resource    ../keywords/LoginPageKeywords copy.robot
Resource    ../keywords/HomePageKeywords.robot
Resource    ../keywords/RegistryPageKeywords.robot
Variables    ../resources/config/config.yaml
Variables    ../resources/testdata/testdata.yaml



*** Test Cases ***

Setup Browser
    Open Browser    ${RegisUrl}    chrome
    Set Window Size    1500    900

As a user, I want to registry success 
    When user registry from WebPage with ${email} ${firstName} ${lastName} ${phoneNumber} ${newPassword} ${confirmPassword} 
    Then WebPage should display home page and display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
    [Teardown]    
    # When user login to future skill platform with    ${email} and ${valid_password}
    # Then future skill should display home page and display message as "แนะนำคอร์สเรียนที่คุ้มค่าแก่ใจ"
    # [Teardown]    user logout from future skill platform


# As a user, I fail to login with invalid credential
#     When user login from WebPage with ${email}
#     Then user logIn from WebPage with ${email} and ${Invalid_password} 
#     WebPage should display validate login fail message as "กรอกรหัสผ่านไม่ถูกต้อง"
   