***Settings***
Documentation   TEST SAM Stock Center
Library        Selenium2Library 
Library        BuiltIn
Library        String
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/stockcenterVal.robot
Resource       ../../Element/stockcenterElement.robot

*** Keywords ***
Accept Borrow Stock Center
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

Borrow 1 Part and Accept 1 Part By Define Serial
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Click Element       ${BtnOK3}
    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}

    Log to console  Borrow 1 Part and Accept 1 Part By Define Serial Success


Borrow 1 Part and Accept 1 Part By Define Serial and IMEI
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}
    Input Text     ${TextIMEI1}      ${V_IMEI}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Click Element       ${BtnOK3}
    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}

    Log to console  Borrow 1 Part and Accept 1 Part By Define Serial and IMEI Success


Borrow 1 Part and Create SPO
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnCreateSPO}     timeout=15
    Wait Until Page Contains Element      ${BtnCreateSPO}      timeout=15
    Sleep     ${Sleep}
    Set Focus To Element       ${BtnCreateSPO}
    Click Element       ${BtnCreateSPO}

    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK3}     timeout=15
    Wait Until Page Contains Element      ${BtnOK3}      timeout=15
    Click Element       ${BtnOK3}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnConfirmSPO}     timeout=15
    Wait Until Page Contains Element      ${BtnConfirmSPO}      timeout=15
    Click Element       ${BtnConfirmSPO}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}
    Log to console  Borrow 1 Part and Create SPO Success

Borrow 1 Part and Sent to Inventory
    Accept Borrow Stock Center

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



Borrow 1 Part 2 Piece Accept 1 Piece and Cancel 1 Piece 
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}
    Click Element       ${BtnOK3}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${Checkbox2}     timeout=15
    Wait Until Page Contains Element      ${Checkbox2}      timeout=15
    Click Element       ${Checkbox2}
    Sleep     ${Sleep}
    Log to console      Can Select Checkbox

    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}

    Log to console  Borrow 1 Part 2 Piece Accept 1 Piece and Cancel 1 Piece Success

Borrow 2 Part each 1 Piece and All Accept 
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}
    Click Element       ${BtnOK3}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnEditPart2}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart2}      timeout=15
    Sleep     ${Sleep}
    Set Focus To Element       ${BtnEditPart2}
    Click Element       ${BtnEditPart2}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK5}     timeout=15
    Wait Until Page Contains Element      ${BtnOK5}      timeout=15
    Click Element       ${BtnOK5}
    Sleep     ${Sleep}

    Log to console  Borrow 2 Part each 1 Piece and All Accept Success

Borrow 2 Part each 1 Piece Accept 1 Part and Cancel 1 Part
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}
    Click Element       ${BtnOK3}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${CheckboxPart2and1piece}     timeout=15
    Wait Until Page Contains Element      ${CheckboxPart2and1piece}      timeout=15
    Set Focus To Element       ${CheckboxPart2and1piece}
    Click Element       ${CheckboxPart2and1piece}
    Sleep     ${Sleep}
    Log to console      Can Select Checkbox

    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}
    Log to console  Borrow 2 Part each 1 Piece Accept 1 Part and Cancel 1 Part Success

Borrow 2 Part each 1 Piece Accept 1 Part sent to Inventory 1 Part
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}
    Click Element       ${BtnOK3}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${CheckboxPart2and1piece}     timeout=15
    Wait Until Page Contains Element      ${CheckboxPart2and1piece}      timeout=15
    Set Focus To Element       ${CheckboxPart2and1piece}
    Click Element       ${CheckboxPart2and1piece}
    Sleep     ${Sleep}
    Log to console      Can Select Checkbox

    Wait Until Element Is Visible      ${BtnSenttoInventory}     timeout=15
    Wait Until Page Contains Element      ${BtnSenttoInventory}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnSenttoInventory}
    Click Element       ${BtnSenttoInventory}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}
    Log to console  Borrow 2 Part each 1 Piece Accept 1 Part and Cancel 1 Part Success

Borrow Cancel   
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnCancelBorrow}     timeout=15
    Wait Until Page Contains Element      ${BtnCancelBorrow}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnCancelBorrow}
    Click Element       ${BtnCancelBorrow}

    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnCancelBorrowConfirm}     timeout=15
    Wait Until Page Contains Element      ${BtnCancelBorrowConfirm}      timeout=15

    Set Focus To Element       ${BtnCancelBorrowConfirm}
    Click Element       ${BtnCancelBorrowConfirm}

    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK3}     timeout=15
    Wait Until Page Contains Element      ${BtnOK3}      timeout=15
    Click Element       ${BtnOK3}
    Sleep     ${Sleep}
    Log to console  Borrow Cancel Success



