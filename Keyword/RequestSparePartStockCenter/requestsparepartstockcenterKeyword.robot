***Settings***
Documentation   TEST SAM Request Spare Part Stock Center
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/requestsparepartstockcenterVal.robot
Resource       ../../Element/requestsparepartstockcenterElement.robot

*** Keywords ***

Request Part go to Stock Center 1 Part and 1 Piece
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Select From List By Value       ${SelectStatus}       ${StatusOpen}
    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Wait Until Page Contains Element      ${BtnEditStockCenter}      timeout=15
    Sleep    ${Sleep} 
    Click Element      ${BtnEditStockCenter}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    ${Sleep} 
    
 
    Sleep    ${Sleep} 
    Set Focus To Element       ${TabSparePart} 
    Click Element               ${TabSparePart} 
    Log to console    Can enter the page Tab Spare Part
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible      ${BtnSearchSparePart}     timeout=15
    Set Focus To Element    ${BtnSearchSparePart}
    Click Element         ${BtnSearchSparePart}
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep      ${Sleep}
    Wait Until Element Is Visible       ${SelectSparePart}        timeout=15
    Log to console    Loading Find Spare Part

    Double Click Element         ${SelectSparePart}
    Log to console    Robot can Select Spare Part
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Log to console    Can enter the page Tab Spare Part

    Wait Until Element Is Visible       ${BtnAddSparePart}        timeout=15
    Set Focus To Element       ${BtnAddSparePart} 
    Click Element        ${BtnAddSparePart} 

    Sleep      ${Sleep}
    Wait Until Element Is Visible       ${BtnOKServicesCharge}        timeout=15
    Click Element        ${BtnOKServicesCharge} 

    Sleep      ${Sleep}
    Wait Until Element Is Visible      ${CheckboxtoQuotation1}     timeout=15
    Click Element     ${CheckboxtoQuotation1}  
    Click Element      ${BtnRequestTo}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnRequestToStockCenter}     timeout=15
    Click Element       ${BtnRequestToStockCenter}
    Sleep      ${Sleep}
    Click Button        ${BtnTextOK}
    Sleep      ${Sleep}
    Log to console    Request to Stock Center Success   

Request Part go to Stock Center 1 Part and More Than 1 Piece
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Select From List By Value       ${SelectStatus}       ${StatusOpen}
    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Wait Until Page Contains Element      ${BtnEditStockCenter}      timeout=15
    Sleep    ${Sleep} 
    Click Element      ${BtnEditStockCenter}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    ${Sleep} 
    Sleep    ${Sleep} 
    
    Wait Until Element Is Visible      ${TabSparePart}     timeout=15
    Set Focus To Element       ${TabSparePart} 
    Click Element               ${TabSparePart} 
    Log to console    Can enter the page Tab Spare Part
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible      ${BtnSearchSparePart}     timeout=15
    Set Focus To Element    ${BtnSearchSparePart}
    Click Element         ${BtnSearchSparePart}
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep      ${Sleep}
    Wait Until Element Is Visible       ${SelectSparePart}        timeout=15
    Log to console    Loading Find Spare Part

    Double Click Element         ${SelectSparePart}
    Log to console    Robot can Select Spare Part
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Log to console    Can enter the page Tab Spare Part
    Wait Until Element Is Visible       ${BtnAddSparePart}        timeout=15

    Scroll Page To Location     0     1000

    Click Element         ${IncreaseSparePart}
    Set Focus To Element       ${BtnAddSparePart} 
    Click Element        ${BtnAddSparePart} 
    Wait Until Element Is Visible       ${BtnOKServicesCharge}        timeout=15
    Click Element        ${BtnOKServicesCharge} 

    Wait Until Element Is Visible      ${CheckboxtoQuotation1}     timeout=15
    Click Element     ${CheckboxtoQuotation1}  

    Click Element      ${BtnRequestTo}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnRequestToStockCenter}     timeout=15
    Click Element       ${BtnRequestToStockCenter}
    Sleep      ${Sleep}
    Click Button        ${BtnTextOK}
    Sleep      ${Sleep}
    Log to console    Request to Stock Center Success   

Request Part go to Stock Center More Than 1 Part each 1 Piece
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Select From List By Value       ${SelectStatus}       ${StatusOpen}
    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Wait Until Page Contains Element      ${BtnEditStockCenter}      timeout=15
    Sleep    ${Sleep} 
    Click Element      ${BtnEditStockCenter}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    ${Sleep} 

    Wait Until Element Is Visible      ${TabSparePart}     timeout=15
    Set Focus To Element       ${TabSparePart} 
    Click Element               ${TabSparePart} 
    Log to console    Can enter the page Tab Spare Part
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
##เลือก Part 1 
    Wait Until Element Is Visible      ${BtnSearchSparePart}     timeout=15
    Set Focus To Element    ${BtnSearchSparePart}
    Click Element         ${BtnSearchSparePart}
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep      ${Sleep}
    Wait Until Element Is Visible       ${SelectSparePart}        timeout=15
    Log to console    Loading Find Spare Part
    Double Click Element         ${SelectSparePart}
    Log to console    Robot can Select Spare Part
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Log to console    Can enter the page Tab Spare Part
    Sleep      ${Sleep}
    Wait Until Element Is Visible       ${BtnAddSparePart}        timeout=15
    Scroll Page To Location     0     1000
    Set Focus To Element       ${BtnAddSparePart} 
    Click Element        ${BtnAddSparePart} 
    Wait Until Element Is Visible       ${BtnOKServicesCharge}        timeout=15
    Click Element        ${BtnOKServicesCharge} 
