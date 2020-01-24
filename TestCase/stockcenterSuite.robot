***Settings***
Documentation     Stock Center
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/StockCenter/stockcenterKeyword.robot
Resource       ../Keyword/OpenJobRepair/openjobrepairKeyword.robot
Resource       ../Keyword/RequestSparePartStockCenter/requestsparepartstockcenterKeyword.robot

***Test Cases***
TC-070 : ทำการ Accept ใบ Borrow
    Request Part go to Stock Center 1 Part and 1 Piece
    Accept Borrow Stock Center
    [Documentation]     ทำการ Accept ใบ Borrow
    [Tags]         positive      
    [Teardown]     Close Browser


TC-071 : ขอยืมสินค้ามา 1 Part ทำการอนุมิตให้ 1 Part กำหนด Serial อย่างเดียว
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow 1 Part and Accept 1 Part By Define Serial
    [Documentation]     ขอยืมสินค้ามา 1 Part ทำการอนุมิตให้ 1 Part กำหนด Serial อย่างเดียว
    [Tags]         positive      
    [Teardown]     Close Browser

TC-072 : ขอยืมสินค้ามา 1 Part ทำการอนุมิตให้ 1 Part กำหนด Serial และ IMEI
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow 1 Part and Accept 1 Part By Define Serial and IMEI
    [Documentation]     ขอยืมสินค้ามา 1 Part ทำการอนุมิตให้ 1 Part กำหนด Serial และ IMEI
    [Tags]         positive      
    [Teardown]     Close Browser

TC-073 : ขอยืมสินค้ามา 1 Part แล้วทำการส่งไป SPO
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow 1 Part and Create SPO
    [Documentation]     ขอยืมสินค้ามา 1 Part แล้วทำการส่งไป SPO
    [Tags]         positive      
    [Teardown]     Close Browser

# TC-074 : ขอยืมสินค้ามา 1 Part แล้วทำการส่งไป Inventory
#    Request Part go to Stock Center 1 Part and 1 Piece
#    Close Browser
#    Borrow 1 Part and Sent to Inventory
#    [Documentation]     ขอยืมสินค้ามา 1 Part แล้วทำการส่งไป Inventory
#    [Tags]         positive      
#    [Teardown]     Close Browser

TC-075 : ขอยืมสินค้ามา 1 Part 2 ชิ้น ทำการอนุมัติให้ 1 ชิ้น และยกเลิก 1 ชิ้น
    Request Part go to Stock Center 1 Part and More Than 1 Piece
    Close Browser
    Borrow 1 Part 2 Piece Accept 1 Piece and Cancel 1 Piece 
    [Documentation]     ขอยืมสินค้ามา 1 Part 2 ชิ้น ทำการอนุมัติให้ 1 ชิ้น และยกเลิก 1 ชิ้น
    [Tags]         positive      
    [Teardown]     Close Browser

TC-076 : ขอยืมสินค้ามา 2 Part ละ 1 ชิ้น ทำการอนุมัติให้ทั้งหมด
    Request Part go to Stock Center More Than 1 Part each 1 Piece
    Close Browser
    Borrow 2 Part each 1 Piece and All Accept 
    [Documentation]     ขอยืมสินค้ามา 2 Part ละ 1 ชิ้น ทำการอนุมัติให้ทั้งหมด
    [Tags]         positive      
    [Teardown]     Close Browser

TC-077 : ขอยืมสินค้ามา 2 Part อย่างละ 1 ชิ้น ทำการอนุมัติ 1 Part ยกเลิก 1 Part
    Request Part go to Stock Center More Than 1 Part each 1 Piece
    Close Browser
    Borrow 2 Part each 1 Piece Accept 1 Part and Cancel 1 Part
    [Documentation]     ขอยืมสินค้ามา 2 Part อย่างละ 1 ชิ้น ทำการอนุมัติ 1 Part ยกเลิก 1 Part
    [Tags]         positive      
    [Teardown]     Close Browser

# TC-078 : ขอยืมสินค้ามา 2 Part อย่างละ 1 ชิ้น ทำการอนุมัติ 1 Part ส่งไป Inventory 1 Part
#    Request Part go to Stock Center More Than 1 Part each 1 Piece
#    Close Browser
#    Borrow 2 Part each 1 Piece Accept 1 Part sent to Inventory 1 Part
#    [Documentation]     ขอยืมสินค้ามา 2 Part อย่างละ 1 ชิ้น ทำการอนุมัติ 1 Part ส่งไป Inventory 1 Part
#    [Tags]         positive      
#    [Teardown]     Close Browser

