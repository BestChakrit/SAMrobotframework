***Settings***
Documentation   TEST SAM Open Job Repair
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/assignjobrepairVal.robot
Resource       ../../Element/assignjobrepairElement.robot

*** Keywords ***
Assign Job Repair
    Login Tech Scheduler
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobassignment}     timeout=15
    Click Element       ${Submenujobassignment}
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Select From List By Value       ${SelectStatus}       ${StatusOpen}
    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnAssign}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    ${Sleep} 

    Set Focus To Element       ${SelectSection}
    Select From List By Value         ${SelectSection}          ${SectionVal}
    Click Element     ${SelectChoice}
    Sleep    ${Sleep} 
    Wait Until Element Is Visible       ${SelectEngineer}       ${StatusOpen}
    Click Element     ${SelectEngineer}
    Set Focus To Element        ${BtnSave} 
    Click Element       ${BtnSave} 
    Sleep      ${Sleep}
    Log to console    Assign Job Repair Success


Assign Job Repair By Input Text
    Login Tech Scheduler
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobassignment}     timeout=15
    Click Element       ${Submenujobassignment}
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Select From List By Value       ${SelectStatus}       ${StatusOpen}
    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnAssign}

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    ${Sleep} 

    Set Focus To Element       ${SelectSection}
    Select From List By Value         ${SelectSection}          ${SectionVal}

    Sleep    ${Sleep} 
    Input Text        ${Engineer1}          ${EngineerVal}
    Set Focus To Element        ${BtnSave} 
    Click Element       ${BtnSave} 
    Sleep      ${Sleep}
    Log to console    Assign Job Repair By Input Text Success


Assign Job Repair Case More Than 1 Job
    Login Tech Scheduler
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobassignment}     timeout=15
    Click Element       ${Submenujobassignment}
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${SelectStatus}       ${StatusOpen}
    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    ${Sleep} 
    Set Focus To Element     ${CheckboxRecord1}
    Click Element         ${CheckboxRecord1}
    Click Element         ${CheckboxRecord2}
    Click Element       ${BtnAssignTo}

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible      ${SelectBranch}     timeout=15
    Sleep     ${Sleep}
    Select From List By Value       ${SelectBranch}         ${BranchVal}
    Select From List By Value       ${SelectSection}         ${SectionVal}
    Sleep    ${Sleep} 
    Input Text        ${Engineer1}          ${EngineerVal}
    Set Focus To Element        ${BtnSave} 
    Click Element       ${BtnSave} 
    Sleep      ${Sleep}
    Log to console    Assign Job Repair By Input Text Success


Reassign Job Repair
    Login Tech Scheduler
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobassignment}     timeout=15
    Click Element       ${Submenujobassignment}
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${SelectStatus}       ${StatusInprogress}
    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Click Element       ${BtnReassign}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    ${Sleep} 
    Set Focus To Element       ${SelectSection}
    Select From List By Value         ${SelectSection}          ${SectionVal}
    Sleep    ${Sleep} 
    Set Focus To Element        ${BtnSave} 
    Click Element       ${BtnSave} 
    Sleep      ${Sleep}
    Log to console    Reassign Job Repair Success
    

    
Reassign Job Repair Case More Than 1 Job
    Login Tech Scheduler
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobassignment}     timeout=15
    Click Element       ${Submenujobassignment}
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${SelectStatus}       ${StatusInprogress}
    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    ${Sleep} 
    Set Focus To Element     ${CheckboxRecord1}
    Click Element         ${CheckboxRecord1}
    Click Element         ${CheckboxRecord2}
    Click Element       ${BtnAssignTo}

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible      ${SelectBranch}     timeout=15
    Sleep     ${Sleep}
    Select From List By Value       ${SelectBranch}         ${BranchVal}
    Select From List By Value       ${SelectSection}         ${SectionVal}
    Sleep    ${Sleep} 
    Input Text        ${Engineer1}          ${EngineerVal}
    Set Focus To Element        ${BtnSave} 
    Click Element       ${BtnSave} 
    Sleep      ${Sleep}
    Log to console    Assign Job Repair By Input Text Success




   


   






