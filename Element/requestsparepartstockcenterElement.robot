***Settings***
Library        Selenium2Library 
Library        BuiltIn

*** Variables ***
####### เข้าเมนู Repair Job #########
${MenuRepairjobmanagement}     //*[contains(text(), "Repair Job Management")]
${Submenujobrepair}            //*[contains(text(), "Job Repair")] 
${Loading}              //div[@class="overlay"]
${SelectStatus}            JobRepair_SearchJobStatus
${BtnSearchJob}         //button[@ng-click="JobRepair_Search(0)"]
${BtnEditStockCenter}        xpath=(//*[@ng-click="JobRepair_Edit(dataItem)"])[1]



############ Request Spare Part Stock Center  ############

${ServiceOrderType}        JobRepair_EditServicesOrderTypeID

${TabServicesCharge}         //*[@ng-href="#/servicesCharge"] 
${BtnAddServicesCharge}         //*[@ng-click="add()"]
${SelectServiceType}            //*[@ng-model="tab_chg_add_Charges"]
${TextServicesChargeDetail}         //*[@ng-model="tab_chg_add_Detail"]

${TextPricePer}            xpath=(//*[@class='k-link'])[43]
${TextDiscount}         xpath=(//*[@class='k-formatted-value akow-require-field akow-decimal-field ng-pristine ng-untouched ng-valid k-input'])[3]
${BtnSaveAddServicesCharge}         //*[@ng-click="tab_chg_add_Save()"]
${BtnOKServicesCharge}      //*[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton2 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton3 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton4 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton5 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton6 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton7 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton8 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton9 btn bg-blue-gradient akow-msgbox-okbutton"]

${BtnAddPartOK}      xpath=(.//*[normalize-space(text()) and normalize-space(.)='เพิ่มข้อมูล 20000373 เรียบร้อยแล้ว.'])[2]/following::button[1]

${TabSparePart}          //*[@ng-href="#/sparePart"] 
${BtnSearchSparePart}         //*[@ng-click="SparePart_SearchPopupPartModel()"]
${SelectSparePart}          //*[contains(text(), "Mobile Phone")]    #หาใช้งาน Record แรกเจอ
${SelectSparePart2}         xpath=(.//*[normalize-space(text()) and normalize-space(.)='ใช้งาน'])[2]/following::td[1]

${BtnAddSparePart}          //*[@ng-click="SparePart_Add()"]
${PopAddSuccess}      //*[contains(text(), 'เพิ่มข้อมูล')] 
${BtnOK}            xpath=(//button[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton2 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton3 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton4 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton5 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton6 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton7 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton8 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton9 btn bg-blue-gradient akow-msgbox-okbutton"]/following::button[1])

${BtnOKPart2}       xpath=(.//*[normalize-space(text()) and normalize-space(.)='เพิ่มข้อมูล 11700094 เรียบร้อยแล้ว.'])[6]/following::button[1]


${BtnTextOK}          xpath=(.//*[normalize-space(text()) and normalize-space(.)='ท่านต้องการขอ เบิกรายการอะไหล่ จำนวน 1 ไปยัง Stock กลาง ใช่หรือไม่!?'])[3]/following::button[1]
${BtnTextOK2Part}       //*[contains(text(),'OK')]/following::button[2]    
################# สำคัญ


#### xpath=(.//*[normalize-space(text()) and normalize-space(.)='ท่านต้องการขอ เบิกรายการอะไหล่ จำนวน 2 ไปยัง Stock กลาง ใช่หรือไม่!?'])[1]/following::button[1]

${BtnEditAfterAddServiceCharge}      //*[contains(text(), "Edit")] 
${CheckboxtoQuotation1}      //*[@class='chkGrid ng-pristine ng-untouched ng-valid' or @class='chkGrid ng-pristine ng-valid ng-touched']
${CheckboxtoQuotation2}      xpath=(//*[@class='chkGrid ng-pristine ng-untouched ng-valid'])[1]

${BtnRequestTo}             //*[@class="btn btn-primary dropdown-toggle"]
${BtnRequestToQuotation}        xpath=(//*[@ng-click='SparePart_SearchChangeRequestTo(item.ID)'])[1] 
${BtnRequestToStockCenter}         xpath=(//*[@ng-click='SparePart_SearchChangeRequestTo(item.ID)'])[1] 
${BtnConfirmRequestToQuotation}         //*[@class='akow-msgbox-cancelbutton1 btn bg-red-gradient akow-msgbox-cancelbutton']




${IncreaseSparePart}        xpath=(.//*[normalize-space(text()) and normalize-space(.)='จำนวน :'])[1]/following::span[5]

${TextNumber}               xpath=(//*[@class='k-formatted-value akow-int-field k-input'])[0]

${TextComment}          ClaimRequestPartPopup_RemarkEngineer

${BtnRequestClaim}          //*[@ng-click="ClaimRequestPartPopup_Save()"]







#$x(".//*[contains(@class,'btn btn-primary akow-savebutton')]")

#xpath=(//*[@aria-activedescendant='bb430c04-1489-4940-9d7e-cab6cc3df136'])[0]
