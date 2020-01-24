***Settings***
Documentation   TEST SAM Request Spare Part Supplier Claim
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/quotationVal.robot
Resource       ../../Element/quotationElement.robot

*** Keywords ***

Accept Quotation
    Login Services Quotation
    Wait Until Element Is Visible      ${MenuQuotationCenter}     timeout=15
    Click Element       ${MenuQuotationCenter}
    Wait Until Element Is Visible      ${SubmenuQuotation}     timeout=15
    Click Element       ${SubmenuQuotation}

    Scroll Page To Location    200    400
    Wait Until Element Is Visible      ${BtnAccept}     timeout=15
    Click Element       ${BtnAccept}
    Wait Until Element Is Visible      ${BtnAcceptConfirm}     timeout=15
    Click Element       ${BtnAcceptConfirm}
    Wait Until Element Is Visible      ${BtnAcceptOK}     timeout=15
    Click Element       ${BtnAcceptOK}
    Log to console  Accept Quotation Success
    
Add Services Charge Confirm by Custotmer
    Login Services Quotation
    Wait Until Element Is Visible      ${MenuQuotationCenter}     timeout=15
    Click Element       ${MenuQuotationCenter}
    Wait Until Element Is Visible      ${SubmenuQuotation}     timeout=15
    Click Element       ${SubmenuQuotation}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Scroll Page To Location    200    400
    # Wait Until Element Is Visible      ${BtnAccept}     timeout=15
    # Click Element       ${BtnAccept}
    # Wait Until Element Is Visible      ${BtnAcceptConfirm}     timeout=15
    # Click Element       ${BtnAcceptConfirm}
    # Wait Until Element Is Visible      ${BtnAcceptOK}     timeout=15
    # Click Element       ${BtnAcceptOK}
    # Wait Until Element Is Not Visible      ${BtnAcceptOK}     timeout=15
    Set Focus To Element        ${BtnEdit}
    Click Element       ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep       ${Sleep}
    Wait Until Element Is Visible      ${BtnAddServicesCharge}     timeout=15
    Set Focus To Element        ${BtnAddServicesCharge}
    Click Element       ${BtnAddServicesCharge}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Select From List By Value       ${SelectList}       ${TypeServicesCharge}
    Sleep    ${Sleep}

    # Click Element     ${Price}
    #Input Text     ${Price}      ${V_Price}
    # Clear Element Text    ${Discount}
    # Input Text        ${Discount}      ${V_Discount}

    Set Focus To Element        ${BtnSave}
    Click Element       ${BtnSave} 

    Wait Until Element Is Visible     ${BtnAddOK}     timeout=15
    Click Element       ${BtnAddOK} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Enabled      ${BtnCustomerConfirmed}     timeout=15
    Set Focus To Element        ${BtnCustomerConfirmed}
    Click Element       ${BtnCustomerConfirmed}

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible     ${RadioConfirmedFix}     timeout=15
    Click Element       ${RadioConfirmedFix} 

    Sleep       ${Sleep}
    Wait Until Element Is Visible     ${SelectCause}     timeout=15
    Select From List By Value      ${SelectCause}       ${V_Cause}     

    Input Text      ${PaymentDate}         ${V_PaymentDate}
    Click Element       ${BtnConfirmFix} 
    Wait Until Element Is Visible     ${BtnConfirmFixOK}     timeout=15
    Click Element       ${BtnConfirmFixOK}
    Sleep      ${Sleep}
    Log to console    Add Services Charge Confirm by Custotmer Successs



