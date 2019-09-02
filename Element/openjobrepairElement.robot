***Settings***
Library        Selenium2Library 
Library        BuiltIn

*** Variables ***
${MenuRepairjobmanagement}     //*[contains(text(), "Repair Job Management")]
${Submenujobrepair}            //*[contains(text(), "Job Repair")] 
${BtnEdit}          //*[contains(text(), "Edit")]
${BtnNewjob}        //*[contains(text(), "New Job")]

############ Job Repairเพิ่ม Job Repair ############
${SelectServiceOrderType}     JobRepair_AddServicesOrderType
${SelectServiceType}          JobRepair_AddServiceType
 


##   Input Text css=input#lst-ib.gsfi element locator css
##   Input Text xpath=//*[@id="lst-ib"] element locator xpath