Borrow Product Part A and Arrange Products Part A
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Click Element       ${BtnOK3}
    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}

    Log to console  Borrow Product Part A and Arrange Products Part A Success


Borrow Product Part A and Arrange Products Part B
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnSearchPart}
    Click Element       ${BtnSearchPart}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${SelectPartB}     timeout=15
    Wait Until Page Contains Element      ${SelectPartB}      timeout=15
    Click Element       ${SelectPartB}

    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnSave}     timeout=15
    Wait Until Page Contains Element      ${BtnSave}      timeout=15

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Click Element       ${BtnOK3}
    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}

    Log to console  Borrow Product Part A and Arrange Products Part B Success





Borrow Product Part A and Arrange Products Part A and Return Part A
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Click Element       ${BtnOK3}
    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}

    Log to console  Borrow 1 Part and Accept 1 Part By Define Serial Success
    Wait Until Element Is Visible      ${BtnOK5}     timeout=15
    Wait Until Page Contains Element      ${BtnOK5}      timeout=15
    Click Element       ${BtnOK5}
    Sleep     ${Sleep}        

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status_Sale}
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnOK6}     timeout=15
    Wait Until Page Contains Element      ${BtnOK6}      timeout=15
    Click Element       ${BtnOK6}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnReturnPartConplete}     timeout=15
    Wait Until Page Contains Element      ${BtnReturnPartConplete}      timeout=15
    Set Focus To Element       ${BtnReturnPartConplete}
    Click Element       ${BtnReturnPartConplete}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnOK7}     timeout=15
    Wait Until Page Contains Element      ${BtnOK7}      timeout=15
    Set Focus To Element       ${BtnOK7}
    Click Element       ${BtnOK7}
    Sleep     ${Sleep}  
    Log to console  Borrow Product Part A and Arrange Products Part A and Return Part A Success

Borrow Product Part A and Arrange Products Part A and Return Part B
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Click Element       ${BtnOK3}
    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}

    Log to console  Borrow 1 Part and Accept 1 Part By Define Serial Success
    Wait Until Element Is Visible      ${BtnOK5}     timeout=15
    Wait Until Page Contains Element      ${BtnOK5}      timeout=15
    Click Element       ${BtnOK5}
    Sleep     ${Sleep}        

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}
    Sleep     ${Sleep}

#เลือก Part ใหม่
    Wait Until Element Is Visible      ${BtnSearchPart}     timeout=15
    Wait Until Page Contains Element      ${BtnSearchPart}      timeout=15
    Set Focus To Element       ${BtnSearchPart}
    Click Element       ${BtnSearchPart}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${SelectPartB}     timeout=15
    Wait Until Page Contains Element      ${SelectPartB}      timeout=15
    Click Element       ${SelectPartB}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${PartStatus}     timeout=15
    Wait Until Page Contains Element      ${PartStatus}      timeout=15
    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status_Sale}
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnOK6}     timeout=15
    Wait Until Page Contains Element      ${BtnOK6}      timeout=15
    Click Element       ${BtnOK6}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnReturnPartConplete}     timeout=15
    Wait Until Page Contains Element      ${BtnReturnPartConplete}      timeout=15
    Set Focus To Element       ${BtnReturnPartConplete}
    Click Element       ${BtnReturnPartConplete}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnOK7}     timeout=15
    Wait Until Page Contains Element      ${BtnOK7}      timeout=15
    Set Focus To Element       ${BtnOK7}
    Click Element       ${BtnOK7}
    Sleep     ${Sleep}  
    Log to console  Borrow Product Part A and Arrange Products Part A and Return Part B Success



Borrow Product Part A and Arrange Products Part B and Return Part A   
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}
## เลือก Part ใหม่
    Set Focus To Element       ${BtnSearchPart}
    Click Element       ${BtnSearchPart}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${SelectPartB}     timeout=15
    Wait Until Page Contains Element      ${SelectPartB}      timeout=15
    Click Element       ${SelectPartB}
    Sleep     ${Sleep}


    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Click Element       ${BtnOK3}
    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}

    Log to console  Borrow 1 Part and Accept 1 Part By Define Serial Success
    Wait Until Element Is Visible      ${BtnOK5}     timeout=15
    Wait Until Page Contains Element      ${BtnOK5}      timeout=15
    Click Element       ${BtnOK5}
    Sleep     ${Sleep}        

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}
    Sleep     ${Sleep}