Add Services Charge Cancel by Custotmer
    Login Services Quotation
    Wait Until Element Is Visible      ${MenuQuotationCenter}     timeout=15
    Click Element       ${MenuQuotationCenter}
    Wait Until Element Is Visible      ${SubmenuQuotation}     timeout=15
    Click Element       ${SubmenuQuotation}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Scroll Page To Location    200    400

    Wait Until Element Is Visible      ${BtnAccept}     timeout=15
    Click Element       ${BtnAccept}
    Wait Until Element Is Visible      ${BtnAcceptConfirm}     timeout=15
    Click Element       ${BtnAcceptConfirm}
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${BtnAcceptOK}     timeout=15
    Click Element       ${BtnAcceptOK}
    Wait Until Element Is Not Visible      ${BtnAcceptOK}     timeout=15

    Set Focus To Element        ${BtnEdit}
    Click Element       ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep       ${Sleep}
    Wait Until Element Is Visible      ${BtnAddServicesCharge}     timeout=15
    Set Focus To Element        ${BtnAddServicesCharge}
    Click Element       ${BtnAddServicesCharge}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Select From List By Value       ${SelectList}       ${TypeServicesCharge}
    Sleep    ${Sleep}

    Set Focus To Element        ${BtnSave}
    Click Element       ${BtnSave} 

    Sleep   ${Sleep}
    Wait Until Element Is Visible     ${BtnOKCSS}     timeout=15
    Click Element       ${BtnOKCSS}

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep   ${Sleep}
    Wait Until Element Is Enabled      ${BtnCustomerConfirmed}     timeout=15
    Set Focus To Element        ${BtnCustomerConfirmed}
    Click Element       ${BtnCustomerConfirmed}

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible     ${RadioConfirmedCancel}     timeout=15
    Click Element       ${RadioConfirmedCancel} 

    Sleep       ${Sleep}
    Wait Until Element Is Visible     ${SelectCause}     timeout=15
    Select From List By Value      ${SelectCause}       ${V_Cause_Cancel}    

    Double Click Element       ${BtnConfirmFix} 
    Sleep      ${Sleep}
    Log to console    Add Services Charge Cancel by Custotmer Successs


Add Services Charge Cancel by Engineer
    Login Services Quotation
    Wait Until Element Is Visible      ${MenuQuotationCenter}     timeout=15
    Click Element       ${MenuQuotationCenter}
    Wait Until Element Is Visible      ${SubmenuQuotation}     timeout=15
    Click Element       ${SubmenuQuotation}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Scroll Page To Location    200    400

    Wait Until Element Is Visible      ${BtnAccept}     timeout=15
    Click Element       ${BtnAccept}
    Wait Until Element Is Visible      ${BtnAcceptConfirm}     timeout=15
    Click Element       ${BtnAcceptConfirm}
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${BtnAcceptOK}     timeout=15
    Click Element       ${BtnAcceptOK}
    Wait Until Element Is Not Visible      ${BtnAcceptOK}     timeout=15

    Set Focus To Element        ${BtnEdit}
    Click Element       ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep       ${Sleep}
    Wait Until Element Is Visible      ${BtnAddServicesCharge}     timeout=15
    Set Focus To Element        ${BtnAddServicesCharge}
    Click Element       ${BtnAddServicesCharge}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Select From List By Value       ${SelectList}       ${TypeServicesCharge}
    Sleep    ${Sleep}

    Set Focus To Element        ${BtnSave}
    Click Element       ${BtnSave} 

    Sleep   ${Sleep}
    Wait Until Element Is Visible     ${BtnOKCSS}     timeout=15
    Click Element       ${BtnOKCSS}

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep   ${Sleep}

    Wait Until Element Is Enabled      ${BtnEngineerCancel}     timeout=15
    Set Focus To Element        ${BtnEngineerCancel}
    Click Element       ${BtnEngineerCancel}

    Sleep       ${Sleep}
    Wait Until Element Is Visible     ${BtnEngineerCancelConfirm}     timeout=15
    Click Element       ${BtnEngineerCancelConfirm}

    Log to console    Add Services Charge Cancel by Engineer Successs


