***Settings***
Documentation     LOGIN
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/Login/loginKeyword.robot

***Test Cases***
# TC-001 : Login โดยระบุ User แต่ไม่ระบุ Password
#     Login input User not input password
#     [Tags]         positive      
#     [Teardown]     Close Browser

# TC-002 : Login โดยระบุ Password แต่ไม่ระบุ User
#     Login input Password not input User
#     [Tags]         positive      
#     [Teardown]     Close Browser

# TC-003 : Login โดยไม่ระบุ User และ Password
#     Login not input User and Password
#     [Tags]         positive   
#     [Teardown]     Close Browser

# TC-004 : Login โดยระบุ User และ Password
#     Login input User and Password
#     [Tags]         positive   
#     [Teardown]     Close Browser

TC-005 : Login โดยระบุ User ,Password และกำหนด Remember Me
    Login input User Password and Remember Me
    [Tags]         positive   
    [Teardown]    

# TC-006 : Login โดยระบุ User เป็นภาษาไทย และ Password เป็นภาษาไทย
#     Login input User and Password is Thai
#     [Tags]         positive   
#     [Teardown]     Close Browser
    
# TC-007 : Login โดยระบุ User เป็นภาษาไทย แต่ Password เป็นภาษาอังกฤษ
#     Login input User is Thai but input Password เis English
#     [Tags]         Negative   
#     [Teardown]     Close Browser

# TC-008 : Login โดยระบุ User เป็นภาษาอังกฤษ แต่ Password เป็นภาษาไทย
#     Login input User is English but Password is Thai
#     [Tags]         Negative   
#     [Teardown]     Close Browser

# TC-009 : Login โดยระบุ User เป็นตัวอักขระไทย แต่ Password เป็นภาษาอังกฤษ
#     Login input User is Thai character but Password is English
#     [Tags]         Negative   
#     [Teardown]     Close Browser

# TC-010 : Login โดยระบุ User เป็นภาษาอังกฤษ แต่ Password เป็นตัวอักขระไทย
#     Login input User is English but Password is Thai character
#     [Tags]         Negative   
#     [Teardown]     Close Browser

