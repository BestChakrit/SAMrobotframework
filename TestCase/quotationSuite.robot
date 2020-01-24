***Settings***
Documentation     Request Spare Part Quotation
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/Quotation/quotationKeyword.robot
Resource       ../Keyword/OpenJobRepair/openjobrepairKeyword.robot
Resource       ../Keyword/RequestSparePartQuotation/requestsparepartquotationKeyword.robot

***Test Cases***
TC-047 : ทำการ Accept ใบ Quotation
    Accept Quotation
    [Documentation]     ทำการ Accept ใบ Quotation
    [Tags]         positive      
    [Teardown]     Close Browser

TC-048 : เพิ่มค่าบริการแล้วยืนยันโดยลูกค้า
    Add Services Charge Confirm by Custotmer
    [Documentation]     เพิ่มค่าบริการแล้วยืนยันโดยลูกค้า
    [Tags]         positive      
    [Teardown]     Close Browser

TC-049 : เพิ่มค่าบริการแล้วยกเลิกโดยลูกค้า
    Add Services Charge Cancel by Custotmer
    [Documentation]     เพิ่มค่าบริการแล้วยกเลิกโดยลูกค้า
    [Tags]         positive      
    [Teardown]     Close Browser

TC-050 : เพิ่มค่าบริการแล้วยกเลิกโดย Engineer
    Add Services Charge Cancel by Engineer
    [Documentation]     เพิ่มค่าบริการแล้วยกเลิกโดย Engineer
    [Tags]         positive      
    [Teardown]     Close Browser

TC-051 : เพิ่มค่าบริการและค่าขนส่ง แล้วยืนยันโดยลูกค้า
    Add Services Charge and Transport Confirm by Customer
    [Documentation]     เพิ่มค่าบริการและค่าขนส่ง แล้วยืนยันโดยลูกค้า
    [Tags]         positive      
    [Teardown]     Close Browser

TC-052 : เพิ่มค่าบริการและค่าขนส่ง แล้วยกเลิกโดยลูกค้า
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Add Services Charge and Transport Cancel by Customer
    [Documentation]     เพิ่มค่าบริการและค่าขนส่ง แล้วยกเลิกโดยลูกค้า
    [Tags]         positive      
    [Teardown]     Close Browser

TC-053 : เพิ่มค่าบริการและค่าขนส่ง และยกเลิกโดยลูกค้า แล้วทำการแก้ไขค่าบริการ
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Add Services Charge and Transport Cancel by Customer And Edit Services Charge
    [Documentation]     เพิ่มค่าบริการและค่าขนส่ง และยกเลิกโดยลูกค้า แล้วทำการแก้ไขค่าบริการ
    [Tags]         positive      
    [Teardown]     Close Browser

TC-054 : เพิ่มค่าบริการและค่าขนส่ง และยกเลิกโดยลูกค้า แล้วทำการแก้ไขค่าขนส่ง
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Add Services Charge and Transport Cancel by Customer And Edit Transport
    [Documentation]     เพิ่มค่าบริการและค่าขนส่ง และยกเลิกโดยลูกค้า แล้วทำการแก้ไขค่าขนส่ง
    [Tags]         positive      
    [Teardown]     Close Browser

TC-056 : ทำการรอยืนยันใบเสนอราคาจากลูกค้า
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Waiting to confirm the quotation from customer
    [Documentation]     ทำการรอยืนยันใบเสนอราคาจากลูกค้า
    [Tags]         positive      
    [Teardown]     Close Browser

TC-057 : ทำการรอยืนยันใบเสนอราคาจากลูกค้าและทำการ Cancel Part ออก
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Waiting to confirm the quotation from customer and Cancel Part
    [Documentation]     ทำการรอยืนยันใบเสนอราคาจากลูกค้าและทำการ Cancel Part ออก
    [Tags]         positive      
    [Teardown]     Close Browser
 


TC-058 : ทำการ Follow up Customer
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Follow up Customer
    [Documentation]     ทำการ Follow up Customer
    [Tags]         positive      
    [Teardown]     Close Browser


TC-059 : เพิ่มค่าบริการ ถูกยืนยันโดยลูกค้า แล้วส่งไปยัง Stock กลาง
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Add Services Charge Confirm by Customer and sent to Stock Center
    [Documentation]     เพิ่มค่าบริการ ถูกยืนยันโดยลูกค้า แล้วส่งไปยัง Stock กลาง
    [Tags]         positive      
    [Teardown]     Close Browser


