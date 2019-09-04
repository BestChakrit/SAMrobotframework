***Settings***
Documentation     LOGIN
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/Login/loginKeyword.robot
Resource       ../Keyword/OpenJobRepair/openjobrepairKeyword.robot

***Test Cases***
TC-011 : Open Job กรณีเลือก Service Type เป็น Carry In 
    Open Job Case Service Type is Carry In 
    [Tags]         positive      
    [Teardown]     Close Browser

TC-012 : Open Job กรณีเลือก Service Type เป็น Mail In 
    Open Job Case Service Type is Mail In  
    [Tags]         positive      
    [Teardown]     Close Browser

TC-013 : Open Job กรณีเลือก Service Type เป็น Pick up 
    Open Job Case Service Type is Pick up 
    [Tags]         positive      
    [Teardown]     Close Browser

TC-014 : Open Job กรณีระบุ Serial แล้วทำการค้นหา
    Open Job Case input Serial  
    [Tags]         positive      
    [Teardown]     Close Browser

TC-015 : Open Job กรณีไม่ระบุ Serial แต่ไปค้นจากผลิตภัณฑ์และยี่ห้อผลิตภัณฑ์ 
    Open Job Case not input Serial but search product  
    [Tags]         positive      
    [Teardown]     Close Browser

TC-016 : เปิด Job Repair โดยที่ไม่ได้ใส่ข้อมูลที่จำเป็น
    Open Job not input require
    [Tags]         positive      
    [Teardown]     Close Browser

TC-017 : Open Job แล้วทำการ Assignงาน โดย Service Couter ทันที
    Open Job and Assign by Service Couter
    [Tags]         positive      
    [Teardown]     Close Browser

TC-018 : ทำการ Open Job มากกว่า 1 Job
    Open job more 1 job
    [Tags]         positive      
    [Teardown]     Close Browser

TC-019 : ทำการปริ้นใบบริการ
    Print Job Repair
    [Tags]         positive      
    [Teardown]       Close Browser




   