Add Services Charge and Transport Confirm by Customer
    Login Services Quotation
    Wait Until Element Is Visible      ${MenuQuotationCenter}     timeout=15
    Click Element       ${MenuQuotationCenter}
    Wait Until Element Is Visible      ${SubmenuQuotation}     timeout=15
    Click Element       ${SubmenuQuotation}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Scroll Page To Location    200    400

    Wait Until Element Is Visible      ${BtnAccept}     timeout=15
    Click Element       ${BtnAccept}
    Wait Until Element Is Visible      ${BtnAcceptConfirm}     timeout=15
    Click Element       ${BtnAcceptConfirm}
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${BtnAcceptOK}     timeout=15
    Click Element       ${BtnAcceptOK}
    Wait Until Element Is Not Visible      ${BtnAcceptOK}     timeout=15

    Set Focus To Element        ${BtnEdit}
    Click Element       ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${BtnAddServicesCharge}     timeout=15
    Set Focus To Element        ${BtnAddServicesCharge}
    Click Element       ${BtnAddServicesCharge}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${SelectList}     timeout=15
    Select From List By Value       ${SelectList}       ${TypeServicesCharge}
    Sleep    ${Sleep}

    Set Focus To Element        ${BtnSave}
    Click Element       ${BtnSave} 
    Sleep    ${Sleep}
    Wait Until Element Is Visible     ${BtnOKCSS}     timeout=15
    Click Element       ${BtnOKCSS}

    Sleep    ${Sleep}
    Wait Until Element Is Enabled     ${BtnAddServicesCharge}     timeout=15
    Set Focus To Element        ${BtnAddServicesCharge}
    Click Element       ${BtnAddServicesCharge}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${SelectList}        ${TypeTranspot}
    Sleep    ${Sleep}
    Set Focus To Element        ${BtnSave}
    Click Element       ${BtnSave} 

    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4} 

    ### Customer Confirm
    Wait Until Element Is Enabled      ${BtnCustomerConfirmed}     timeout=15
    Set Focus To Element        ${BtnCustomerConfirmed}
    Click Element       ${BtnCustomerConfirmed}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible     ${RadioConfirmedFix}     timeout=15
    Click Element       ${RadioConfirmedFix} 
    Sleep       ${Sleep}
    Wait Until Element Is Visible     ${SelectCause}     timeout=15
    Select From List By Value      ${SelectCause}       ${V_Cause}     
    Input Text      ${PaymentDate}         ${V_PaymentDate}
    Click Element       ${BtnConfirmFix} 
    Wait Until Element Is Visible     ${BtnOK5}     timeout=15
    Click Element       ${BtnOK5}
    Sleep      ${Sleep}
    Log to console    Add Services Charge and Transport Confirm by Customer Successs



