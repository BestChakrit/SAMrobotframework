***Settings***
Documentation   TEST SAM Open Job Onsite
Library        Selenium2Library 
Library        BuiltIn
Library        String
Resource       ../Login/loginKeyword.robot
Resource       ../../Function/Function.robot
Resource       ../../Variable/openjobonsiteVal.robot
Resource       ../../Element/openjobonsiteElement.robot

*** Keywords ***
Open Job Onsite
    Login input User and Password
    Wait Until Element Is Visible      ${MenuOnsitejobmanagement}     timeout=15
    Click Element       ${MenuOnsitejobmanagement}
    Wait Until Element Is Visible      ${Submenujobonsite}     timeout=15
    Click Element       ${Submenujobonsite}
    Scroll Page To Location    200    200
    Sleep    2s
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Click Element       ${BtnNewjob} 
    Wait Until Element Is Not Visible      ${Loading}     timeout=15

    Sleep    ${Sleep}
    Wait Until Element Is Visible      ${SelectServiceOrderType}     timeout=15
    # Select From List By Value       ${SelectServiceOrderType}       ${V_ServiceOrderType_OnsiteHD}
    # Select From List By Value       ${SelectServiceType}         ${V_ServiceType} 

    Set Focus To Element        ${SerialNumber}
    input text          ${SerialNumber}         CNC22200TK
    Click Element       ${BtnSearchSerial}
    Wait Until Element Is Not Visible      ${Loading}     timeout=15
    Sleep    3s

    Click Element     ${BtnOK}

    Set Focus To Element        ${Refence}
    input text        ${Refence}        test ref

    Set Focus To Element        ${DetailProblem}
    input text        ${DetailProblem}       testpap

    # Set Focus To Element        ${BtnOpenJob}
    # Click Element      ${BtnOpenJob}




    