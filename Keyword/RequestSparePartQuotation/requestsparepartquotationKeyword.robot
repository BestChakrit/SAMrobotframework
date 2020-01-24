***Settings***
Documentation   TEST SAM Open Job Repair
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/requestsparepartquotationVal.robot
Resource       ../../Element/requestsparepartquotationElement.robot

*** Keywords ***
Request Part go to Quotation By Add Services Charge
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Set Focus To Element        ${AdvanceSearch}
    Click Element      ${AdvanceSearch} 
    Wait Until Element Is Visible      ${RepairAction}       timeout=15
    Set Focus To Element        ${RepairAction}
    Click Element      ${RepairAction} 
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${RepairActionOpenJob}       timeout=15
    Click Element       ${RepairActionOpenJob} 
    Wait Until Element Is Not Visible    ${RepairActionOpenJob}       timeout=15


    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element      ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep    ${Sleep} 
    Set Focus To Element        ${TabServicesCharge}
    Click Element        ${TabServicesCharge}
    Log to console    Enter to Tab Services Charge

    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnAddServicesCharge}         
    Sleep    ${Sleep} 
    
    Select From List By Value       ${SelectServiceType}        ${TypeServicesCharge}
    Input Text        ${TextServicesChargeDetail}             ${DetailServicesCharge}

    Double Click Element        ${TextPricePer}        
    Double Click Element        ${TextPricePer}   
    Click Element       ${BtnSaveAddServicesCharge}      
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible      ${BtnOKServicesCharge}     timeout=15
    Click Element       ${BtnOKServicesCharge}

    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible      ${TabSparePart}     timeout=15
    Set Focus To Element       ${TabSparePart} 
    Click Element               ${TabSparePart} 
    Log to console    Can enter the page Tab Spare Part
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep      ${Sleep}
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
    Click Element       ${BtnAddSparePartOK} 
    Wait Until Element Is Not Visible        ${BtnAddSparePartOK}      timeout=15 

    Click Element     ${CheckboxtoQuotation1}  
    Click Element      ${BtnRequestTo}
    Wait Until Element Is Visible     ${BtnRequestToQuotation}     timeout=15
    Click Element       ${BtnRequestToQuotation}
    Sleep      ${Sleep}
    Click Element       ${BtnConfirmCaseServiceCharge}
    Sleep      ${Sleep}
    Log to console    Request to Quotation Success   



