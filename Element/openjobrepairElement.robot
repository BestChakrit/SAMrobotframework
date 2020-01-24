***Settings***
Library        Selenium2Library 
Library        BuiltIn

*** Variables ***
${MenuRepairjobmanagement}     //*[contains(text(), "Repair Job Management")]
${Submenujobrepair}            //*[contains(text(), "Job Repair")] 
${BtnEdit}          //*[contains(text(), "Edit")]
${BtnNewjob}        //*[contains(text(), "New Job")]

############ Job Repairเพิ่ม Job Repair ############
${Loading}              //div[@class="overlay"]
${SelectServiceOrderType}     JobRepair_AddServicesOrderType
${SelectServiceType}          JobRepair_AddServiceType
${TxtSerial}       JobRepair_AddMasEquipSerialNumber
${TxtProblem}       JobRepair_AddProblemDetail
${TxtEquipConditionDetail}    JobRepair_AddEquipConditionDetail



#xpath=(.//*[normalize-space(text()) and normalize-space(.)='ท่านต้องการ เปิดงานทันที ใช่หรือไม่?!'])[10]/following::button[1]
${BtnOpenJobOK}          xpath=(.//*[normalize-space(text()) and normalize-space(.)='ท่านต้องการ เปิดงานทันที ใช่หรือไม่?!'])[3]/following::button[1]
${BtnSearchSerial}            //*[@ng-click='JobRepair_AddPopupMasEquipSerialNumber()']
${BtnOKSerial}                //button[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton2 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton3 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton4 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton5 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton6 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton7 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton8 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton9 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton10 btn bg-blue-gradient akow-msgbox-okbutton"]
${BtnOKSerial2Round}            xpath=(.//*[normalize-space(text()) and normalize-space(.)='ไม่พบข้อมูลอุปกรณ์'])[5]/following::button[1]

${TxtBrand}         JobRepair_AddMasEquipBrand
${TxtProduct}       JobRepair_AddMasEquipProduct
${TxtCustomer}      JobRepair_AddCusName

${BtnSearchCustomer}          //*[@ng-click='JobRepair_AddPopupCusName()']
${SelectrowCustomer}          //*[contains(text(), "SVOA-C000001")]

${WarrantyExpireDate}         JobRepair_AddMasEquipWarrantyExpireDate
${TrnEquipWarrantyStatusID}     JobRepair_AddTrnEquipWarrantyStatusID
${TrnEquipWarrantySourceID}     JobRepair_AddTrnEquipWarrantySourceID

${BtnOpenJob}                 //*[@ng-click="JobRepair_AddSave(2)"]


${TxtProductSerie}                 txtModelName
${BtnProductSearchSerie}             //*[@ng-click="getSerialNumberByCriteria()"]
${SelectrowProductSerie}        //*[contains(text(), "2K9PB2S")]  
${BtnOpenJobSuccess}          //button[@class="akow-msgbox-okbutton3 btn bg-blue-gradient akow-msgbox-okbutton"]
            

${Submenujobassignment}        //a[@href="http://samsvoatest.ar.co.th/JobRepairSDM/Index"]   
${Btnassign}                    //*[@ng-click="JobRepairSDM_SearchPopupAssign(dataItem,10)"]
${SelectSection}              //*[@ng-model="popup_SectionID"]
${TxtEngineer1}               xpath=(.//*[normalize-space(text()) and normalize-space(.)='*'])[3]/following::input[1]
${Btnsaveassign}              //button[@ng-click="Save()"]

# ${BtnEdit}                    //*[@ng-click="JobRepair_Edit(dataItem)"]
${BtnPrint}                     //button[@ng-click="JobRepair_EditSave(1)"]
${CheckboxSelectAllPrint}       print_checkAll
${BtnGenerate}                  //*[@ng-click="Submit()"]
${BtnDownload}                  //button[@ng-click="DownLoad()"]
${BtnPrintConfirm}              //*[@onclick="document.getElementById('PDFtoPrint').focus(); document.getElementById('PDFtoPrint').contentWindow.print();"]

${ModalBody}                  //*[@class="modal fade ng-isolate-scope app-modal-window-job-repair in"]



##   Input Text css=input#lst-ib.gsfi element locator css
##   Input Text xpath=//*[@id="lst-ib"] element locator xpath