Add Services Charge and Transport Cancel by Customer
    Login Services Quotation
    Wait Until Element Is Visible      ${MenuQuotationCenter}     timeout=15
    Click Element       ${MenuQuotationCenter}
    Wait Until Element Is Visible      ${SubmenuQuotation}     timeout=15
    Click Element       ${SubmenuQuotation}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Scroll Page To Location    200    400

    Wait Until Element Is Visible      ${BtnAccept}     timeout=15
    Click Element       ${BtnAccept}
    Wait Until Element Is Visible      ${BtnAcceptConfirm}     timeout=15
    Click Element       ${BtnAcceptConfirm}
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${BtnAcceptOK}     timeout=15
    Click Element       ${BtnAcceptOK}
    Wait Until Element Is Not Visible      ${BtnAcceptOK}     timeout=15

    Set Focus To Element        ${BtnEdit}
    Click Element       ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep       ${Sleep}
    Wait Until Element Is Visible      ${BtnAddServicesCharge}     timeout=15
    Set Focus To Element        ${BtnAddServicesCharge}
    Click Element       ${BtnAddServicesCharge}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Select From List By Value       ${SelectList}       ${TypeServicesCharge}
    Sleep    ${Sleep}

    Set Focus To Element        ${BtnSave}
    Click Element       ${BtnSave} 
    Sleep    ${Sleep}
    Wait Until Element Is Visible     ${BtnOKCSS}     timeout=15
    Click Element       ${BtnOKCSS}

    Sleep    ${Sleep}
    Wait Until Element Is Enabled     ${BtnAddServicesCharge}     timeout=15
    Set Focus To Element        ${BtnAddServicesCharge}
    Click Element       ${BtnAddServicesCharge}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Select From List By Value       ${SelectList}        ${TypeTranspot}
    Sleep    ${Sleep}
    Set Focus To Element        ${BtnSave}
    Click Element       ${BtnSave} 

    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${BtnOK4}      timeout=15
    Click Element       ${BtnOK4} 

    ### Customer Cancel
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep   ${Sleep}
    Wait Until Element Is Enabled      ${BtnCustomerConfirmed}     timeout=15
    Set Focus To Element        ${BtnCustomerConfirmed}
    Click Element       ${BtnCustomerConfirmed}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible     ${RadioConfirmedCancel}     timeout=15
    Click Element       ${RadioConfirmedCancel} 
    Sleep       ${Sleep}
    Wait Until Element Is Visible     ${SelectCause}     timeout=15
    Select From List By Value      ${SelectCause}       ${V_Cause_Cancel}    
    Double Click Element       ${BtnConfirmFix} 
    Sleep      ${Sleep}
    Log to console    Add Services Charge and Transport Cancel by Customer Success

Add Services Charge and Transport Cancel by Customer And Edit Services Charge
    Add Services Charge and Transport Cancel by Customer

    Click Element    ${BtnOK6}
    Reload Page

    Wait Until Element Is Visible     ${CheckboxWaitingQuotation}     timeout=15
    Set Focus To Element        ${CheckboxWaitingQuotation}
    Sleep      ${Sleep}
    Click Element       ${CheckboxWaitingQuotation}
    Sleep      ${Sleep}
    Click Element       ${CheckboxCustomerCanceled}
    Click Element       ${BtnSearch} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep      ${Sleep}
    Set Focus To Element        ${BtnEdit}
    Click Element       ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep      ${Sleep}
    Wait Until Element Is Visible     ${BtnEditServicesCharge}     timeout=15
    Set Focus To Element        ${BtnEditServicesCharge}
    Click Element       ${BtnEditServicesCharge}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep      ${Sleep}

    Double Click Element       ${Add์NumberServiceCharge}
    Double Click Element       ${Add์NumberServiceCharge}
    Double Click Element       ${AddNumberDiscount}

    Set Focus To Element        ${BtnEdit_Save}
    Click Element       ${BtnEdit_Save}
    Sleep      ${Sleep}
    Log to console    Add Services Charge and Transport Cancel by Customer And Edit Services Charge Success


Add Services Charge and Transport Cancel by Customer And Edit Transport
    Add Services Charge and Transport Cancel by Customer

    Click Element    ${BtnOK6}
    Reload Page

    Wait Until Element Is Visible     ${CheckboxWaitingQuotation}     timeout=15
    Set Focus To Element        ${CheckboxWaitingQuotation}
    Click Element       ${CheckboxWaitingQuotation}
    Click Element       ${CheckboxCustomerCanceled}
    Click Element       ${BtnSearch} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep      ${Sleep}
    Set Focus To Element        ${BtnEdit}
    Click Element       ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep      ${Sleep}
### แก้ไขค่าขนส่ง
    Wait Until Element Is Visible     ${BtnEditTranspot}     timeout=15
    Set Focus To Element        ${BtnEditTranspot}
    Click Element       ${BtnEditTranspot}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep      ${Sleep}

    Double Click Element       ${Add์NumberServiceCharge}
    Double Click Element       ${Add์NumberServiceCharge}
    Double Click Element       ${AddNumberDiscount}

    Set Focus To Element        ${BtnEdit_Save}
    Click Element       ${BtnEdit_Save}
    Sleep      ${Sleep}
    Log to console    Add Services Charge and Transport Cancel by Customer And Edit Services Charge Success