Request Part go to Quotation By Don't Add Services Charge
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Set Focus To Element        ${AdvanceSearch}
    Click Element      ${AdvanceSearch} 
    Wait Until Element Is Visible      ${RepairAction}       timeout=15
    Set Focus To Element        ${RepairAction}
    Click Element      ${RepairAction} 
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${RepairActionOpenJob}       timeout=15
    Click Element       ${RepairActionOpenJob} 
    Wait Until Element Is Not Visible    ${RepairActionOpenJob}       timeout=15

    Click Element          ${BtnSearchJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    ${Sleep} 
    Scroll Page To Location    200    800
    Set Focus To Element        xpath=(//*[@ng-click="JobRepair_Edit(dataItem)"])[1]
    Click Element      xpath=(//*[@ng-click="JobRepair_Edit(dataItem)"])[1]
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    ${Sleep} 
    
    Wait Until Element Is Visible      ${TabSparePart}     timeout=15
    Set Focus To Element       ${TabSparePart} 
    Click Element               ${TabSparePart} 
    Log to console    Can enter the page Tab Spare Part
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep      ${Sleep}
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
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep      ${Sleep}
    
    Wait Until Element Is Visible       ${BtnAddSparePartOKNotServiceCharge}        timeout=15
    Click Element       ${BtnAddSparePartOKNotServiceCharge} 
    Wait Until Element Is Not Visible        ${BtnAddSparePartOKNotServiceCharge}      timeout=15 

    Sleep      ${Sleep}
    Click Element     ${CheckboxtoQuotation1}  
    Click Element      ${BtnRequestTo}
    Wait Until Element Is Visible     ${BtnRequestToQuotation}     timeout=15
    Click Element       ${BtnRequestToQuotation}
    Sleep      ${Sleep}
    Click Element       ${BtnConfirmRequestToQuotation}
    Sleep      ${Sleep}
    Log to console    Request to Quotation Success   
  

Request Part go to Quotation More Than 1 Piece
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Set Focus To Element        ${AdvanceSearch}
    Click Element      ${AdvanceSearch} 
    Wait Until Element Is Visible      ${RepairAction}       timeout=15
    Set Focus To Element        ${RepairAction}
    Click Element      ${RepairAction} 
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${RepairActionOpenJob}       timeout=15
    Click Element       ${RepairActionOpenJob} 
    Wait Until Element Is Not Visible    ${RepairActionOpenJob}       timeout=15
    
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
    Sleep      ${Sleep}
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
#เพิ่มจำนวน SparePart 
    Sleep      ${Sleep}
    Set Focus To Element       ${IncreaseSparePart} 
    Click Element       ${IncreaseSparePart} 
    Set Focus To Element       ${BtnAddSparePart} 
    Click Element        ${BtnAddSparePart} 

    Sleep      ${Sleep}
    
    Wait Until Element Is Visible       ${BtnAddSparePartOKNotServiceCharge}        timeout=15
    Click Element       ${BtnAddSparePartOKNotServiceCharge} 
    Wait Until Element Is Not Visible        ${BtnAddSparePartOKNotServiceCharge}      timeout=15 
    Log to console    Display Popup Add Spare Part Success   

    Wait Until Element Is Visible      ${CheckboxtoQuotation1}     timeout=15
    Click Element     ${CheckboxtoQuotation1}  
    Click Element      ${BtnRequestTo}
    Wait Until Element Is Visible     ${BtnRequestToQuotation}     timeout=15
    Click Element       ${BtnRequestToQuotation}
    Wait Until Element Is Visible     ${BtnConfirmRequestToQuotation}     timeout=15
    Click Element       ${BtnConfirmRequestToQuotation}
    Sleep      ${Sleep}
    Log to console    Request to Quotation Success   
   

Request Part go to Quotation More Than 1 Part each 1 Piece
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

     Set Focus To Element        ${AdvanceSearch}
    Click Element      ${AdvanceSearch} 
    Wait Until Element Is Visible      ${RepairAction}       timeout=15
    Set Focus To Element        ${RepairAction}
    Click Element      ${RepairAction} 
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${RepairActionOpenJob}       timeout=15
    Click Element       ${RepairActionOpenJob} 
    Wait Until Element Is Not Visible    ${RepairActionOpenJob}       timeout=15

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
    Sleep      ${Sleep}
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
#เลือก Spare Part รอบ2
    Wait Until Element Is Visible      ${BtnSearchSparePart}     timeout=15
    Sleep      ${Sleep}
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
#### 
    Click Element       ${BtnAddSpare2PartOKNotServiceCharge} 
    Wait Until Element Is Not Visible        ${BtnAddSpare2PartOKNotServiceCharge}      timeout=15

    Log to console    Display Popup Add Spare Part Success   

    Wait Until Element Is Visible      ${CheckboxtoQuotation1}     timeout=15
    Click Element     ${CheckboxtoQuotation1}  
    Click Element     ${CheckboxtoQuotation2}  
    Click Element      ${BtnRequestTo}
    Wait Until Element Is Visible     ${BtnRequestToQuotation}     timeout=15
    Click Element       ${BtnRequestToQuotation}

    Sleep      ${Sleep}
    Click Element       ${BtnConfirmRequestToQuotation2Part}
    Sleep      ${Sleep}
    Log to console    Request Part go to Quotation More Than 1 Part each 1 Piece Success   
    

Request Part go to Quotation More Than 1 Part More Than each 1 Piece
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    ${Sleep} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

     Set Focus To Element        ${AdvanceSearch}
    Click Element      ${AdvanceSearch} 
    Wait Until Element Is Visible      ${RepairAction}       timeout=15
    Set Focus To Element        ${RepairAction}
    Click Element      ${RepairAction} 
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${RepairActionOpenJob}       timeout=15
    Click Element       ${RepairActionOpenJob} 
    Wait Until Element Is Not Visible    ${RepairActionOpenJob}       timeout=15

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
    Sleep      ${Sleep}
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
#เพิ่มจำนวน SparePart 
    Sleep      ${Sleep}
    Set Focus To Element       ${IncreaseSparePart} 
    Click Element       ${IncreaseSparePart} 

    Set Focus To Element       ${BtnAddSparePart} 
    Click Element        ${BtnAddSparePart} 
    Sleep      ${Sleep}
    Wait Until Element Is Visible       ${BtnOKServicesCharge}        timeout=15
    Click Element        ${BtnOKServicesCharge}
#เลือก Spare Part รอบ2
    Wait Until Element Is Visible      ${BtnSearchSparePart}     timeout=15
    Sleep      ${Sleep}
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
### เพิ่มจำนวน Spare Part    
    Sleep      ${Sleep}
    Set Focus To Element       ${IncreaseSparePart} 
    Click Element       ${IncreaseSparePart} 

    Set Focus To Element       ${BtnAddSparePart} 
    Click Element        ${BtnAddSparePart} 
    Sleep      ${Sleep}
#### 
    Click Element       ${BtnAddSpare2PartOKNotServiceCharge} 
    Wait Until Element Is Not Visible        ${BtnAddSpare2PartOKNotServiceCharge}      timeout=15

    Log to console    Display Popup Add Spare Part Success   

    Wait Until Element Is Visible      ${CheckboxtoQuotation1}     timeout=15
    Click Element     ${CheckboxtoQuotation1}  
    Click Element     ${CheckboxtoQuotation2}  
    Click Element      ${BtnRequestTo}
    Wait Until Element Is Visible     ${BtnRequestToQuotation}     timeout=15
    Click Element       ${BtnRequestToQuotation}

    Sleep      ${Sleep}
    Click Element       ${BtnConfirmRequestToQuotation2Part}
    Sleep      ${Sleep}
    Log to console    Request Part go to Quotation More Than 1 Part More Than each 1 Piece Success  






