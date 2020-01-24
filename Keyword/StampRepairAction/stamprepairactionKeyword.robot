***Settings***
Documentation   TEST SAM Open Job Repair
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/stamprepairactionVal.robot
Resource       ../../Element/stamprepairactionElement.robot

*** Keywords ***
Stamp Repair Start By Engineer Owner Work
    Login Engineer
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${SelectStatus}       ${Status}
    Click Element       ${BtnSearch}
    Sleep      ${Sleep}
    Set Focus To Element       ${BtnEdit}
    Click Element       ${BtnEdit} 

    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Set Focus To Element       ${TabRepairAction}
    Click Element               ${TabRepairAction}
    Log to console    Can enter the page Tab Repair Action 
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element         ${BtnAddAction}
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${Proceed}          ${V_Proceed}
    Click Element       ${BtnAddRepairAction} 
    Wait Until Element Is Visible        ${BtnOK}           timeout=15
    Log to console    Display Popup Add Repair Success
    Log to console    Stamp Repair Start By Technician Owner Work Success
 
Stamp Repair Start By Order People
    Login Engineer Case Engineer Other People
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${SelectStatus}       ${Status}
    Click Element       ${BtnSearch}
    Sleep      ${Sleep}
    Set Focus To Element       ${BtnEdit}
    Click Element       ${BtnEdit} 

    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Set Focus To Element       ${TabRepairAction}
    Click Element               ${TabRepairAction}
    Log to console    Can enter the page Tab Repair Action 
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element         ${BtnAddAction}
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${Proceed}          ${V_Proceed}
    Click Element       ${BtnAddRepairAction} 
    Select From List By Value       ${Proceed}          ${V_Proceed}
    Select From List By Index       ${Operator}         ${V_Operator}
    Wait Until Element Is Visible        ${BtnOK}           timeout=15
    Log to console    Display Popup Add Repair Success
    Log to console    Stamp Repair Start By Order People Success

