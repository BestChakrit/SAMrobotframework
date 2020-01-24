***Settings***
Documentation     Inventory
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/OpenJobRepair/openjobrepairKeyword.robot
Resource       ../Keyword/RequestSparePartStockCenter/requestsparepartstockcenterKeyword.robot
Resource       ../Keyword/StockCenter/stockcenterKeyword.robot
Resource       ../Keyword/Inventory/inventoryKeyword.robot


***Test Cases***
TC-095 : ขอยืมสินค้า Part A และจัดสินค้าให้ Part A
    Open Job Case Service Type is Carry In
    Close Browser
    Request Part go to Stock Center 1 Part and 1 Piece
    Close Browser
    Borrow 1 Part and Sent to Inventory

    [Documentation]   ขอยืมสินค้า Part A และจัดสินค้าให้ Part A
    [Tags]         positive      
    [Teardown]    

# TC-096 : บันทึกการแก้ไขปัญหาโดยไม่ระบุรายละเอียดการใช้อะไหล่
#     Open Job Case Service Type is Carry In
#     Close Browser
#     Assign Job Repair
#     Close Browser
#     Resolution not specify Details of spare parts
#     [Tags]         positive      
#     [Teardown]     Close Browser





   