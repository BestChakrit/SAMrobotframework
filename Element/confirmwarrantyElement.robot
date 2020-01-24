***Settings***
Library        Selenium2Library 
Library        BuiltIn

*** Variables ***
####### เข้าเมนู Repair Job #########
${MenuRepairjobmanagement}     //*[contains(text(), "Repair Job Management")]
${Submenujobrepair}            //*[contains(text(), "Job Repair")] 
${Loading}              //div[@class="overlay"]
${SelectStatus}            JobRepair_SearchJobStatus
${BtnSearch}            //*[@ng-click="JobRepair_Search(0)"]
${BtnEdit}              //*[@class="btn btn-primary akow-editbutton akow-loading"]


############ Warranty  ############

${BtnSave}              //*[@ng-click="JobRepair_EditSave(2)"]
${TabWarranty}          //*[contains(text(), "Warranty")] 
${StatusWarranty}          JobRepair_TabTrnEquipWarrantyStatusID
${SourceWarranty}           JobRepair_TabTrnEquipWarrantySourceID
${BtnConfirmSave}            //*[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton"]






#$x(".//*[contains(@class,'btn btn-primary akow-savebutton')]")




