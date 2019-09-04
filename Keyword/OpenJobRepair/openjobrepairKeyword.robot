***Settings***
Documentation   TEST SAM Open Job Repair
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/openjobrepairVal.robot
Resource       ../../Element/openjobrepairElement.robot

*** Keywords ***
Open Job Case Service Type is Carry In 
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    2s
    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Click Element       ${BtnNewjob} 
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${SelectServiceOrderType}     timeout=15
    Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_CarryIn}
    Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 
    input text          ${TxtSerial}         ${V_Serial}
    Click Element       ${BtnSearchSerial}    
    Sleep               ${Sleep} 
    Click Element       ${BtnOKSerial}
    input text          ${TxtProblem}         ${V_Problem}
    input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}
    Click Element       ${BtnSearchCustomer}
    Sleep               ${Sleep} 
    Wait Until Element Is Visible      ${SelectrowCustomer}     timeout=15
    Click Element       ${SelectrowCustomer} 
    Sleep               ${Sleep} 
    Click Element        ${ModalBody}
    Set Focus To Element       ${TrnEquipWarrantyStatusID}
    Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
    Set Focus To Element       ${TrnEquipWarrantySourceID}
    Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index}
    Set Focus To Element       ${BtnOpenJob}
    Click Element              ${BtnOpenJob}
    Sleep               ${Sleep} 
    Click Element           ${BtnOpenJobOK}


Open Job Case Service Type is Mail In 
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    2s
    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Click Element       ${BtnNewjob} 
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${SelectServiceOrderType}     timeout=15
    Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_MailIn}
    Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 
    input text          ${TxtSerial}         ${V_Serial}
    Click Element       ${BtnSearchSerial}    
    Sleep               ${Sleep} 
    Click Element       ${BtnOKSerial}
    input text          ${TxtProblem}         ${V_Problem}
    input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}
    Click Element       ${BtnSearchCustomer}
    Sleep               ${Sleep} 
    Wait Until Element Is Visible      ${SelectrowCustomer}     timeout=15
    Click Element       ${SelectrowCustomer} 
    Sleep               ${Sleep} 
    Click Element        ${ModalBody}
    Set Focus To Element       ${TrnEquipWarrantyStatusID}
    Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
    Set Focus To Element       ${TrnEquipWarrantySourceID}
    Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index}
    Set Focus To Element       ${BtnOpenJob}
    Click Element              ${BtnOpenJob}
    Sleep               ${Sleep} 
    Click Element           ${BtnOpenJobOK}

Open Job Case Service Type is Pick up  
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    2s
    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Click Element       ${BtnNewjob} 
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${SelectServiceOrderType}     timeout=15
    Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_Pickup}
    Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 
    input text          ${TxtSerial}         ${V_Serial}
    Click Element       ${BtnSearchSerial}    
    Sleep               ${Sleep} 
    Click Element       ${BtnOKSerial}
    input text          ${TxtProblem}         ${V_Problem}
    input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}
    Click Element       ${BtnSearchCustomer}
    Sleep               ${Sleep} 
    Wait Until Element Is Visible      ${SelectrowCustomer}     timeout=15
    Click Element       ${SelectrowCustomer} 
    Sleep               ${Sleep} 
    Click Element        ${ModalBody}
    Set Focus To Element       ${TrnEquipWarrantyStatusID}
    Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
    Set Focus To Element       ${TrnEquipWarrantySourceID}
    Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index}
    Set Focus To Element       ${BtnOpenJob}
    Click Element              ${BtnOpenJob}
    Sleep               ${Sleep} 
    Click Element           ${BtnOpenJobOK}

Open Job Case input Serial 
    Open Job Case Service Type is Pick up  

Open Job Case not input Serial but search product
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    2s
    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Click Element       ${BtnNewjob} 
    Sleep      ${Sleep}
    
    Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_CarryIn}
    Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 

    Click Element       ${BtnSearchSerial}  

    Sleep           8s
    input text      ${TxtProductSerie}               ${V_ProductSerie}
    Click Element       ${BtnProductSearchSerie} 
    Sleep           10s
    Set Focus To Element       ${SelectrowProductSerie}
    Click Element       ${SelectrowProductSerie}
    Sleep               ${Sleep} 
    Click Element       ${BtnOKSerial}
    input text          ${TxtProblem}         ${V_Problem}
    input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}
    Click Element       ${BtnSearchCustomer}
    Sleep               ${Sleep} 
    Wait Until Element Is Visible      ${SelectrowCustomer}     timeout=15
    Click Element       ${SelectrowCustomer} 
    Sleep               ${Sleep} 
    Click Element        ${ModalBody}
    Set Focus To Element       ${TrnEquipWarrantyStatusID}
    Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
    Set Focus To Element       ${TrnEquipWarrantySourceID}
    Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index} 
    Set Focus To Element       ${BtnOpenJob}
    Click Element              ${BtnOpenJob}
    Sleep               ${Sleep} 
    Click Element           ${BtnOpenJobOK}

