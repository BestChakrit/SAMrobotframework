***Settings***
Documentation     Resolution
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/OpenJobRepair/openjobrepairKeyword.robot
Resource       ../Keyword/AssignJobRepair/assignjobrepairKeyword.robot
Resource       ../Keyword/Resolution/resolutionKeyword.robot


***Test Cases***
TC-116 : บันทึกการแก้ไขปัญหาโดยระบุรายละเอียดการใช้อะไหล่
    Open Job Case Service Type is Carry In
    Close Browser
    Assign Job Repair
    Close Browser
    Resolution specify Details of spare parts
    [Tags]         positive      
    [Teardown]     Close Browser

TC-117 : บันทึกการแก้ไขปัญหาโดยไม่ระบุรายละเอียดการใช้อะไหล่
    Open Job Case Service Type is Carry In
    Close Browser
    Assign Job Repair
    Close Browser
    Resolution not specify Details of spare parts
    [Tags]         positive      
    [Teardown]     Close Browser





   