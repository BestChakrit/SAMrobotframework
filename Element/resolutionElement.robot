***Settings***
Library        Selenium2Library 
Library        BuiltIn

*** Variables ***
####### เข้าเมนู Repair Job #########
${MenuRepairjobmanagement}     //*[contains(text(), "Repair Job Management")]
${Submenumyjobassignment}            //*[@id="jobrepairassignindex"]

############ Accept Job Repair  ############
${Loading}              //div[@class="overlay"]
${SelectStatusAssign}            JobRepairAssign_SearchJobStatus
${BtnSearchJobAssign}             //*[@ng-click="JobRepairAssign_Search(0)"]
${BtnAcceptJob}         //*[@class="btn btn-primary akow-editbutton"]
${BtnAcceptJobConfirm}      //*[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton"]
${BtnRejectJob}        //*[@class="btn btn-danger akow-editbutton"]
${BtnRejectJobConfirm}      //*[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton"]
${BtnEdit}          xpath=(.//*[normalize-space(text()) and normalize-space(.)='Accept ยังไม่ดำเนินการ'])[1]/following::button[2]
${TabWarranty}      //*[@ng-href="#/warranty"]
${StatusWarranty}       JobRepairAssign_TabTrnEquipWarrantyStatusVerifyID
${BtnSaveWarranty}          //*[@ng-click="JobRepairAssign_EditSave(2)"]
${TabResolution}        //*[@ng-href="#/resolution"]
${BtnAddResolution}     //*[@ng-click="add()"]
${BtnSearchSymptomCode}        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Symptom Code :'])[1]/following::i[1]
${SelectSymptomCode}       xpath=(.//*[normalize-space(text()) and normalize-space(.)='Lava-Ais'])[18]/preceding::span[1]
${BtnSearchRepairCode}        xpath=(.//*[normalize-space(text()) and normalize-space(.)='Repair Code :'])[1]/following::i[1]
${SelectRepairCode}      xpath=(.//*[normalize-space(text()) and normalize-space(.)='รหัสหลัก'])[1]/preceding::span[2]
${BtnSaveResolution}        //*[@ng-click="tab_res_AddResolution()"]
${R_Resolution}        //*[@class='akow-msgbox-message']
                                
${BtnOK1}       css=button.akow-msgbox-okbutton1.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK2}       css=button.akow-msgbox-okbutton2.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK3}       css=button.akow-msgbox-okbutton3.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK4}       css=button.akow-msgbox-okbutton4.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK5}       css=button.akow-msgbox-okbutton5.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK6}       css=button.akow-msgbox-okbutton6.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK7}       css=button.akow-msgbox-okbutton7.btn.bg-blue-gradient.akow-msgbox-okbutton




#$x(".//*[contains(@class,'btn btn-primary akow-savebutton')]")




