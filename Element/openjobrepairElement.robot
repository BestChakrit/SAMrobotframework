***Settings***
Library        Selenium2Library 
Library        BuiltIn

*** Variables ***
${MenuRepairjobmanagement}     //*[contains(text(), "Repair Job Management")]
${Submenujobrepair}            //*[contains(text(), "Job Repair")] 
${BtnEdit}          //*[contains(text(), "Edit")]
${BtnNewjob}        //*[contains(text(), "New Job")]

############ Job Repairเพิ่ม Job Repair ############
${SelectServiceOrderType}     JobRepair_AddServicesOrderType
${SelectServiceType}          JobRepair_AddServiceType
${TxtSerial}       JobRepair_AddMasEquipSerialNumber
${TxtProblem}       JobRepair_AddProblemDetail
${TxtEquipConditionDetail}    JobRepair_AddEquipConditionDetail


${BtnSearchSerial}            //*[@ng-click='JobRepair_AddPopupMasEquipSerialNumber()']
${BtnOKSerial}                //button[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton"]
${BtnSearchCustomer}          //*[@ng-click='JobRepair_AddPopupCusName()']
${SelectrowCustomer}          //*[contains(text(), "SVOA-C000001")]

${TrnEquipWarrantyStatusID}     JobRepair_AddTrnEquipWarrantyStatusID
${TrnEquipWarrantySourceID}     JobRepair_AddTrnEquipWarrantySourceID

${BtnOpenJob}                 //*[@ng-click="JobRepair_AddSave(2)"]
${BtnOpenJobOK}               //button[@class="akow-msgbox-okbutton2 btn bg-blue-gradient akow-msgbox-okbutton"]

${TxtProductSerie}                 txtModelName
${BtnProductSearchSerie}             //*[@ng-click="getSerialNumberByCriteria()"]
${SelectrowProductSerie}        //*[contains(text(), "2K9PB2S")]  
${BtnOpenJobSuccess}          //button[@class="akow-msgbox-okbutton3 btn bg-blue-gradient akow-msgbox-okbutton"]
            

${Submenujobassignment}        //a[@href="http://samsvoatest.ar.co.th/JobRepairSDM/Index"]   
${Btnassign}                    //*[@ng-click="JobRepairSDM_SearchPopupAssign(dataItem,10)"]
${SelectSection}              //*[@ng-model="popup_SectionID"]
${TxtEngineer1}               //*[@class="k-widget k-combobox k-header akow-require-field ng-valid ng-touched ng-valid-parse ng-dirty"]
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