Waiting to confirm the quotation from customer
    Login Services Quotation
    Wait Until Element Is Visible      ${MenuQuotationCenter}     timeout=15
    Click Element       ${MenuQuotationCenter}
    Wait Until Element Is Visible      ${SubmenuQuotation}     timeout=15
    Click Element       ${SubmenuQuotation}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    
    Sleep    ${Sleep}
    Scroll Page To Location    200    800

    Wait Until Element Is Visible      ${BtnAccept}     timeout=15
    Click Element       ${BtnAccept}
    Wait Until Element Is Visible      ${BtnAcceptConfirm}     timeout=15
    Click Element       ${BtnAcceptConfirm}
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${BtnAcceptOK}     timeout=15
    Click Element       ${BtnAcceptOK}
    Wait Until Element Is Not Visible      ${BtnAcceptOK}     timeout=15

    Set Focus To Element        ${BtnEdit}
    Click Element       ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep    ${Sleep}
    Wait Until Element Is Enabled      ${BtnCustomerConfirmed}     timeout=15
    Set Focus To Element        ${BtnCustomerConfirmed}
    Click Element       ${BtnCustomerConfirmed}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    
    Wait Until Element Is Visible     ${RadioWaitingConfirmed}     timeout=15
    Click Element       ${RadioWaitingConfirmed} 
    Sleep       ${Sleep}
    Click Element       ${BtnConfirmFix} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep       ${Sleep}
    Wait Until Element Is Visible     ${BtnOK3}     timeout=15
    Click Element       ${BtnOK3}
    Sleep      ${Sleep}
    Log to console    Waiting to confirm the quotation from customer Successs


Waiting to confirm the quotation from customer and Cancel Part
    Waiting to confirm the quotation from customer

    Set Focus To Element        ${BtnCancelPart}
    Click Element       ${BtnCancelPart}
    Sleep       ${Sleep}
    Wait Until Element Is Visible     ${BtnOK4}     timeout=15
    Click Element       ${BtnOK4}

    Sleep       ${Sleep}
    Wait Until Element Is Visible     ${BtnOK5}     timeout=15
    Click Element       ${BtnOK5}
    Log to console    Waiting to confirm the quotation from customer and Cancel Part Successs


Follow up Customer
    Login Services Quotation
    Wait Until Element Is Visible      ${MenuQuotationCenter}     timeout=15
    Click Element       ${MenuQuotationCenter}
    Wait Until Element Is Visible      ${SubmenuQuotation}     timeout=15
    Click Element       ${SubmenuQuotation}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    
    Sleep    ${Sleep}
    Scroll Page To Location    200    800

    Wait Until Element Is Visible      ${BtnAccept}     timeout=15
    Click Element       ${BtnAccept}
    Wait Until Element Is Visible      ${BtnAcceptConfirm}     timeout=15
    Click Element       ${BtnAcceptConfirm}
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${BtnAcceptOK}     timeout=15
    Click Element       ${BtnAcceptOK}
    Wait Until Element Is Not Visible      ${BtnAcceptOK}     timeout=15

    Set Focus To Element        ${BtnEdit}
    Click Element       ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Wait Until Element Is Visible      ${TabFollowCustomer}     timeout=15
    Set Focus To Element        ${TabFollowCustomer}
    Click Element       ${TabFollowCustomer}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep       ${Sleep}
    Wait Until Element Is Visible      ${BtnAddTrack}     timeout=15
    Set Focus To Element        ${BtnAddTrack}
    Click Element       ${BtnAddTrack} 

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep       ${Sleep}
    Log to console      Popup Quotation > บันทึกการติดต่อลูกค้า
############## ไม่สามารถเลือกข้อมูลการดำเนินการได้

