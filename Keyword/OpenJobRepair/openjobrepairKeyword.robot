***Settings***
Documentation   TEST SAM Open Job Repair
Library        Selenium2Library 
Library        BuiltIn
Library        String
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
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnNewjob} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${SelectServiceOrderType}     timeout=15
    Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_CarryIn}
    Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 
    ${RobotSerial} =    Generate Random String
    Input Text	    ${TxtSerial} 	   ROBOT${RobotSerial}
    Click Element       ${BtnSearchSerial}    

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnOKSerial}
    Input Text          ${TxtBrand}         ${V_Brand}
    Input Text          ${TxtProduct}         ${V_Product}
    input text          ${TxtProblem}         ${V_Problem}
    input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}

    Set Focus To Element        ${TxtCustomer}
    Input Text       ${TxtCustomer}          ${V_Customer}
    Click Element       ${BtnSearchCustomer}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    
    Set Focus To Element       ${WarrantyExpireDate}     
    Input Text         ${WarrantyExpireDate}           ${V_WarrantyExpireDate}
    Set Focus To Element       ${TrnEquipWarrantyStatusID}
    Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
    Set Focus To Element       ${TrnEquipWarrantySourceID}
    Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index}
    Set Focus To Element       ${BtnOpenJob}
    Click Element              ${BtnOpenJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Wait Until Element Is Visible      ${BtnOpenJobOK}       timeout=7
    Click Element           ${BtnOpenJobOK}
    Sleep     ${Sleep}
    Log to console      Open Job Case Service Type is Carry In Success


Open Job Case Service Type is Mail In 
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    2s
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnNewjob} 
    Sleep    2s
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${SelectServiceOrderType}     timeout=15
    Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_MailIn}
    Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 
    ${RobotSerial} =    Generate Random String
    Input Text	    ${TxtSerial} 	   ROBOT${RobotSerial}
    Click Element       ${BtnSearchSerial}    

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnOKSerial}
    Input Text          ${TxtBrand}         ${V_Brand}
    Input Text          ${TxtProduct}         ${V_Product}
    input text          ${TxtProblem}         ${V_Problem}
    input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}

    Set Focus To Element        ${TxtCustomer}
    Input Text       ${TxtCustomer}          ${V_Customer}
    Click Element       ${BtnSearchCustomer}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    
    Set Focus To Element       ${WarrantyExpireDate}     
    Input Text         ${WarrantyExpireDate}           ${V_WarrantyExpireDate}
    Set Focus To Element       ${TrnEquipWarrantyStatusID}
    Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
    Set Focus To Element       ${TrnEquipWarrantySourceID}
    Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index}
    Set Focus To Element       ${BtnOpenJob}
    Click Element              ${BtnOpenJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Wait Until Element Is Visible      ${BtnOpenJobOK}       timeout=7
    Click Element           ${BtnOpenJobOK}
    Sleep     ${Sleep}
    Log to console      Open Job Case Service Type is Mail In Success



Open Job Case Service Type is Pick up  
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    2s
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnNewjob} 
    Sleep    2s
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${SelectServiceOrderType}     timeout=15
    Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_Pickup}
    Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 
    ${RobotSerial} =    Generate Random String
    Input Text	    ${TxtSerial} 	   ROBOT${RobotSerial}
    Click Element       ${BtnSearchSerial}    

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnOKSerial}
    Input Text          ${TxtBrand}         ${V_Brand}
    Input Text          ${TxtProduct}         ${V_Product}
    input text          ${TxtProblem}         ${V_Problem}
    input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}

    Set Focus To Element        ${TxtCustomer}
    Input Text       ${TxtCustomer}          ${V_Customer}
    Click Element       ${BtnSearchCustomer}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    
    Set Focus To Element       ${WarrantyExpireDate}     
    Input Text         ${WarrantyExpireDate}           ${V_WarrantyExpireDate}
    Set Focus To Element       ${TrnEquipWarrantyStatusID}
    Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
    Set Focus To Element       ${TrnEquipWarrantySourceID}
    Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index}
    Set Focus To Element       ${BtnOpenJob}
    Click Element              ${BtnOpenJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Wait Until Element Is Visible      ${BtnOpenJobOK}       timeout=7
    Click Element           ${BtnOpenJobOK}
    Sleep     ${Sleep}
    Log to console      Open Job Case Service Type is Pick up Success

Open Job Case input Serial 
    Open Job Case Service Type is Pick up  

Open Job Case not input Serial but search product
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep      2s
    Wait Until Element Is Visible      ${BtnEdit}     timeout=15
    Click Element       ${BtnNewjob} 
    Sleep      2s
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep    ${Sleep}
    Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_CarryIn}
    Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 

    Click Element       ${BtnSearchSerial}  

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    input text      ${TxtProductSerie}               ${V_ProductSerie}
    Click Element       ${BtnProductSearchSerie} 
    
    Wait Until Element Is Visible      ${SelectrowProductSerie}     timeout=15
    Set Focus To Element       ${SelectrowProductSerie}
    Click Element       ${SelectrowProductSerie}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnOKSerial}
    input text          ${TxtProblem}         ${V_Problem}
    input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}
    Click Element       ${BtnSearchCustomer}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible      ${SelectrowCustomer}     timeout=15
    Click Element       ${SelectrowCustomer} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15 
    Click Element        ${ModalBody}
    Set Focus To Element       ${TrnEquipWarrantyStatusID}
    Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
    Set Focus To Element       ${TrnEquipWarrantySourceID}
    Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index} 
    Set Focus To Element       ${BtnOpenJob}
    Click Element              ${BtnOpenJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    # Click Element           ${BtnOpenJobOK}

Open Job not input require
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep      2s
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnNewjob} 
    Sleep      2s
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Set Focus To Element       ${BtnOpenJob}
    Click Element              ${BtnOpenJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    # Set Focus To Element       ${BtnOpenJobOK}
    # Click Element           ${BtnOpenJobOK}


Open Job and Assign by Service Couter 
    Open Job Case Service Type is Carry In
    
    Wait Until Element Is Visible        ${BtnOpenJobSuccess}         timeout=7
    Click Element           ${BtnOpenJobSuccess}
   
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobassignment}      timeout=15
    Click Element       ${Submenujobassignment} 
    Scroll Page To Location    200    200
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${Btnassign}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Wait Until Element Is Visible      ${SelectSection}     timeout=15
    Sleep    2s
    Select From List By Index       ${SelectSection}        ${V_Section}
    input text       ${TxtEngineer1}         ${V_Engineer1}  
    Click Element        ${Btnsaveassign} 
    Sleep    2s
    Log to console      Open Job and Assign by Service Couter Success



