***Settings***
Documentation     Request Spare Part Stock Centerss
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/RequestSparePartStockCenter/requestsparepartstockcenterKeyword.robot

***Test Cases***
TC-043 : Request Part ไปยัง Stock กลาง 1 Part 1 ชิ้น
    Request Part go to Stock Center 1 Part and 1 Piece
    [Documentation]     Request Part ไปยัง Stock กลาง 1 Part 1 ชิ้น
    [Tags]         positive      
    [Teardown]     Close Browser

TC-044 : Request Part ไปยัง Stock กลาง 1 Part มากกว่า 1 ชิ้น
    Request Part go to Stock Center 1 Part and More Than 1 Piece
    [Documentation]     Request Part ไปยัง Stock กลาง 1 Part มากกว่า 1 ชิ้น
    [Tags]         positive      
    [Teardown]     Close Browser

TC-045 : Request Part ไปยัง Stock กลาง มากกว่า 1 Part อย่างละ 1 ชิ้น
    Request Part go to Stock Center More Than 1 Part each 1 Piece
    [Documentation]     Request Part ไปยัง Stock กลาง มากกว่า 1 Part อย่างละ 1 ชิ้น
    [Tags]         positive      
    [Teardown]       Close Browser

TC-046 : Request Part ไปยัง Stock กลาง มากกว่า 1 Part อย่างละมากกว่า 1 ชิ้น
    Request Part go to Stock Center More Than 1 Part and More Than 1 Piece
    [Documentation]     Request Part ไปยัง Supplier Claim มากกว่า 1 Part อย่างละมากกว่า 1 ชิ้น
    [Tags]         positive      
    [Teardown]      Close Browser




   