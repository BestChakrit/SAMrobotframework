***Settings***
Documentation   Resolution 
Library        Selenium2Library 
Library        BuiltIn
Library        String
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/inventoryVal.robot
Resource       ../../Element/inventoryElement.robot

*** Keywords ***
Borrow Part A and Arrange Products Part B   
    Login input User and Password
    Wait Until Element Is Visible      ${MenuPartManagement}     timeout=15
    Click Element       ${MenuPartManagement}
    Wait Until Element Is Visible      ${Submenupartmanagement}     timeout=15
    Click Element       ${Submenupartmanagement}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    ${now}    Evaluate    '{dt.day}{dt.month}{dt.year}'.format(dt=datetime.datetime.now())    modules=datetime
    Input Text      ${DateTime}       ${now}
    Sleep     ${Sleep}

    Wait Until Element Is Visible        ${BtnSearch}      timeout=15
    Wait Until Page Contains Element      ${BtnSearch}      timeout=15
    Click Element       ${BtnSearch} 

    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Scroll Page To Location    200    400
    Wait Until Element Is Visible      ${BtnAccept}     timeout=15
    Wait Until Page Contains Element      ${BtnAccept}      timeout=15
    Click Element       ${BtnAccept}

    Wait Until Element Is Visible      ${BtnAcceptConfirm}     timeout=15
    Wait Until Page Contains Element      ${BtnAcceptConfirm}      timeout=15
    Sleep     ${Sleep}
    Click Element       ${BtnAcceptConfirm}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnAcceptOK}     timeout=15
    Click Element       ${BtnAcceptOK}
    Log to console  Accept Borrow Stock Center Success

############################

    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnSenttoInventory}     timeout=15
    Wait Until Page Contains Element      ${BtnSenttoInventory}      timeout=15

    ${RobotBUF} =   Get Text	    ${ResultBUF}
    Sleep     ${Sleep}
    Set Focus To Element       ${CheckboxSparepart}
    Click Element       ${CheckboxSparepart}

    Click Element        ${BtnSenttoInventory} 
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK3}     timeout=15
    Wait Until Page Contains Element      ${BtnOK3}      timeout=15
    Click Element       ${BtnOK3}
    Sleep     ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=30
    Sleep     ${Sleep}
    Log to console  Borrow 1 Part and Sent to Inventory Success

    
    Log to console   *****Result***** ${RobotBUF}
    Comment    ${RobotBUF}

    Reload Page
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${MenuInventory}     timeout=15
    Wait Until Page Contains Element      ${MenuInventory}      timeout=15

    Set Focus To Element       ${MenuInventory}
    Click Element       ${MenuInventory}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${Inventorypartmanagement}     timeout=15
    Wait Until Page Contains Element      ${Inventorypartmanagement}      timeout=15
    Sleep     ${Sleep}
    Click Element       ${Inventorypartmanagement}

    Wait Until Element Is Visible      ${InventoryBorrowList}     timeout=15
    Wait Until Page Contains Element      ${InventoryBorrowList}      timeout=15
    Sleep     ${Sleep}
    Click Element       ${InventoryBorrowList}

    Sleep     ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=30
    Sleep     ${Sleep}

    Input Text      ${InvenJobNumber}       ${RobotBUF}
    Click Element       ${BtnSearchInven}

    Sleep     ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=30
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnManageProduct}
    Click Element       ${BtnManageProduct}

    Wait Until Element Is Not Visible      ${Loading}     timeout=30
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnSaveInventory}     timeout=15
    Wait Until Page Contains Element      ${BtnSaveInventory}      timeout=15
    Sleep     ${Sleep}

    Click Element    ${IncreasePart}

    Set Focus To Element       ${BtnSaveInventory}
    Click Element       ${BtnSaveInventory}
    Wait Until Element Is Not Visible      ${Loading}     timeout=30
    Sleep     ${Sleep}
    Sleep     ${Sleep}

    Reload Page
    Wait Until Element Is Not Visible      ${Loading}     timeout=30
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${MenuSAM}     timeout=15
    Wait Until Page Contains Element      ${MenuSAM}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${MenuSAM}
    Click Element      ${MenuSAM}


    Wait Until Element Is Visible      ${MenuPartManagement}     timeout=15
    Click Element       ${MenuPartManagement}
    Wait Until Element Is Visible      ${Submenupartmanagement}     timeout=15
    Click Element       ${Submenupartmanagement}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    ${now}    Evaluate    '{dt.day}{dt.month}{dt.year}'.format(dt=datetime.datetime.now())    modules=datetime
    Input Text      ${DateTime}       ${now}
    Sleep     ${Sleep}

    Wait Until Element Is Visible        ${BtnSearch}      timeout=15
    Wait Until Page Contains Element      ${BtnSearch}      timeout=15
    Click Element       ${BtnSearch} 

    Sleep     ${Sleep}
    Set Focus To Element       ${BtnEdit}
    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15

    Sleep     ${Sleep}
    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnOK1}     timeout=15
    Wait Until Page Contains Element      ${BtnOK1}      timeout=15
    Click Element     ${BtnOK1}
    Sleep     ${Sleep}
    Log to console  Borrow 1 Part and Sent to Inventory Success
    
################ ยังไม่เสด ต้องเปลี่ยน Part ที่ Inventory ####################












Resolution not specify Details of spare parts

    Login Engineer
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenumyjobassignment}     timeout=15
    Click Element       ${Submenumyjobassignment}
    Sleep     ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    Select From List By Value       ${SelectStatusAssign}       ${StatusOpen}
    Click Element          ${BtnSearchJobAssign}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnAcceptJob} 
    Wait Until Element Is Visible      ${BtnAcceptJobConfirm}     timeout=15
    Click Element       ${BtnAcceptJobConfirm}
    Log to console    Accept Job Repair Success

    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK2}     timeout=15
    Click Element     ${BtnOK2}

    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${SelectStatusAssign}     timeout=15
    Select From List By Index       ${SelectStatusAssign}       ${AllStatus}
    Click Element          ${BtnSearchJobAssign}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEdit}
    Click Element          ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    Sleep     ${Sleep}

    Set Focus To Element       ${TabWarranty}
    Click Element       ${TabWarranty}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}


    Set Focus To Element       ${StatusWarranty}
    Select From List By Value       ${StatusWarranty}       ${WarrantyStatus}
    Sleep     ${Sleep}
    Set Focus To Element       ${BtnSaveWarranty}
    Sleep     ${Sleep}
    Click Element       ${BtnSaveWarranty}

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnOK3}     timeout=15
    Sleep     ${Sleep}
    Click Element       ${BtnOK3}
    Sleep     ${Sleep}


    Set Focus To Element       ${BtnEdit}
    Click Element          ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    Sleep     ${Sleep}


    Wait Until Element Is Visible      ${TabResolution}     timeout=15
    Set Focus To Element       ${TabResolution}
    Click Element       ${TabResolution}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnAddResolution}     timeout=15
    Click Element       ${BtnAddResolution}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnSaveResolution}
    Click Element       ${BtnSaveResolution}
    Sleep     ${Sleep}

    Log to console  Resolution not specify Details of spare parts Success    
    
    


    
    
  




   


   