Open job more 1 job
    Open Job Case Service Type is Carry In
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element           ${BtnOpenJobSuccess}

    Reload Page
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Wait Until Element Is Visible       ${BtnNewjob}         timeout=15
    Click Element       ${BtnNewjob} 
    Sleep    2s
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    4s
    Wait Until Element Is Visible      ${SelectServiceOrderType}     timeout=15
    Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_CarryIn}
    Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 
    ${RobotSerial} =    Generate Random String
    Input Text	    ${TxtSerial} 	   ROBOT${RobotSerial}
    Click Element       ${BtnSearchSerial}    

    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnOKSerial}
    Input Text          ${TxtBrand}         ${V_Brand}
    Input Text          ${TxtProduct}         ${V_Product}
    input text          ${TxtProblem}         ${V_Problem}
    input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}

    Set Focus To Element        ${TxtCustomer}
    Input Text       ${TxtCustomer}          ${V_Customer}
    Click Element       ${BtnSearchCustomer}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    
    Set Focus To Element       ${WarrantyExpireDate}     
    Input Text         ${WarrantyExpireDate}           ${V_WarrantyExpireDate}
    Set Focus To Element       ${TrnEquipWarrantyStatusID}
    Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
    Set Focus To Element       ${TrnEquipWarrantySourceID}
    Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index}
    Set Focus To Element       ${BtnOpenJob}
    Click Element              ${BtnOpenJob}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Wait Until Element Is Visible      ${BtnOpenJobOK}       timeout=7
    Click Element           ${BtnOpenJobOK}
    Sleep     ${Sleep}
    Log to console      Open job more 1 job Success


Print Job Repair
    Login input User and Password
    Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
    Click Element       ${MenuRepairjobmanagement}
    Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
    Click Element       ${Submenujobrepair}
    Scroll Page To Location    200    200
    Sleep    2s
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Click Element       ${BtnEdit}
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${BtnPrint}     timeout=15
    Set Focus To Element       ${BtnPrint}
    Click Element        ${BtnPrint}
    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${CheckboxSelectAllPrint}     timeout=15
    Click Element        ${CheckboxSelectAllPrint}
    Wait Until Element Is Visible      ${BtnGenerate}     timeout=15
    Click Element        ${BtnGenerate}
    Sleep    ${Sleep}

    Wait Until Element Is Visible      ${BtnDownload}     timeout=15
    Set Focus To Element       ${BtnPrintConfirm}
    Click Element        ${BtnPrintConfirm}
    Sleep      ${Sleep}
    Log to console      Print Job Repair Success

    




