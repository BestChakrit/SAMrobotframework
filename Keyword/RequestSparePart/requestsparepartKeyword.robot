***Settings***
Documentation   TEST SAM Open Job Repair
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/requestsparepartVal.robot
Resource       ../../Element/requestsparepartElement.robot

*** Keywords ***
Select Spare Part Follow To Product Item
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
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Log to console      Find Status Success
    Scroll Page To Location     0      2000

    Wait Until Element Is Visible         ${BtnEdit}        timeout=15
    Set Focus To Element       ${BtnEdit}
    Click Element       ${BtnEdit} 
    Log to console      Robot can Select Button Edit

    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Set Focus To Element       ${TabSparePart} 
    Click Element               ${TabSparePart} 
    Log to console    Can enter the page Tab Spare Part
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Set Focus To Element    ${BtnSearchSparePart}
    Click Element         ${BtnSearchSparePart}
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Wait Until Element Is Visible       ${SelectSparePart}        timeout=15
    Log to console    Loading Find Spare Part
    Click Element         ${SelectSparePart}
    Log to console    Robot can Select Spare Part
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Log to console    Can enter the page Tab Spare Part
    Set Focus To Element       ${BtnAddSparePart} 
    Click Element        ${BtnAddSparePart} 
    Sleep      ${Sleep}
    Wait Until Element Is Visible       ${BtnOK}        timeout=15
    Log to console    Display Popup Add Spare Part Success
    Log to console    Select Spare Part Follow To Product Item Success
 


