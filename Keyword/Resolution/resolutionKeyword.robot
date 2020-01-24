***Settings***
Documentation   Resolution 
Library        Selenium2Library 
Library        BuiltIn
Library        String
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/resolutionVal.robot
Resource       ../../Element/resolutionElement.robot

*** Keywords ***
Resolution specify Details of spare parts

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

    Wait Until Element Is Visible      ${BtnSearchSymptomCode}     timeout=15
    Set Focus To Element       ${BtnSearchSymptomCode}
    Click Element       ${BtnSearchSymptomCode}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}

    Click Element       ${SelectSymptomCode}
    Sleep     ${Sleep}

    Wait Until Element Is Visible      ${BtnSearchRepairCode}     timeout=15
    Set Focus To Element       ${BtnSearchRepairCode}
    Click Element       ${BtnSearchRepairCode}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep     ${Sleep}
    Sleep     ${Sleep}

    Click Element       ${SelectRepairCode}
    Sleep     ${Sleep}

    Set Focus To Element       ${BtnSaveResolution}
    Click Element       ${BtnSaveResolution}
    Sleep     ${Sleep}

    Log to console  Resolution specify Details of spare parts Success    
    Sleep     ${Sleep}


    # ${GetResolution} =   Get Text	    ${R_Resolution}
    # Log to console   *****Result***** ${GetResolution}

    # Should Be Equal As Strings    ${GetResolution}       เพิ่มข้อมูล  เรียบร้อยแล้ว.      ผลลัพธ์ไม่ถูกต้อง:${GetResolution}
   

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
    
    


    
    
  




   


   






