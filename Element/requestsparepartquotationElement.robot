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
${BtnEdit}        xpath=(//*[@ng-click="JobRepair_Edit(dataItem)"])[1]
${AdvanceSearch}         //*[@data-target="#adv_collapsible"]
${RepairAction}         //*[@class="k-multiselect-wrap k-floatwrap"]
${RepairActionOpenJob}      xpath=(.//*[normalize-space(text()) and normalize-space(.)='Create Job'])[2]/following::li[1]

############ Request Spare Part Quotation  ############

${TabServicesCharge}         //*[@ng-href="#/servicesCharge"] 
${BtnAddServicesCharge}         //*[@ng-click="add()"]
${SelectServiceType}            //*[@ng-model="tab_chg_add_Charges"]
${TextServicesChargeDetail}         //*[@ng-model="tab_chg_add_Detail"]

${TextPricePer}            xpath=(//*[@class='k-link'])[43]
${TextDiscount}         xpath=(//*[@class='k-formatted-value akow-require-field akow-decimal-field ng-pristine ng-untouched ng-valid k-input'])[3]
${BtnSaveAddServicesCharge}         //*[@ng-click="tab_chg_add_Save()"]
${BtnOKServicesCharge}      //*[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton2 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton3 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton4 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton5 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton6 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton7 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton8 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton9 btn bg-blue-gradient akow-msgbox-okbutton"]


${TabSparePart}          //*[@ng-href="#/sparePart"] 
${BtnSearchSparePart}         //*[@ng-click="SparePart_SearchPopupPartModel()"]
${SelectSparePart}          xpath=(.//*[normalize-space(text()) and normalize-space(.)='ใช้งาน'])[1]/following::span[2]    #หาใช้งาน Record แรกเจอ
${BtnAddSparePart}          //*[@ng-click="SparePart_Add()"]
${PopAddSuccess}      //*[contains(text(), 'เพิ่มข้อมูล')] 
${BtnOK}            xpath=(//button[@class="akow-msgbox-okbutton2 btn bg-blue-gradient akow-msgbox-okbutton" ])[0]

##############สำตัญ
#### กรณีเพิ่ม Service Charge
${BtnAddSparePartOK}        xpath=(//*[@class='akow-msgbox-message'])[3]/following::button[1]
### กรณีไม่เพิ่ม Service Charge
${BtnAddSparePartOKNotServiceCharge}         //*[@class='akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton']
${BtnAddSpare2PartOKNotServiceCharge}        //*[@class='akow-msgbox-okbutton2 btn bg-blue-gradient akow-msgbox-okbutton']

${BtnEditAfterAddServiceCharge}      //*[contains(text(), "Edit")] 
${CheckboxtoQuotation1}      //*[@class='chkGrid ng-pristine ng-untouched ng-valid']
${CheckboxtoQuotation2}      xpath=(//*[@class='chkGrid ng-pristine ng-untouched ng-valid'])[1]
${BtnRequestTo}             //*[@class="btn btn-primary dropdown-toggle"]
${BtnRequestToQuotation}       xpath=(.//*[normalize-space(text()) and normalize-space(.)='Request to'])[1]/following::a[2]

############## Pop up Quatation
####### กรณีเพิ่ม Service charge
${BtnConfirmCaseServiceCharge}      //*[@class='akow-msgbox-okbutton3 btn bg-blue-gradient akow-msgbox-okbutton']
####### กรณีไม่เพิ่ม Service Charge
${BtnConfirmRequestToQuotation}        //*[@class='akow-msgbox-okbutton2 btn bg-blue-gradient akow-msgbox-okbutton']
${BtnConfirmRequestToQuotation2Part}         //*[@class='akow-msgbox-okbutton3 btn bg-blue-gradient akow-msgbox-okbutton']

${IncreaseSparePart}        xpath=(.//*[normalize-space(text()) and normalize-space(.)='จำนวน :'])[1]/following::span[5]
${TextNumber}               xpath=(//*[@class='k-formatted-value akow-int-field k-input'])[0]








#$x(".//*[contains(@class,'btn btn-primary akow-savebutton')]")

#xpath=(//*[@aria-activedescendant='bb430c04-1489-4940-9d7e-cab6cc3df136'])[0]
