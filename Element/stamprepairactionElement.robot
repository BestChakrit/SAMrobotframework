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

############ Stamp Repair Action  ############
${TabRepairAction}          //*[@ng-href="#/repairAction"] 
${BtnAddAction}             //*[@ng-click="add()"]
${Proceed}              //*[@ng-change="actionChange()"]
${BtnAddRepairAction}       //*[@ng-click="tab_rep_AddRepairAction()"]
${Operator}                 //*[@ng-model="tab_rep_add_Engineer"]
${BtnOK}            //*[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton"]




#$x(".//*[contains(@class,'btn btn-primary akow-savebutton')]")
#$x('//*[@class="k-list-container k-popup k-group k-reset"]')



