***Settings***
Library        Selenium2Library 
Library        BuiltIn

*** Variables ***
${MenuOnsitejobmanagement}     //*[contains(text(), "Onsite Job Management")]
${Submenujobonsite}            id=jobonsiteindex

${BtnNewjob}        //*[@ng-click="addJobOnSite()"]

############ Job Repairเพิ่ม Job Repair ############
${Loading}              //div[@class="overlay"]
${SelectServiceOrderType}     id=ddlServiceOrderType
${SelectServiceType}          id=ddlServiceType
${BtnSearchSerial}           //*[@ng-click="openSerialNumberPopup()"]

${SerialNumber}         txtSerialNumber
${Refence}          id=txtCustomerReferNumber
${DetailProblem}            id=txtProblemDetail

${BtnOK}        //*[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton"]

${BtnOpenJob}       //*[@ng-click="addJobOnSite(2)"]




