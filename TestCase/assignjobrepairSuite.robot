***Settings***
Documentation     Job  Assignments
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/AssignJobRepair/assignjobrepairKeyword.robot

***Test Cases***
TC-021 : Assign Job กรณี Assign ผ่านปุ่ม Assign
    Assign Job Repair
    [Tags]         positive      
    [Teardown]     Close Browser

TC-022 : Assign Job กรณี Assign ผ่านปุ่ม Assign โดยพิมพ์ชื่อ Engineer 
    Assign Job Repair By Input Text
    [Tags]         positive      
    [Teardown]     Close Browser

TC-023 : Assign Job กรณี Assign มากกว่า 1 Job ผ่านปุ่ม Assign to
    Assign Job Repair Case More Than 1 Job
    [Tags]         positive      
    [Teardown]     Close Browser

TC-024 : Reassign กรณี Reassign ทีละ 1 Job
    Reassign Job Repair
    [Tags]         positive      
    [Teardown]     Close Browser

TC-025 : Reassign กรณี Reassign ทีละมากกว่า 1 Job
    Reassign Job Repair Case More Than 1 Job
    [Tags]         positive      
    [Teardown]     Close Browser






   