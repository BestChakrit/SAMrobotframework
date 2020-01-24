***Settings***
Library        Selenium2Library 
Library        BuiltIn

*** Variables ***
####### เข้าเมนู Repair Job #########
${MenuQuotationCenter}     //*[contains(text(), "Quotation Center")]
${SubmenuQuotation}            id=quotationcenterindex

${Loading}              //div[@class="overlay"]
${BtnAccept}        //*[@ng-click="AcceptQuotation(dataItem)"]
${BtnAcceptConfirm}        //*[@class='akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton'] 
${BtnAcceptOK}           //*[@class='akow-msgbox-okbutton2 btn bg-blue-gradient akow-msgbox-okbutton']
${BtnEdit}         xpath=(//*[@ng-click="Edit(dataItem)"])

############  Quotation  ############
${BtnAddServicesCharge}       //*[@ng-click="AddProduct()"]
${SelectList}       //*[@ng-change="ChargesChange()"]
${Price}       xpath=(.//*[normalize-space(text()) and normalize-space(.)='ราคาต่อหน่วย :'])[1]/following::span[2]
${Discount}      xpath=(.//*[normalize-space(text()) and normalize-space(.)='ส่วนลด :'])[1]/following::span[2]
${BtnSave}          //*[@ng-click="tab_prd_add_Save()"]
${BtnAddOK}         xpath=(.//*[normalize-space(text()) and normalize-space(.)='ผลการทำงาน'])[2]/following::button[1]
${BtnCustomerConfirmed}       //*[@ng-click="ConfirmQuotation()"]

#### เลือกสถานะ ลูกค้ายืนยัน
${RadioConfirmedFix}      xpath=(//*[@ng-model='popup_quotation_cfm_StatusID'])[3]
${RadioWaitingConfirmed}     xpath=(//*[@ng-model='popup_quotation_cfm_StatusID'])[1]


${SelectCause}          //*[@ng-model="popup_quotation_cfm_CancelCauseID"]
${PaymentDate}         //*[@id="popup_quotation_cfm_PaymentDate"]
${BtnConfirmFix}        //*[@ng-click="popup_quotation_cfm_Save()"]
${BtnConfirmFixOK}       //*[@class="akow-msgbox-okbutton2 btn bg-blue-gradient akow-msgbox-okbutton"]

${BtnOK}       //*[@class="akow-msgbox-okbutton1 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton2 btn bg-blue-gradient akow-msgbox-okbutton" or @class="akow-msgbox-okbutton3 btn bg-blue-gradient akow-msgbox-okbutton"]

### Add Services Charge Cancel by Custotmer (กด Accept ด้วย)
${BtnOKCSS}       css=button.akow-msgbox-okbutton3.btn.bg-blue-gradient.akow-msgbox-okbutton

${RadioConfirmedCancel}         xpath=(//*[@ng-model='popup_quotation_cfm_StatusID'])[4]      

${BtnEngineerCancel}        //*[@ng-click="EngineerCancel()"]
${BtnEngineerCancelConfirm}         css=button.akow-msgbox-okbutton4.btn.bg-blue-gradient.akow-msgbox-okbutton


${BtnOK1}       css=button.akow-msgbox-okbutton1.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK2}       css=button.akow-msgbox-okbutton2.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK3}       css=button.akow-msgbox-okbutton3.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK4}       css=button.akow-msgbox-okbutton4.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK5}       css=button.akow-msgbox-okbutton5.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK6}       css=button.akow-msgbox-okbutton6.btn.bg-blue-gradient.akow-msgbox-okbutton
${BtnOK7}       css=button.akow-msgbox-okbutton7.btn.bg-blue-gradient.akow-msgbox-okbutton


${CheckboxWaitingQuotation}       xpath=(//input[@type='checkbox'])[3]
${CheckboxCustomerCanceled}       xpath=(//input[@type='checkbox'])[10]
${BtnSearch}         //*[@ng-click="getQuotationCenter()"]
${BtnEditServicesCharge}        xpath=(.//*[normalize-space(text()) and normalize-space(.)='ค่าบริการ'])[1]/following::button[1]
${Add์NumberServiceCharge}       xpath=(.//*[normalize-space(text()) and normalize-space(.)='ราคาต่อหน่วย :'])[1]/following::span[5]
${AddNumberDiscount}        xpath=(.//*[normalize-space(text()) and normalize-space(.)='ส่วนลด :'])[1]/following::span[5]
${BtnEdit_Save}      //*[@ng-click="tab_prd_edit_Save()"]
${BtnEditTranspot}       xpath=(.//*[normalize-space(text()) and normalize-space(.)='ค่าขนส่ง'])[1]/following::button[1]


${BtnCancelPart}        //*[@class="btn btn-warning akow-deletebutton"]

### ติดตามลูกค้า
${TabFollowCustomer}        //*[@ng-click="GetCustomerTrackList()"]
${BtnAddTrack}          //*[@ng-click="AddTrack()"]

### ไม่สามารถเลือก ข้อมูบการดำเนินการได้ ###

${BtnWaitingStock}        //*[@ng-click="WaitingStock()"]
${BtnCreateSPO}         //*[@ng-click="CreateSPO()"]
${BtnConfirmSPO}        //*[@ng-click="confirmCreateSPO()"]


${SentMailQuotation}        //*[@ng-click="SendQuotation()"]
${TextMailTo}       //*[@ng-model="popup_quotation_Email_SentEmailTo"]
${BtnSentMail}       //*[@ng-click="popup_quotation_Email_Save()"]

${Print}        //*[@ng-click="Print()"]
#$x(".//*[contains(@class,'btn btn-primary akow-savebutton')]")

#xpath=(//*[@aria-activedescendant='bb430c04-1489-4940-9d7e-cab6cc3df136'])[0]
