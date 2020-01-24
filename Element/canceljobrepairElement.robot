***Settings***
Library        Selenium2Library 
Library        BuiltIn

*** Variables ***
####### เข้าเมนู Repair Job #########
${MenuRepairjobmanagement}     //*[contains(text(), "Repair Job Management")]
${Submenujobrepair}            //*[contains(text(), "Job Repair")] 
${BtnEdit}          //*[contains(text(), "Edit")]
${BtnNewjob}        //*[contains(text(), "New Job")]

############ Cancel Job Repair  ############
${Loading}              //div[@class="overlay"]
${SelectStatus}            JobRepair_SearchJobStatus
${BtnSearchJob}         //button[@ng-click="JobRepair_Search(0)"]
${BtnCancel}            //button[@ng-show="JobRepair_EditIsShowCancelJob"]
${BtnCancelConfirm}     //button[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton"]