############################## เลือก Serial จากตัวแปร
# Open Job Case Service Type is Carry In 
#     Login input User and Password
#     Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
#     Click Element       ${MenuRepairjobmanagement}
#     Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
#     Click Element       ${Submenujobrepair}
#     Scroll Page To Location    200    200
#     Sleep    2s
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     Click Element       ${BtnNewjob} 
#     Sleep    2s
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_CarryIn}
#     Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 
#     input text          ${TxtSerial}         ${V_Serial}
#     Click Element       ${BtnSearchSerial}    
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     Click Element       ${BtnOKSerial}
#     input text          ${TxtProblem}         ${V_Problem}
#     input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}
#     Click Element       ${BtnSearchCustomer}
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     Wait Until Element Is Visible      ${SelectrowCustomer}     timeout=15
#     Click Element       ${SelectrowCustomer} 
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     Click Element        ${ModalBody}
#     Set Focus To Element       ${TrnEquipWarrantyStatusID}
#     Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
#     Set Focus To Element       ${TrnEquipWarrantySourceID}
#     Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index}
#     Set Focus To Element       ${BtnOpenJob}
#     Click Element              ${BtnOpenJob}
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     # Click Element           ${BtnOpenJobOK}


# Open Job Case Service Type is Mail In 
#     Login input User and Password
#     Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
#     Click Element       ${MenuRepairjobmanagement}
#     Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
#     Click Element       ${Submenujobrepair}
#     Scroll Page To Location    200    200
#     Sleep    2s
#     Wait Until Element Is Visible      ${BtnEdit}     timeout=15
#     Click Element       ${BtnNewjob} 
#     Sleep    2s
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     Wait Until Element Is Visible      ${SelectServiceOrderType}     timeout=15
#     Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_MailIn}
#     Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 
#     input text          ${TxtSerial}         ${V_Serial}
#     Click Element       ${BtnSearchSerial}    
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     Click Element       ${BtnOKSerial}
#     input text          ${TxtProblem}         ${V_Problem}
#     input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}
#     Click Element       ${BtnSearchCustomer}
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     Wait Until Element Is Visible      ${SelectrowCustomer}     timeout=15
#     Click Element       ${SelectrowCustomer} 
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     Click Element        ${ModalBody}
#     Set Focus To Element       ${TrnEquipWarrantyStatusID}
#     Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
#     Set Focus To Element       ${TrnEquipWarrantySourceID}
#     Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index}
#     Set Focus To Element       ${BtnOpenJob}
#     Click Element              ${BtnOpenJob}
#     Sleep               ${Sleep} 
#     # Click Element           ${BtnOpenJobOK}

# Open Job Case Service Type is Pick up  
#     Login input User and Password
#     Wait Until Element Is Visible      ${MenuRepairjobmanagement}     timeout=15
#     Click Element       ${MenuRepairjobmanagement}
#     Wait Until Element Is Visible      ${Submenujobrepair}     timeout=15
#     Click Element       ${Submenujobrepair}
#     Scroll Page To Location    200    200
#     Sleep    2s
#     Wait Until Element Is Visible      ${BtnEdit}     timeout=15
#     Click Element       ${BtnNewjob} 
#     Sleep    2s
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_Pickup}
#     Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 
#     input text          ${TxtSerial}         ${V_Serial}
#     Click Element       ${BtnSearchSerial}    
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15 
#     Click Element       ${BtnOKSerial}
#     input text          ${TxtProblem}         ${V_Problem}
#     input text          ${TxtEquipConditionDetail}               ${V_EquipConditionDetail}
#     Click Element       ${BtnSearchCustomer}
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     Wait Until Element Is Visible      ${SelectrowCustomer}     timeout=15
#     Click Element       ${SelectrowCustomer} 
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     Click Element        ${ModalBody}
#     Set Focus To Element       ${TrnEquipWarrantyStatusID}
#     Select From List By Index       ${TrnEquipWarrantyStatusID}        ${V_TrnEquipWarrantyStatusID_Index}
#     Set Focus To Element       ${TrnEquipWarrantySourceID}
#     Select From List By Index       ${TrnEquipWarrantySourceID}        ${V_TrnEquipWarrantySourceID_Index}
#     Set Focus To Element       ${BtnOpenJob}
#     Click Element              ${BtnOpenJob}
#     Wait Until Element Is Not Visible      ${Loading}     timeout=15
#     # Click Element           ${BtnOpenJobOK}