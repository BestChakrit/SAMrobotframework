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
${BtnEdit}              xpath=(//*[@ng-click='JobRepair_Edit(dataItem)'])[5] 

############ Stamp Repair Action  ############
${TabSparePart}          //*[@ng-href="#/sparePart"] 
${BtnSearchSparePart}         //*[@ng-click="SparePart_SearchPopupPartModel()"]
${SelectSparePart}          //*[contains(text(), "ใช้งาน")]    #หาใช้งาน Record แรกเจอ
${BtnAddSparePart}          //*[@ng-click="SparePart_Add()"]

${PopAddSuccess}      //*[contains(text(), 'เพิ่มข้อมูล')] 
${BtnOK}            //*[@class='akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton']



#$x(".//*[contains(@class,'btn btn-primary akow-savebutton')]")
#$x('//*[@class="k-list-container k-popup k-group k-reset"]')

#$x(".//*[@ng-click='JobRepair_Edit(dataItem)']")[1]