##เลือก Part 2 
    Sleep      ${Sleep}
    Wait Until Element Is Visible      ${BtnSearchSparePart}     timeout=15
    Set Focus To Element    ${BtnSearchSparePart}
    Click Element         ${BtnSearchSparePart}
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep      ${Sleep}
    Wait Until Element Is Visible       ${SelectSparePart2}        timeout=15
    Log to console    Loading Find Spare Part
    Double Click Element         ${SelectSparePart2}
    Log to console    Robot can Select Spare Part
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Log to console    Can enter the page Tab Spare Part
    Wait Until Element Is Visible       ${BtnAddSparePart}        timeout=15
    Scroll Page To Location     0     1000
    Set Focus To Element       ${BtnAddSparePart} 
    Click Element        ${BtnAddSparePart} 
    
    Reload Page
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${SelectStatus}       ${StatusOpen}
    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element      ${BtnEditStockCenter}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    ${Sleep} 
    Wait Until Element Is Visible      ${TabSparePart}     timeout=15
    Set Focus To Element       ${TabSparePart} 
    Click Element               ${TabSparePart} 
    Log to console    Can enter the page Tab Spare Part
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15 
 
    Wait Until Element Is Visible      ${CheckboxtoQuotation1}     timeout=15
    Set Focus To Element       ${CheckboxtoQuotation1}  
    Click Element     ${CheckboxtoQuotation1}  
    Click Element     ${CheckboxtoQuotation1} 


    Click Element      ${BtnRequestTo}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnRequestToStockCenter}     timeout=15
    Click Element       ${BtnRequestToStockCenter}
    Sleep      ${Sleep}

    # : FOR    ${a}    IN RANGE   0    9
    # \   Exit For Loop If    ${a} == 9
    # \   Wait Until Page Contains Element     xpath=(//button[.//text() = 'OK'])[${a}]      timeout=15
    # \   Click Button       xpath=(//button[.//text() = 'OK'])[${a}]

    Wait Until Page Contains Element     ${BtnTextOK2Part}      timeout=15
    Click Button       ${BtnTextOK2Part}
    Sleep      ${Sleep}
    Log to console    Request 2 Part to Stock Center Success



######################
Request Part go to Stock Center More Than 1 Part and More Than 1 Piece
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Select From List By Value       ${SelectStatus}       ${StatusOpen}
    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Wait Until Page Contains Element      ${BtnEditStockCenter}      timeout=15
    Sleep    ${Sleep} 
    Click Element      ${BtnEditStockCenter}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    ${Sleep} 
    
    Wait Until Element Is Visible      ${TabSparePart}     timeout=15
    Set Focus To Element       ${TabSparePart} 
    Click Element               ${TabSparePart} 
    Log to console    Can enter the page Tab Spare Part
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible      ${BtnSearchSparePart}     timeout=15
    Set Focus To Element    ${BtnSearchSparePart}
    Click Element         ${BtnSearchSparePart}
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep      ${Sleep}
    Wait Until Element Is Visible       ${SelectSparePart}        timeout=15
    Log to console    Loading Find Spare Part

    Double Click Element         ${SelectSparePart}
    Log to console    Robot can Select Spare Part
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Log to console    Can enter the page Tab Spare Part
    Wait Until Element Is Visible       ${BtnAddSparePart}        timeout=15
    Click Element         ${IncreaseSparePart}
    Set Focus To Element       ${BtnAddSparePart} 
    Click Element        ${BtnAddSparePart} 
    Wait Until Element Is Visible       ${BtnOKServicesCharge}        timeout=15
    Click Element        ${BtnOKServicesCharge} 

    ##### หา Spare Part รอบสอง
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible      ${BtnSearchSparePart}     timeout=15
    Set Focus To Element    ${BtnSearchSparePart}
    Click Element         ${BtnSearchSparePart}
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep      ${Sleep}
    Wait Until Element Is Visible       ${SelectSparePart}        timeout=15
    Log to console    Loading Find Spare Part
    Double Click Element         ${SelectSparePart}
    Log to console    Robot can Select Spare Part
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Log to console    Can enter the page Tab Spare Part
    Wait Until Element Is Visible       ${BtnAddSparePart}        timeout=15
    Click Element         ${IncreaseSparePart}
    Set Focus To Element       ${BtnAddSparePart} 
    Click Element        ${BtnAddSparePart} 

    Reload Page
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${SelectStatus}       ${StatusOpen}
    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element      ${BtnEditStockCenter}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    ${Sleep} 
    Wait Until Element Is Visible      ${TabSparePart}     timeout=15
    Set Focus To Element       ${TabSparePart} 
    Click Element               ${TabSparePart} 
    Log to console    Can enter the page Tab Spare Part
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15 
    Log to console    Display Popup Add Spare Part Success   


    Wait Until Element Is Visible      ${CheckboxtoQuotation1}     timeout=15
    Click Element     ${CheckboxtoQuotation1}  
    Click Element     ${CheckboxtoQuotation1}  

    Click Element      ${BtnRequestTo}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnRequestToStockCenter}     timeout=15
    Click Element       ${BtnRequestToStockCenter}
    Sleep      ${Sleep}
    Wait Until Page Contains Element     ${BtnTextOK2Part}      timeout=15
    Click Button        ${BtnTextOK2Part}
    Sleep      ${Sleep}
    Log to console    Request to Stock Center Success