#เลือก Part ใหม่
    Wait Until Element Is Visible      ${BtnSearchPart}     timeout=15
    Wait Until Page Contains Element      ${BtnSearchPart}      timeout=15
    Set Focus To Element       ${BtnSearchPart}
    Click Element       ${BtnSearchPart}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${SelectPartB}     timeout=15
    Wait Until Page Contains Element      ${SelectPartB}      timeout=15
    Click Element       ${SelectPartB}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${PartStatus}     timeout=15
    Wait Until Page Contains Element      ${PartStatus}      timeout=15
    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status_Sale}
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnOK6}     timeout=15
    Wait Until Page Contains Element      ${BtnOK6}      timeout=15
    Click Element       ${BtnOK6}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnReturnPartConplete}     timeout=15
    Wait Until Page Contains Element      ${BtnReturnPartConplete}      timeout=15
    Set Focus To Element       ${BtnReturnPartConplete}
    Click Element       ${BtnReturnPartConplete}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnOK7}     timeout=15
    Wait Until Page Contains Element      ${BtnOK7}      timeout=15
    Set Focus To Element       ${BtnOK7}
    Click Element       ${BtnOK7}
    Sleep     ${Sleep}  
    Log to console  Borrow Product Part A and Arrange Products Part B and Return Part A Success



Borrow Product Part A and Arrange Products Part B and Return Part B
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}
## เลือก Part ใหม่
    Set Focus To Element       ${BtnSearchPart}
    Click Element       ${BtnSearchPart}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${SelectPartB}     timeout=15
    Wait Until Page Contains Element      ${SelectPartB}      timeout=15
    Click Element       ${SelectPartB}
    Sleep     ${Sleep}


    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Click Element       ${BtnOK3}
    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}

    Log to console  Borrow 1 Part and Accept 1 Part By Define Serial Success
    Wait Until Element Is Visible      ${BtnOK5}     timeout=15
    Wait Until Page Contains Element      ${BtnOK5}      timeout=15
    Click Element       ${BtnOK5}
    Sleep     ${Sleep}        

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}
    Sleep     ${Sleep}

# #เลือก Part ใหม่
#     Wait Until Element Is Visible      ${BtnSearchPart}     timeout=15
#     Wait Until Page Contains Element      ${BtnSearchPart}      timeout=15
#     Set Focus To Element       ${BtnSearchPart}
#     Click Element       ${BtnSearchPart}
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     Sleep     ${Sleep}
#     Wait Until Element Is Visible      ${SelectPartB}     timeout=15
#     Wait Until Page Contains Element      ${SelectPartB}      timeout=15
#     Click Element       ${SelectPartB}
#     Sleep     ${Sleep}

    Wait Until Element Is Visible      ${PartStatus}     timeout=15
    Wait Until Page Contains Element      ${PartStatus}      timeout=15
    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status_Sale}
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnOK6}     timeout=15
    Wait Until Page Contains Element      ${BtnOK6}      timeout=15
    Click Element       ${BtnOK6}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnReturnPartConplete}     timeout=15
    Wait Until Page Contains Element      ${BtnReturnPartConplete}      timeout=15
    Set Focus To Element       ${BtnReturnPartConplete}
    Click Element       ${BtnReturnPartConplete}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnOK7}     timeout=15
    Wait Until Page Contains Element      ${BtnOK7}      timeout=15
    Set Focus To Element       ${BtnOK7}
    Click Element       ${BtnOK7}
    Sleep     ${Sleep}  
    Log to console  Borrow Product Part A and Arrange Products Part B and Return Part A Success

Borrow Part Case Return Good
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Click Element       ${BtnOK3}
    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}

    Log to console  Borrow 1 Part and Accept 1 Part By Define Serial Success
    Wait Until Element Is Visible      ${BtnOK5}     timeout=15
    Wait Until Page Contains Element      ${BtnOK5}      timeout=15
    Click Element       ${BtnOK5}
    Sleep     ${Sleep}        

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status_Good}
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnOK6}     timeout=15
    Wait Until Page Contains Element      ${BtnOK6}      timeout=15
    Click Element       ${BtnOK6}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnReturnPartConplete}     timeout=15
    Wait Until Page Contains Element      ${BtnReturnPartConplete}      timeout=15
    Set Focus To Element       ${BtnReturnPartConplete}
    Click Element       ${BtnReturnPartConplete}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnOK7}     timeout=15
    Wait Until Page Contains Element      ${BtnOK7}      timeout=15
    Set Focus To Element       ${BtnOK7}
    Click Element       ${BtnOK7}
    Sleep     ${Sleep}  
    Log to console  Borrow Part Case Return Good Success

