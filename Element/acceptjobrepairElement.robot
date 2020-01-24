***Settings***
Library        Selenium2Library 
Library        BuiltIn

*** Variables ***
####### เข้าเมนู Repair Job #########
${MenuRepairjobmanagement}     //*[contains(text(), "Repair Job Management")]
${Submenumyjobassignment}            //*[@id="jobrepairassignindex"]

############ Accept Job Repair  ############
${Loading}              //div[@class="overlay"]
${SelectStatus}            JobRepairAssign_SearchJobStatus
${BtnSearchJob}             //*[@ng-click="JobRepairAssign_Search(0)"]
${BtnAcceptJob}         //*[@class="btn btn-primary akow-editbutton"]
${BtnAcceptJobConfirm}      //*[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton"]
${BtnRejectJob}        //*[@class="btn btn-danger akow-editbutton"]
${BtnRejectJobConfirm}      //*[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton"]





#$x(".//*[contains(@class,'btn btn-primary akow-savebutton')]")




