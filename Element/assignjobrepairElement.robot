***Settings***
Library        Selenium2Library 
Library        BuiltIn

*** Variables ***
####### เข้าเมนู Repair Job #########
${MenuRepairjobmanagement}     //*[contains(text(), "Repair Job Management")]
${Submenujobassignment}            //*[@id="jobrepairsdmindex"]
${BtnAssign}          xpath=(//*[@ng-click="JobRepairSDM_SearchPopupAssign(dataItem,10)"])[3]
${CheckboxRecord1}      xpath=(//*[@name='selectedDetail'])[1]
${CheckboxRecord2}      xpath=(//*[@name='selectedDetail'])[2]
${BtnAssignTo}          //*[@ng-click="JobRepairSDM_SearchPopupAssign()"]

${BtnReassign}      xpath=(.//*[normalize-space(text()) and normalize-space(.)='Manage'])[1]/following::button[2]


############ Assign Job Repair  ############
${Loading}              //div[@class="overlay"]
${SelectStatus}            JobRepairSDM_SearchJobStatus
${BtnSearchJob}         //button[@ng-click="JobRepairSDM_Search(0)"]

${SelectBranch}         //select[@ng-model="popup_BuID"]
${SelectSection}        //select[@ng-model="popup_SectionID"]
${SelectChoice}       xpath=(.//*[normalize-space(text()) and normalize-space(.)='*'])[3]/following::span[4]
${SelectEngineer}     xpath=(.//*[normalize-space(text()) and normalize-space(.)='Praridol Prakopkeat'])[4]/preceding::li[1]
${Engineer1}            xpath=(.//*[normalize-space(text()) and normalize-space(.)='*'])[3]/following::input[1]


${Note}         txtNoteToEngineer
${BtnSave}              //button[@ng-click="Save()"]
${BtnOK}            xpath=(.//*[normalize-space(text()) and normalize-space(.)='มอบหมายงานเรียบร้อยแล้ว'])[2]/following::button[1]
${BtnOKSelectEngineer}          xpath=(.//*[normalize-space(text()) and normalize-space(.)='มอบหมายงานเรียบร้อยแล้ว'])[2]/following::button[1]



#$x(".//*[contains(@class,'btn btn-primary akow-savebutton')]")



#xpath=(//*[@aria-activedescendant='bb430c04-1489-4940-9d7e-cab6cc3df136'])[0]
