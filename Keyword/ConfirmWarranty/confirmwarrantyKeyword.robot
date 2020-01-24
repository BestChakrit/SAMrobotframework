***Settings***
Documentation   TEST SAM Open Job Repair
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/confirmwarrantyVal.robot
Resource       ../../Element/confirmwarrantyElement.robot

*** Keywords ***
Warranty case do not input warranty
    Login Engineer
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Sleep    ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${SelectStatus}       ${StatusOpen}
    Click Element       ${BtnSearch}
    Sleep      ${Sleep}
    Set Focus To Element       ${BtnEdit}
    Click Element       ${BtnEdit} 

    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Set Focus To Element       ${BtnSave}
    Sleep      ${Sleep}
    Double Click Element       ${BtnSave} 
    Wait Until Element Is Visible         ${BtnConfirmSave}      timeout=15
    Log to console    Display Popup Edit Success
    Log to console    Warranty case do not input warranty Success

         
 
Warranty case input warranty
    Login Engineer
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${SelectStatus}       ${StatusOpen}
    Click Element       ${BtnSearch}
    Sleep      ${Sleep}
    Set Focus To Element       ${BtnEdit}
    Click Element       ${BtnEdit} 
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Set Focus To Element       ${TabWarranty}
    Click Element       ${TabWarranty}
    Log to console    Can enter Tab Warranty
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep      ${Sleep}
    Set Focus To Element       ${StatusWarranty} 
    Select From List By Value       ${StatusWarranty}       ${V_StatusWarranty} 
    Select From List By Value       ${SourceWarranty}       ${V_SourceWarranty}
    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Wait Until Element Is Visible         ${BtnConfirmSave}      timeout=15
    Log to console    Display Popup Edit Success
    Log to console    Warranty case input warranty Success

