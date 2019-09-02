***Settings***
Documentation   TEST SAM Open Job Repair
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/openjobrepairVal.robot
Resource       ../../Element/openjobrepairElement.robot

*** Keywords ***
Open Job Case Service Type is Carry In 
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    2s
    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Click Element       ${BtnNewjob} 
    Sleep    5s
    Wait Until Element Is Visible      ${SelectServiceOrderType}     timeout=15
    Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_CarryIn}
    Select From List By Value       ${SelectServiceType}         ${V_ServiceType}      