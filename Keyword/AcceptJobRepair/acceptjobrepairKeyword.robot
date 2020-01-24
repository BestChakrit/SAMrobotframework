***Settings***
Documentation   TEST SAM Open Job Repair
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/acceptjobrepairVal.robot
Resource       ../../Element/acceptjobrepairElement.robot

*** Keywords ***
Accept Job Repair
    Login Engineer
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenumyjobassignment}     timeout=15
    Click Element       ${Submenumyjobassignment}
    Sleep    2s
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${SelectStatus}       ${StatusOpen}
    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnAcceptJob} 
    Wait Until Element Is Visible      ${BtnAcceptJobConfirm}     timeout=15
    Click Element       ${BtnAcceptJobConfirm}
    Log to console    Accept Job Repair Success

Reject Job Repair
    Login Engineer
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenumyjobassignment}     timeout=15
    Click Element       ${Submenumyjobassignment}
    Sleep    2s
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${SelectStatus}       ${StatusOpen}
    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnRejectJob} 
    Wait Until Element Is Visible      ${BtnRejectJobConfirm}     timeout=15
    Click Element       ${BtnRejectJobConfirm}
    Log to console    Reject Job Repair Success
    


    
    
  




   


   