Borrow Part Case Return Damn
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Click Element       ${BtnOK3}
    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}

    Log to console  Borrow 1 Part and Accept 1 Part By Define Serial Success
    Wait Until Element Is Visible      ${BtnOK5}     timeout=15
    Wait Until Page Contains Element      ${BtnOK5}      timeout=15
    Click Element       ${BtnOK5}
    Sleep     ${Sleep}        

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status_Damn}
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnOK6}     timeout=15
    Wait Until Page Contains Element      ${BtnOK6}      timeout=15
    Click Element       ${BtnOK6}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnReturnPartConplete}     timeout=15
    Wait Until Page Contains Element      ${BtnReturnPartConplete}      timeout=15
    Set Focus To Element       ${BtnReturnPartConplete}
    Click Element       ${BtnReturnPartConplete}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnOK7}     timeout=15
    Wait Until Page Contains Element      ${BtnOK7}      timeout=15
    Set Focus To Element       ${BtnOK7}
    Click Element       ${BtnOK7}
    Sleep     ${Sleep}  
    Log to console  Borrow Part Case Return Damn Success

Borrow Part Case Return Sale
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Click Element       ${BtnOK3}
    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}

    Log to console  Borrow 1 Part and Accept 1 Part By Define Serial Success
    Wait Until Element Is Visible      ${BtnOK5}     timeout=15
    Wait Until Page Contains Element      ${BtnOK5}      timeout=15
    Click Element       ${BtnOK5}
    Sleep     ${Sleep}        

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status_Sale}
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnOK6}     timeout=15
    Wait Until Page Contains Element      ${BtnOK6}      timeout=15
    Click Element       ${BtnOK6}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnReturnPartConplete}     timeout=15
    Wait Until Page Contains Element      ${BtnReturnPartConplete}      timeout=15
    Set Focus To Element       ${BtnReturnPartConplete}
    Click Element       ${BtnReturnPartConplete}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnOK7}     timeout=15
    Wait Until Page Contains Element      ${BtnOK7}      timeout=15
    Set Focus To Element       ${BtnOK7}
    Click Element       ${BtnOK7}
    Sleep     ${Sleep}  
    Log to console  Borrow Part Case Return Sale Success

Borrow Part Case Return Manufacturing Damn
    Accept Borrow Stock Center

    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Wait Until Page Contains Element      ${BtnEdit}      timeout=15
    Click Element     ${BtnEdit}

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}

    Wait Until Element Is Visible      ${TextSerial}     timeout=15
    Wait Until Page Contains Element      ${TextSerial}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status}
    Sleep     ${Sleep}

    Input Text     ${TextSerial}        ${V_Serial}
    Input Text     ${TextLocator}       ${V_Locator}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Click Element       ${BtnOK3}
    Wait Until Element Is Visible      ${BtnMachineArrived}     timeout=15
    Wait Until Page Contains Element      ${BtnMachineArrived}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnMachineArrived}
    Click Element       ${BtnMachineArrived}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}     timeout=15
    Wait Until Page Contains Element      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4}
    Sleep     ${Sleep}

    Log to console  Borrow 1 Part and Accept 1 Part By Define Serial Success
    Wait Until Element Is Visible      ${BtnOK5}     timeout=15
    Wait Until Page Contains Element      ${BtnOK5}      timeout=15
    Click Element       ${BtnOK5}
    Sleep     ${Sleep}        

    Wait Until Element Is Visible      ${BtnEditPart}     timeout=15
    Wait Until Page Contains Element      ${BtnEditPart}      timeout=15
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnEditPart}
    Click Element       ${BtnEditPart}
    Sleep     ${Sleep}

    Set Focus To Element       ${PartStatus}
    Select From List By Value      ${PartStatus}       ${V_Status_ManufacturingDamn}
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnSave}
    Click Element       ${BtnSave}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnOK6}     timeout=15
    Wait Until Page Contains Element      ${BtnOK6}      timeout=15
    Click Element       ${BtnOK6}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnReturnPartConplete}     timeout=15
    Wait Until Page Contains Element      ${BtnReturnPartConplete}      timeout=15
    Set Focus To Element       ${BtnReturnPartConplete}
    Click Element       ${BtnReturnPartConplete}
    Sleep     ${Sleep}  

    Wait Until Element Is Visible      ${BtnOK7}     timeout=15
    Wait Until Page Contains Element      ${BtnOK7}      timeout=15
    Set Focus To Element       ${BtnOK7}
    Click Element       ${BtnOK7}
    Sleep     ${Sleep}  
    Log to console  Borrow Part Case Return Manufacturing Damn Success