Add Services Charge Confirm by Customer and sent to Stock Center
    Login Services Quotation
    Wait Until Element Is Visible      ${MenuQuotationCenter}     timeout=15
    Click Element       ${MenuQuotationCenter}
    Wait Until Element Is Visible      ${SubmenuQuotation}     timeout=15
    Click Element       ${SubmenuQuotation}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Scroll Page To Location    200    400

    Wait Until Element Is Visible      ${BtnAccept}     timeout=15
    Click Element       ${BtnAccept}
    Wait Until Element Is Visible      ${BtnAcceptConfirm}     timeout=15
    Click Element       ${BtnAcceptConfirm}

    Sleep       ${Sleep}
    Wait Until Element Is Visible      ${BtnAcceptOK}     timeout=15
    Click Element       ${BtnAcceptOK}
    Wait Until Element Is Not Visible      ${BtnAcceptOK}     timeout=15
    Sleep       ${Sleep}

    Set Focus To Element        ${BtnEdit}
    Click Element       ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep       ${Sleep}
    Wait Until Element Is Visible      ${BtnAddServicesCharge}     timeout=15
    Set Focus To Element        ${BtnAddServicesCharge}
    Click Element       ${BtnAddServicesCharge}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Select From List By Value       ${SelectList}       ${TypeServicesCharge}
    Sleep    ${Sleep}

    Set Focus To Element        ${BtnSave}
    Click Element       ${BtnSave} 


    Wait Until Element Is Visible     ${BtnOK3}     timeout=15
    Sleep    ${Sleep}
    Click Element       ${BtnOK3} 


    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Enabled      ${BtnCustomerConfirmed}     timeout=15
    Set Focus To Element        ${BtnCustomerConfirmed}
    Click Element       ${BtnCustomerConfirmed}

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible     ${RadioConfirmedFix}     timeout=15
    Click Element       ${RadioConfirmedFix} 

    Sleep       ${Sleep}
    Wait Until Element Is Visible     ${SelectCause}     timeout=15
    Select From List By Value      ${SelectCause}       ${V_Cause}     

    Input Text      ${PaymentDate}         ${V_PaymentDate}
    Click Element       ${BtnConfirmFix} 

    Sleep       ${Sleep}
    Wait Until Element Is Visible     ${BtnOK4}     timeout=15
    Click Element       ${BtnOK4}
    Sleep      ${Sleep}
    Log to console    Add Services Charge Confirm by Custotmer Successs

    Sleep      ${Sleep}
    Wait Until Element Is Visible     ${BtnOK5}     timeout=15
    Click Element       ${BtnOK5}
    Sleep      ${Sleep}

    Wait Until Element Is Visible     ${BtnWaitingStock}     timeout=15
    Set Focus To Element        ${BtnWaitingStock}
    Click Element       ${BtnWaitingStock}
    Sleep      ${Sleep}
    Wait Until Element Is Visible     ${BtnOK6}     timeout=15
    Click Element       ${BtnOK6}
    Sleep      ${Sleep}
    Log to console    Add Services Charge and Transport Confirm by Customer and sent to Stock Center Successs



