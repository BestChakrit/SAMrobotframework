***Settings***
Documentation     Job  Assignments
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/ConfirmWarranty/confirmwarrantyKeyword.robot

***Test Cases***
TC-028 : Warranty กรณีไม่ระบุสถานะรับประกัน
    Warranty case do not input warranty
    [Documentation]     Warranty กรณีไม่ระบุสถานะรับประกัน
    [Tags]         positive     
    [Teardown]     Close Browser

TC-029 : Warranty กรณีระบุสถานะรับประกัน
    Warranty case input warranty
    [Documentation]     Warranty กรณีระบุสถานะรับประกัน
    [Tags]         positive      
    [Teardown]     Close Browser





   