TC-079 : ทำการ Cancel ทั้งใบ
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow Cancel  
    [Documentation]     ทำการ Cancel ทั้งใบ
    [Tags]         positive      
    [Teardown]     Close Browser

TC-080 : ขอยืมสินค้า Part A และจัดสินค้าให้ Part A
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow Product Part A and Arrange Products Part A
    [Documentation]     ขอยืมสินค้า Part A และจัดสินค้าให้ Part A
    [Tags]         positive      
    [Teardown]     Close Browser
 
TC-081 : ขอยืมสินค้า Part A และจัดสินค้าให้ Part B
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow Product Part A and Arrange Products Part B
    [Documentation]     ขอยืมสินค้า Part A และจัดสินค้าให้ Part B
    [Tags]         positive      
    [Teardown]     Close Browser

TC-082 : ขอยืมสินค้า Part A และจัดสินค้าให้ Part A และคืน Part A
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow Product Part A and Arrange Products Part A and Return Part A
    [Documentation]     ขอยืมสินค้า Part A และจัดสินค้าให้ Part A และคืน Part A
    [Tags]         positive      
    [Teardown]     Close Browser

TC-083 : ขอยืมสินค้า Part A และจัดสินค้าให้ Part A และคืน Part B
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow Product Part A and Arrange Products Part A and Return Part B
    [Documentation]     ขอยืมสินค้า Part A และจัดสินค้าให้ Part A และคืน Part B
    [Tags]         positive      
    [Teardown]     Close Browser

TC-084 : ขอยืมสินค้า Part A และจัดสินค้าให้ Part B และคืน Part A
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow Product Part A and Arrange Products Part B and Return Part A
    [Documentation]     ขอยืมสินค้า Part A และจัดสินค้าให้ Part B และคืน Part A
    [Tags]         positive      
    [Teardown]     Close Browser

TC-085 : ขอยืมสินค้า Part A และจัดสินค้าให้ Part B และคืน Part B
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow Product Part A and Arrange Products Part B and Return Part B
    [Documentation]     ขอยืมสินค้า Part A และจัดสินค้าให้ Part B และคืน Part B
    [Tags]         positive      
    [Teardown]     Close Browser

TC-086 : ทำการ Part แบบ คืนดี
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow Part Case Return Good
    [Documentation]     ทำการ Part แบบ คืนดี
    [Tags]         positive      
    [Teardown]     Close Browser

TC-087 : ทำการ Part แบบ คืนเสีย
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow Part Case Return Damn
    [Documentation]     ทำการ Part แบบ คืนเสีย
    [Tags]         positive      
    [Teardown]     Close Browser

TC-088 : ทำการ Part แบบ คืนขาย
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow Part Case Return Sale
    [Documentation]     ทำการ Part แบบ คืนขาย
    [Tags]         positive      
    [Teardown]     Close Browser

TC-089 : ทำการ Part แบบ คืนเสียจากโรงงาน
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow Part Case Return Manufacturing Damn
    [Documentation]     ทำการ Part แบบ คืนเสียจากโรงงาน
    [Tags]         positive      
    [Teardown]     Close Browser

TC-090 : ทำการปริ้นใบยืมอะไหล่
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Print Borrow
    [Documentation]     ทำการปริ้นใบยืมอะไหล่
    [Tags]         positive      
    [Teardown]     Close Browser

TC-091 : ทำการปริ้ิ้นใบแจ้งบริการสีเขียว (Account)
    Print Notify service(Account)
    [Documentation]     ทำการปริ้ิ้นใบแจ้งบริการสีเขียว (Account)
    [Tags]         positive      
    [Teardown]     Close Browser

TC-092 : สร้างข้อมูลของ Part ทีละ1 Part
    Create Part 1 Part 
    [Documentation]     สร้างข้อมูลของ Part ทีละ1 Part
    [Tags]         positive      
    [Teardown]     Close Browser
    
TC-093 : นำเข้าข้อมูลของ Part ทีละหลาย Part
    Import Spare Part more 1 Part
    [Documentation]     นำเข้าข้อมูลของ Part ทีละหลาย Part
    [Tags]         positive      
    [Teardown]     Close Browser

TC-094 : นำเข้ารายการใบรายการสั่งซื้อได้มากกว่า 1 ใบ
    Import Spare Part more 1 Part
    [Documentation]     นำเข้ารายการใบรายการสั่งซื้อได้มากกว่า 1 ใบ
    [Tags]         positive      
    [Teardown]     Close Browser