Open Job not input require
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    2s
    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Click Element       ${BtnNewjob} 
    Sleep      ${Sleep}
    Set Focus To Element       ${BtnOpenJob}
    Click Element              ${BtnOpenJob}
    # Sleep               ${Sleep} 
    # Set Focus To Element       ${BtnOpenJobOK}
    # Click Element           ${BtnOpenJobOK}


Open Job and Assign by Service Couter 
    Login input User and Password
    # Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    # Click Element       ${MenuRepairjobmanagement}
    # Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    # Click Element       ${Submenujobrepair}
    # Scroll Page To Location    200    200
    # Sleep    2s
    # Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    # Click Element       ${BtnNewjob} 
    # Sleep    ${Sleep}
    # Wait Until Element Is Visible      ${SelectServiceOrderType}     timeout=15
    # Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_CarryIn}
    # Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 
    # input text          ${TxtSerial}         ${V_Serial}
    # Click Element       ${BtnSearchSerial}    
    # Sleep               ${Sleep} 
    # Click Element       ${BtnOKSerial}
    # input text          ${TxtProblem}         ${V_Problem}
    # input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}
    # Click Element       ${BtnSearchCustomer}
    # Sleep               ${Sleep} 
    # Wait Until Element Is Visible      ${SelectrowCustomer}     timeout=15
    # Click Element       ${SelectrowCustomer} 
    # Sleep               ${Sleep} 
    # Click Element        ${ModalBody}
    # Set Focus To Element       ${TrnEquipWarrantyStatusID}
    # Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
    # Set Focus To Element       ${TrnEquipWarrantySourceID}
    # Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index}
    # Set Focus To Element       ${BtnOpenJob}
    # Click Element              ${BtnOpenJob}
    # Sleep               ${Sleep} 
    # Click Element           ${BtnOpenJobOK}
    # Sleep               ${Sleep} 
    # Click Element           ${BtnOpenJobSuccess}
    # Sleep               ${Sleep} 


    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobassignment}      timeout=15
    Click Element       ${Submenujobassignment} 
    Scroll Page To Location    200    200
    Sleep    3s
    Click Element       ${Btnassign}
    Sleep    4s
    Select From List By Index       ${SelectSection}        ${V_Section}
    # input text       ${TxtEngineer1}         ${V_Engineer1}  
    Click Element        ${Btnsaveassign} 



Open job more 1 job
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    2s
    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Click Element       ${BtnNewjob} 
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${SelectServiceOrderType}     timeout=15
    Select From List By Value         ${SelectServiceOrderType}       ${V_ServiceOrderType_CarryIn}
    Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 
    input text          ${TxtSerial}         ${V_Serial5}
    Click Element       ${BtnSearchSerial}    
    Sleep               ${Sleep} 
    Click Element       ${BtnOKSerial}
    input text          ${TxtProblem}         ${V_Problem}
    input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}
    Click Element       ${BtnSearchCustomer}
    Sleep               ${Sleep} 
    Wait Until Element Is Visible      ${SelectrowCustomer}     timeout=15
    Click Element       ${SelectrowCustomer} 
    Sleep               ${Sleep} 
    Click Element        ${ModalBody}
    Set Focus To Element       ${TrnEquipWarrantyStatusID}
    Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
    Set Focus To Element       ${TrnEquipWarrantySourceID}
    Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index}
    Set Focus To Element       ${BtnOpenJob}
    Click Element              ${BtnOpenJob}
    Sleep               ${Sleep} 
    Click Element           ${BtnOpenJobOK}
    Sleep               ${Sleep} 
    Click Element           ${BtnOpenJobSuccess}

    Click Element       ${BtnNewjob} 
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${SelectServiceOrderType}     timeout=15
    Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_CarryIn}
    Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 
    input text          ${TxtSerial}         ${V_Serial6}
    Click Element       ${BtnSearchSerial}    
    Sleep               ${Sleep} 
    Click Element       ${BtnOKSerial}
    input text          ${TxtProblem}         ${V_Problem}
    input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}
    Click Element       ${BtnSearchCustomer}
    Sleep               ${Sleep} 
    Wait Until Element Is Visible      ${SelectrowCustomer}     timeout=15
    Click Element       ${SelectrowCustomer} 
    Sleep               ${Sleep} 
    Click Element        ${ModalBody}
    Set Focus To Element       ${TrnEquipWarrantyStatusID}
    Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
    Set Focus To Element       ${TrnEquipWarrantySourceID}
    Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index}
    Set Focus To Element       ${BtnOpenJob}
    Click Element              ${BtnOpenJob}
    Sleep               ${Sleep} 
    Click Element           ${BtnOpenJobOK}

Print Job Repair
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    2s
    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Click Element       ${BtnEdit}
    Wait Until Element Is Visible      ${BtnPrint}     timeout=15
    Set Focus To Element       ${BtnPrint}
    Click Element        ${BtnPrint}
    Wait Until Element Is Visible      ${CheckboxSelectAllPrint}     timeout=15
    Click Element        ${CheckboxSelectAllPrint}
    Click Element        ${BtnGenerate}
    Wait Until Element Is Visible      ${BtnDownload}     timeout=15
    Set Focus To Element       ${BtnPrintConfirm}
    Click Element        ${BtnPrintConfirm}

    




