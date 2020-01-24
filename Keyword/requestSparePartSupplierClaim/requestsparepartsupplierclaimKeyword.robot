***Settings***
Documentation   TEST SAM Request Spare Part Supplier Claim
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/requestsparepartsupplierclaimVal.robot
Resource       ../../Element/requestsparepartsupplierclaimElement.robot

*** Keywords ***

Request Part go to Supplier Claim 1 Part and 1 Piece
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
    Click Element      ${BtnEdit}
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
    Set Focus To Element       ${BtnAddSparePart} 
    Click Element        ${BtnAddSparePart} 
    Wait Until Element Is Visible       ${BtnOKServicesCharge}        timeout=15
    Click Element        ${BtnOKServicesCharge} 

    Wait Until Element Is Visible      ${CheckboxtoQuotation1}     timeout=15
    Click Element     ${CheckboxtoQuotation1}  
    Click Element      ${BtnRequestTo}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnRequestToSupplierClaim}     timeout=15
    Click Element       ${BtnRequestToSupplierClaim}
    Wait Until Element Is Visible      ${TextComment}     timeout=15
    input text       ${TextComment}         ${Comment} 
    Click Element       ${BtnRequestClaim}
    Sleep     ${Sleep}
    Log to console    Request to Supplier Claim Success   
   
Request Part go to Supplier Claim 1 Part and More Than 1 Piece
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
    Click Element      ${BtnEdit}
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

    
    Click Element        ${IncreaseSparePart}
    Set Focus To Element       ${BtnAddSparePart} 
    Click Element        ${BtnAddSparePart} 
    Wait Until Element Is Visible       ${BtnOKServicesCharge}        timeout=15
    Click Element        ${BtnOKServicesCharge} 

    Wait Until Element Is Visible      ${CheckboxtoQuotation1}     timeout=15
    Click Element     ${CheckboxtoQuotation1}  

    Click Element      ${BtnRequestTo}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnRequestToSupplierClaim}     timeout=15
    Click Element       ${BtnRequestToSupplierClaim}
    Wait Until Element Is Visible      ${TextComment}     timeout=15
    input text       ${TextComment}         ${Comment} 
    Wait Until Element Is Visible      ${BtnRequestClaim}     timeout=15
    Click Element       ${BtnRequestClaim}
    Sleep     ${Sleep}
    Log to console    Request to Supplier Claim Success   

Request Part go to Supplier Claim More Than 1 Part each 1 Piece
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
    Click Element      ${BtnEdit}
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

    Set Focus To Element       ${BtnAddSparePart} 
    Click Element        ${BtnAddSparePart} 
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnPK2Part}     timeout=15
    Click Element       ${BtnPK2Part}
    Log to console    Display Popup Add Spare Part Success   

    Wait Until Element Is Visible      ${CheckboxtoQuotation1}     timeout=15
    Click Element     ${CheckboxtoQuotation1}  
    Click Element     ${CheckboxtoQuotation1}  

    Click Element      ${BtnRequestTo}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnRequestToSupplierClaim}     timeout=15
    Click Element       ${BtnRequestToSupplierClaim}
    Wait Until Element Is Visible      ${TextComment}     timeout=15
    input text       ${TextComment}         ${Comment} 
    Wait Until Element Is Visible      ${BtnRequestClaim}     timeout=15
    Click Element       ${BtnRequestClaim}
    Sleep     ${Sleep}
    Log to console    Request to Supplier Claim Success   

Request Part go to Supplier Claim More Than 1 Part and More Than 1 Piece
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
    Click Element      ${BtnEdit}
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
#เพิ่มจำนวน Spare Part     
    Click Element        ${IncreaseSparePart}
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
#เพิ่มจำนวน Spare Part 
    Click Element        ${IncreaseSparePart}
    Set Focus To Element       ${BtnAddSparePart} 
    Click Element        ${BtnAddSparePart} 
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnPK2Part}     timeout=15
    Click Element       ${BtnPK2Part}
    Log to console    Display Popup Add Spare Part Success   
    Wait Until Element Is Visible      ${CheckboxtoQuotation1}     timeout=15
    Click Element     ${CheckboxtoQuotation1}  
    Click Element     ${CheckboxtoQuotation1}  

    Click Element      ${BtnRequestTo}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnRequestToSupplierClaim}     timeout=15
    Click Element       ${BtnRequestToSupplierClaim}
    Wait Until Element Is Visible      ${TextComment}     timeout=15
    input text       ${TextComment}         ${Comment} 
    Wait Until Element Is Visible      ${BtnRequestClaim}     timeout=15
    Click Element       ${BtnRequestClaim}
    Sleep     ${Sleep}
    Log to console    Request to Supplier Claim Success   