Add Services Charge Confirm by Customer and sent to SPO
    Login Services Quotation
    Wait Until Element Is Visible      ${MenuQuotationCenter}     timeout=15
    Click Element       ${MenuQuotationCenter}
    Wait Until Element Is Visible      ${SubmenuQuotation}     timeout=15
    Click Element       ${SubmenuQuotation}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Scroll Page To Location    200    400

    Wait Until Element Is Visible      ${BtnAccept}     timeout=15
    Click Element       ${BtnAccept}
    Wait Until Element Is Visible      ${BtnAcceptConfirm}     timeout=15
    Click Element       ${BtnAcceptConfirm}

    Sleep       ${Sleep}
    Wait Until Element Is Visible      ${BtnAcceptOK}     timeout=15
    Click Element       ${BtnAcceptOK}
    Wait Until Element Is Not Visible      ${BtnAcceptOK}     timeout=15
    Sleep       ${Sleep}

    Set Focus To Element        ${BtnEdit}
    Click Element       ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep       ${Sleep}
    Wait Until Element Is Visible      ${BtnAddServicesCharge}     timeout=15
    Set Focus To Element        ${BtnAddServicesCharge}
    Click Element       ${BtnAddServicesCharge}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Select From List By Value       ${SelectList}       ${TypeServicesCharge}
    Sleep    ${Sleep}

    Set Focus To Element        ${BtnSave}
    Click Element       ${BtnSave} 

    Wait Until Element Is Visible     ${BtnOK3}     timeout=15
    Sleep    ${Sleep}
    Click Element       ${BtnOK3} 

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Enabled      ${BtnCustomerConfirmed}     timeout=15
    Set Focus To Element        ${BtnCustomerConfirmed}
    Click Element       ${BtnCustomerConfirmed}

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible     ${RadioConfirmedFix}     timeout=15
    Click Element       ${RadioConfirmedFix} 

    Sleep       ${Sleep}
    Wait Until Element Is Visible     ${SelectCause}     timeout=15
    Select From List By Value      ${SelectCause}       ${V_Cause}     

    Input Text      ${PaymentDate}         ${V_PaymentDate}
    Click Element       ${BtnConfirmFix} 

    Sleep       ${Sleep}
    Wait Until Element Is Visible     ${BtnOK4}     timeout=15
    Click Element       ${BtnOK4}
    Sleep      ${Sleep}
    Log to console    Add Services Charge Confirm by Custotmer Successs

    Sleep      ${Sleep}
    Wait Until Element Is Visible     ${BtnOK5}     timeout=15
    Click Element       ${BtnOK5}
    Sleep      ${Sleep}

    Wait Until Element Is Visible     ${BtnCreateSPO}     timeout=15
    Set Focus To Element        ${BtnCreateSPO}
    Click Element       ${BtnCreateSPO}
    Sleep      ${Sleep}
    Wait Until Element Is Visible     ${BtnOK6}     timeout=15
    Click Element       ${BtnOK6}
    Sleep      ${Sleep}

    Wait Until Element Is Visible     ${BtnConfirmSPO}     timeout=15
    Click Element       ${BtnConfirmSPO} 
    Sleep      ${Sleep}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Wait Until Element Is Visible     ${BtnOK7}     timeout=15
    Click Element       ${BtnOK7}
    Sleep      ${Sleep}
    Log to console    Add Services Charge Confirm by Customer and sent to SPO Successs






