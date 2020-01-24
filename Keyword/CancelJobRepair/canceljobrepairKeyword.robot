***Settings***
Documentation   TEST SAM Open Job Repair
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/canceljobrepairVal.robot
Resource       ../../Element/canceljobrepairElement.robot

*** Keywords ***
Cancel Job Repair
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    2s
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Select From List By Value       ${SelectStatus}       ${StatusOpen}
    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnEdit}

    Sleep    2s
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    2s
    Set Focus To Element       ${BtnCancel}
    Click Element        ${BtnCancel}
    Wait Until Element Is Visible      ${BtnCancelConfirm}     timeout=15
    Click Element        ${BtnCancelConfirm}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Log to console     Cancel Job Repair Success


   