TC-060 : เพิ่มค่าบริการ ถูกยืนยันโดยลูกค้า แล้วส่งไปยัง SPO
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Add Services Charge Confirm by Customer and sent to SPO
    [Documentation]     เพิ่มค่าบริการ ถูกยืนยันโดยลูกค้า แล้วส่งไปยัง SPO
    [Tags]         positive      
    [Teardown]     Close Browser


TC-061 : ยกเลิกใบ Quotation 1 ครั้ง และยืนยัน ใบ Quotation 1 ครั้งโดยมีค่าบริการอย่างเดียว
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Add Services Charge Cancel by Custotmer
    Close Browser
    
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Add Services Charge Confirm by Custotmer(Have BtnAccept)

    [Documentation]     ยกเลิกใบ Quotation 1 ครั้ง และยืนยัน ใบ Quotation 1 ครั้งโดยมีค่าบริการอย่างเดียว
    [Tags]         positive      
    [Teardown]     Close Browser


TC-062 : ยกเลิกใบ Quotation 1 ครั้ง และยืนยัน ใบ Quotation 1โดยมีค่าบริการและค่าขนส่ง
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Add Services Charge Cancel by Custotmer
    Close Browser

    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Add Services Charge and Transport Confirm by Customer

    [Documentation]     ยกเลิกใบ Quotation 1 ครั้ง และยืนยัน ใบ Quotation 1โดยมีค่าบริการและค่าขนส่ง
    [Tags]         positive      
    [Teardown]     Close Browser

TC-063 : ยกเลิกใบ Quotation 2 ครั้ง โดยมีค่าบริการอย่างเดียว
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Add Services Charge Cancel by Custotmer
    Close Browser

    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Add Services Charge Cancel by Custotmer
    
    [Documentation]     ยกเลิกใบ Quotation 2 ครั้ง โดยมีค่าบริการอย่างเดียว
    [Tags]         positive      
    [Teardown]     Close Browser

TC-064 : ยกเลิกใบ Quotation 2 ครั้ง โดยมีค่าบริการและค่าขนส่ง
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Add Services Charge and Transport Cancel by Customer
    Close Browser

    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser
    Add Services Charge and Transport Cancel by Customer

    [Documentation]     ยกเลิกใบ Quotation 2 ครั้ง โดยมีค่าบริการและค่าขนส่ง
    [Tags]         positive      
    [Teardown]     Close Browser

TC-065 : Request Quotation มา 2 ครั้ง และทำการยืนยันทั้ง 2 โดยมีค่าบริการอย่างเดียว
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser

    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser

    Add Services Charge Confirm by Custotmer(Have BtnAccept)
    Close Browser

    Add Services Charge Confirm by Custotmer(Have BtnAccept)

    [Documentation]     Request Quotation มา 2 ครั้ง และทำการยืนยันทั้ง 2 โดยมีค่าบริการอย่างเดียว
    [Tags]         positive      
    [Teardown]     Close Browser

TC-066 : Request Quotation มา 2 ครั้ง และทำการยืนยันทั้ง 2 ครั้งมีค่าบริการและค่าขนส่ง
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser

    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser

    Add Services Charge and Transport Confirm by Customer
    Close Browser

    Add Services Charge and Transport Confirm by Customer

    [Documentation]     Request Quotation มา 2 ครั้ง และทำการยืนยันทั้ง 2 ครั้งมีค่าบริการและค่าขนส่ง
    [Tags]         positive      
    [Teardown]     Close Browser

TC-067 : ทำการส่งเมลใบเสนอราคา(มีปัญหาด้านเซิฟเวอร์ไม่สามารถส่งเมล์ได้)
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Quotation By Don't Add Services Charge 
    Close Browser

    Sent Mail From Quotation
    [Documentation]     ทำการส่งเมลใบเสนอราคา
    [Tags]         positive      
    [Teardown]     Close Browser


TC-069 : ทำการปริ้นใบเสนอราคา
    Print Quotaion 
    [Documentation]     ทำการปริ้นใบเสนอราคา
    [Tags]         positive      
    [Teardown]     Close Browser