Add Services Charge Confirm by Custotmer(Have BtnAccept)
    Login Services Quotation
    Wait Until Element Is Visible      ${MenuQuotationCenter}     timeout=15
    Click Element       ${MenuQuotationCenter}
    Wait Until Element Is Visible      ${SubmenuQuotation}     timeout=15
    Click Element       ${SubmenuQuotation}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Scroll Page To Location    200    400

    Sleep       ${Sleep}
    Wait Until Element Is Visible      ${BtnAccept}     timeout=15
    Set Focus To Element        ${BtnAccept}
    Click Element       ${BtnAccept}
    Sleep       ${Sleep}
    Wait Until Element Is Visible      ${BtnAcceptConfirm}     timeout=15
    Click Element       ${BtnAcceptConfirm}

    Sleep       ${Sleep}
    Wait Until Element Is Visible     ${BtnOK2}     timeout=15
    Click Element       ${BtnOK2}
    Wait Until Element Is Not Visible      ${BtnOK2}     timeout=15
    Sleep       ${Sleep}

    Set Focus To Element        ${BtnEdit}
    Click Element       ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep       ${Sleep}
    Wait Until Element Is Visible      ${BtnAddServicesCharge}     timeout=15
    Set Focus To Element        ${BtnAddServicesCharge}
    Click Element       ${BtnAddServicesCharge}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Select From List By Value       ${SelectList}       ${TypeServicesCharge}
    Sleep    ${Sleep}

    Set Focus To Element        ${BtnSave}
    Click Element       ${BtnSave} 

    Sleep    ${Sleep}
    Wait Until Element Is Visible     ${BtnOK3}     timeout=15
    Click Element       ${BtnOK3} 

    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep    ${Sleep}
    Wait Until Element Is Enabled      ${BtnCustomerConfirmed}     timeout=15
    Set Focus To Element        ${BtnCustomerConfirmed}
    Click Element       ${BtnCustomerConfirmed}

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible     ${RadioConfirmedFix}     timeout=15
    Click Element       ${RadioConfirmedFix} 

    Sleep      ${Sleep}
    Wait Until Element Is Visible     ${SelectCause}     timeout=15
    Select From List By Value      ${SelectCause}       ${V_Cause}     

    Input Text      ${PaymentDate}         ${V_PaymentDate}
    Click Element       ${BtnConfirmFix} 

    Sleep      ${Sleep}
    Wait Until Element Is Visible     ${BtnOK4}     timeout=15
    Click Element       ${BtnOK4}
    Sleep      ${Sleep}
    Log to console    Add Services Charge Confirm by Custotmer Successs

Sent Mail From Quotation
    Login Services Quotation
    Wait Until Element Is Visible      ${MenuQuotationCenter}     timeout=15
    Click Element       ${MenuQuotationCenter}
    Wait Until Element Is Visible      ${SubmenuQuotation}     timeout=15
    Click Element       ${SubmenuQuotation}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Scroll Page To Location    200    400

    Sleep       ${Sleep}
    Wait Until Element Is Visible      ${BtnAccept}     timeout=15
    Set Focus To Element        ${BtnAccept}
    Click Element       ${BtnAccept}
    Sleep       ${Sleep}
    Wait Until Element Is Visible      ${BtnAcceptConfirm}     timeout=15
    Click Element       ${BtnAcceptConfirm}

    Sleep       ${Sleep}
    Wait Until Element Is Visible     ${BtnOK2}     timeout=15
    Click Element       ${BtnOK2}
    Wait Until Element Is Not Visible      ${BtnOK2}     timeout=15
    Sleep       ${Sleep}

    Set Focus To Element        ${BtnEdit}
    Click Element       ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep       ${Sleep}
    Set Focus To Element        ${SentMailQuotation}
    Click Element       ${SentMailQuotation}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep       ${Sleep}
    Set Focus To Element        ${TextMailTo}
    Input Text      ${TextMailTo}       ${V_Mail}

    Set Focus To Element        ${BtnSentMail}
    Click Element       ${BtnSentMail}
    Sleep       ${Sleep}
    Log to console    Sent mail Success
  
Print Quotaion 
    Login Services Quotation
    Wait Until Element Is Visible      ${MenuQuotationCenter}     timeout=15
    Click Element       ${MenuQuotationCenter}
    Wait Until Element Is Visible      ${SubmenuQuotation}     timeout=15
    Click Element       ${SubmenuQuotation}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Scroll Page To Location    200    400


    Wait Until Element Is Visible     ${CheckboxWaitingQuotation}     timeout=15
    Set Focus To Element        ${CheckboxWaitingQuotation}
    Sleep      ${Sleep}
    Click Element       ${CheckboxWaitingQuotation}
    Sleep      ${Sleep}
    Click Element       ${CheckboxCustomerCanceled}
    Click Element       ${BtnSearch} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep      ${Sleep}
    Set Focus To Element        ${BtnEdit}
    Click Element       ${BtnEdit}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep      ${Sleep}
    Set Focus To Element        ${Print}
    Click Element       ${Print}
    Sleep      ${Sleep}
    Log to console    Sent mail Success