Print Borrow
    Accept Borrow Stock Center

    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${CheckboxselectedDetail}     timeout=15
    Click Element      ${CheckboxselectedDetail}
    Click Element       ${BtnPrintBorrow}
    Sleep     ${Sleep}
    Wait Until Element Is Visible      ${BtnOK3}     timeout=15
    Click Element       ${BtnOK3}
    Sleep     ${Sleep}
    Log to console  Print Borrow Success

Print Notify service(Account)
    Login input User and Password
    Wait Until Element Is Visible      ${MenuPartManagement}     timeout=15
    Click Element       ${MenuPartManagement}
    Wait Until Element Is Visible      ${Submenupartmanagement}     timeout=15
    Click Element       ${Submenupartmanagement}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    
    Click Element       ${StatusSparePartReturn}
    Sleep     ${Sleep}

    Wait Until Element Is Visible        ${BtnSearch}      timeout=15
    Wait Until Page Contains Element      ${BtnSearch}      timeout=15
    Click Element       ${BtnSearch} 

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    Scroll Page To Location    200    400
    Wait Until Element Is Visible        ${BtnView}      timeout=15
    Wait Until Page Contains Element      ${BtnView}      timeout=15
    Click Element       ${BtnView} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    
    Wait Until Page Contains Element      ${BtnPrint}      timeout=15
    Set Focus To Element       ${BtnPrint}
    Click Element     ${BtnPrint} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}

    Wait Until Page Contains Element      ${CheckboxPrintAccount}      timeout=15
    Set Focus To Element       ${CheckboxPrintAccount}
    Click Element     ${CheckboxPrintAccount} 

    Click Element    ${BtnGenerate}
    Sleep     ${Sleep}
    Sleep     ${Sleep}

    Wait Until Page Contains Element      ${BtnPrintConfirm}      timeout=15
    Set Focus To Element       ${BtnPrintConfirm}
    Click Element     ${BtnPrintConfirm} 
    Sleep     ${Sleep}

    Log to console  Print Notify service(Account) Success


Create Part 1 Part  
    Login input User and Password
    Wait Until Element Is Visible      ${MenuPartManagement}     timeout=15
    Click Element       ${MenuPartManagement}
    Wait Until Element Is Visible      ${Submenupartitem}     timeout=15
    Click Element       ${Submenupartitem}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}

    Wait Until Page Contains Element      ${BtnAddSparePartItem}      timeout=15
    Set Focus To Element       ${BtnAddSparePartItem}
    Click Element       ${BtnAddSparePartItem} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}

    Wait Until Page Contains Element      ${TextPartNumber}      timeout=15
    Set Focus To Element       ${TextPartNumber}

    ${RobotSerial} =    Generate Random String
    Input Text	    ${TextPartNumber} 	   ROBOT${RobotSerial}
    Click Element       ${BtnSearchBrand}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}

    Click Element       ${SelectPart}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}

    Wait Until Page Contains Element      ${TextPartDetail}      timeout=15
    Set Focus To Element       ${TextPartDetail}
    Input Text      ${TextPartDetail}       ${V_PartDetail}

    Set Focus To Element       ${BtnSaveSparePart}
    Click Element       ${BtnSaveSparePart}
    Sleep     ${Sleep}
    Log to console  Create Part 1 Part Success

    
Import Spare Part more 1 Part
    Login input User and Password
    Wait Until Element Is Visible      ${MenuPartManagement}     timeout=15
    Click Element       ${MenuPartManagement}
    Wait Until Element Is Visible      ${Submenuimportsparepart}     timeout=15
    Click Element       ${Submenuimportsparepart}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    Wait Until Page Contains Element      ${BtnBrowse}      timeout=15
    Sleep     ${Sleep}

    Choose File        ${BtnBrowse}       C://Users/chakrits/Desktop/SparePart_Template.xlsx
    Sleep     ${Sleep}
    Wait Until Page Contains Element      ${BtnUpload}      timeout=15
    Click Element       ${BtnUpload}
    Sleep     ${Sleep}
    Log to console  Import Spare Part more 1 Part Success
    Wait Until Element Is Not Visible      //*[@class="k-icon k-loading"]      timeout=25
    ${RobotSerial} =   Get Text	    ${ResultText}
    Log to console   *****Result***** ${RobotSerial}

    Should Be Equal    ${RobotSerial}    ดำเนินการอัพเดทข้อมูลสำเร็จ 5 รายการจากข้อมูล 5 รายการ    ผลลัพธ์ไม่ถูกต้อง:${RobotSerial}