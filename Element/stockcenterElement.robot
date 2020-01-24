***Settings***
Library        Selenium2Library 
Library        BuiltIn

*** Variables ***
####### เข้าเมนู Repair Job #########
${MenuPartManagement}     //*[contains(text(), "Part Management")]
${Submenupartmanagement}            id=partmanagementindex
${MenuInventory}        //*[@href="http://samsvoatest.ar.co.th/Home/Inventory"]
##### Inventory #########################################################################################
${Inventorypartmanagement}      //*[contains(text(), "Part Management")]
${InventoryBorrowList}     //*[@href="http://inventoryuat.ar.co.th/PartManagement/BorrowList"]
${InvenJobNumber}       //*[@ng-model="borrow_criteria_JobID"]
${BtnSearchInven}       //*[@ng-click="Search()"]
${BtnManageProduct}         //*[@ng-click="ManagePart(dataItem)"]
${IncreasePart}       //div[@id='gridBorrowManage']/div[2]/table/tbody/tr/td[8]/span/span/span/span/span
${BtnSaveInventory}       //*[@ng-click="Save()"]

${MenuSAM}      //*[@href="http://inventoryuat.ar.co.th/Home/SAM"]
#########################################################################################################

${Loading}              //div[@class="overlay"]
${Submenupartitem}       id=sparepartitemindex
${Submenuimportsparepart}       id=sparepartitemimportparts

${DateTime}        PartManagement_SearchStartDate
${BtnSearch}       //*[@ng-click="PartManagement_Search(0)"]
${BtnAccept}        //*[@ng-click="PartManagement_SearchAccept(dataItem)"]
${BtnAcceptConfirm}        //*[@class='akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton'] 
${BtnAcceptOK}           //*[@class='akow-msgbox-okbutton2 btn bg-blue-gradient akow-msgbox-okbutton']
${BtnEdit}         xpath=(//*[@ng-click="PartManagement_SearchEdit(dataItem)"])

############  Stock Center  ############
${BtnEditPart}          xpath=(.//*[normalize-space(text()) and normalize-space(.)='null, -'])[1]/following::button[1]
${BtnEditPart2}         xpath=(.//*[normalize-space(text()) and normalize-space(.)='null, -'])[2]/following::button[1]
${TextSerial}       PartRequestManagement_EditSerialNumberIn
${TextLocator}      PartRequestManagement_EditLocator
${TextIMEI1}        PartRequestManagement_EditReferNumber01
${PartStatus}         PartRequestManagement_EditStatus
${BtnSave}          //*[@ng-click="PartRequestManagement_EditSave()"]
${BtnMachineArrived}       //*[@ng-click="PartManagement_EditMachineArrived()"]
${BtnCreateSPO}      //*[@ng-click="PartManagement_EditCreateSpo()"]
${BtnConfirmSPO}       //*[@ng-click="confirmCreateSPO()"]
${CheckboxSparepart}        xpath=(.//*[normalize-space(text()) and normalize-space(.)='หมายเหตุ'])[1]/following::input[1]
${BtnSenttoInventory}       //*[@ng-click="PartManagement_EditSendToInventory()"]
${BtnOK}       //*[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton2 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton3 btn bg-blue-gradient akow-msgbox-okbutton"]
${BtnCancelBorrow}         //*[@ng-click="CancelPopup()"]
${BtnCancelBorrowConfirm}       //*[@ng-click="Cancel()"]
${BtnReturnPartConplete}        //*[@ng-click="PartManagement_EditReturnPartComplete()"]
${BtnSearchPart}       //*[@ng-click="PartRequestManagement_EditPopupPartNumberIn()"]
${SelectPartB}         xpath=(.//*[normalize-space(text()) and normalize-space(.)='Lava-Ais'])[11]/preceding::span[2]
${CheckboxselectedDetail}       selectedDetail
${BtnPrintBorrow}        //*[@ng-click="PartManagement_SearchPrintBorrowMany()"]
${StatusSparePartReturn}        PartManagement_SearchStatus_1
${BtnView}         //*[@ng-click="PartManagement_SearchView(dataItem)"]
${BtnPrint}         //*[@ng-click="JobRepair_EditSave(1)"]
${CheckboxPrintAccount}       xpath=(.//*[normalize-space(text()) and normalize-space(.)='Test Print'])[1]/following::input[1]
${BtnGenerate}         //*[@ng-click="Submit()"]
${BtnPrintConfirm}      //*[@onclick="document.getElementById('PDFtoPrint').focus(); document.getElementById('PDFtoPrint').contentWindow.print();"]

${BtnAddSparePartItem}       //*[@ng-click="addSparePartItem()"]
${TextPartNumber}        id=add_txtPartNumber
${BtnSearchBrand}       //*[@ng-click="openBrandPopup()"]
${SelectPart}       xpath=(.//*[normalize-space(text()) and normalize-space(.)='ใช้งาน'])[13]/preceding::span[3]
${TextPartDetail}        //*[@ng-model="addDesc"]
${TextRetail}       xpath=(.//*[normalize-space(text()) and normalize-space(.)='Retail'])[1]/following::span[2]

${BtnSaveSparePart}       //*[@ng-click="saveSparepartItem()"]

${BtnBrowse}        id=ImportParts_Files
${BtnUpload}        //*[@class="k-button k-upload-selected"]
${ResultText}       xpath=(.//*[normalize-space(text()) and normalize-space(.)='ผลการทำงาน'])[2]/following::div[5]
${ResultBUF}     xpath=(.//*[normalize-space(text()) and normalize-space(.)='Job Number :'])[2]/following::b[1]



######## CheckBox ########
${Checkbox2}      //div[@id='gridWebPartManagementSubEdit']/div[2]/table/tbody/tr[2]/td[6]/input
${CheckboxPart2and1piece}      xpath=(.//*[normalize-space(text()) and normalize-space(.)='Edit'])[2]/following::input[1]


${BtnOK1}       css=button.akow-msgbox-okbutton1.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK2}       css=button.akow-msgbox-okbutton2.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK3}       css=button.akow-msgbox-okbutton3.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK4}       css=button.akow-msgbox-okbutton4.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK5}       css=button.akow-msgbox-okbutton5.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK6}       css=button.akow-msgbox-okbutton6.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK7}       css=button.akow-msgbox-okbutton7.btn.bg-blue-gradient.akow-msgbox-okbutton







#$x(".//*[contains(@class,'btn btn-primary akow-savebutton')]")

#xpath=(//*[@aria-activedescendant='bb430c04-1489-4940-9d7e-cab6cc3df136'])[0]
