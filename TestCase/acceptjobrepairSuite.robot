***Settings***
Documentation     Job  Assignments
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/AcceptJobRepair/acceptjobrepairKeyword.robot

***Test Cases***
TC-026 : Accept กรณีช่างตอบรับงาน
    Accept Job Repair
    [Tags]         positive      
    [Teardown]     Close Browser

TC-027 : Reject กรณีช่างปฎิเสธไม่รับงาน
    Reject Job Repair
    [Tags]         positive      
    [Teardown]     Close Browser





   