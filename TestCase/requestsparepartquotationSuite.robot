***Settings***
Documentation     Request Spare Part Quotation
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/RequestSparePartQuotation/requestsparepartquotationKeyword.robot

***Test Cases***
TC-033 : Request Part ไปยัง Quotation กรณีเพิ่มค่าบริการไปด้วย
    Request Part go to Quotation By Add Services Charge
    [Documentation]     Request Part ไปยัง Quotation กรณีเพิ่มค่าบริการไปด้วย
    [Tags]         positive      
    [Teardown]     Close Browser

TC-034 : Request Part ไปยัง Quotation กรณีไม่เพิ่มค่าบริการไปด้วย
    Request Part go to Quotation By Don't Add Services Charge
    [Documentation]     Request Part ไปยัง Quotation กรณีไม่เพิ่มค่าบริการไปด้วย
    [Tags]         positive      
    [Teardown]     Close Browser

TC-035 : Request Part ไปยัง Quotation 1 Part 1 ชิ้น
    Request Part go to Quotation By Don't Add Services Charge
    [Documentation]     Request Part ไปยัง Quotation 1 Part 1 ชิ้น
    [Tags]         positive      
    [Teardown]     Close Browser

TC-036 : Request Part ไปยัง Quotation 1 Part มากกว่า 1 ชิ้น
    Request Part go to Quotation More Than 1 Piece
    [Documentation]     Request Part ไปยัง Quotation 1 Part มากกว่า 1 ชิ้น
    [Tags]         positive      
    [Teardown]     Close Browser

TC-037 : Request Part ไปยัง Quotation มากกว่า 1 Part อย่างละ 1 ชิ้น
    Request Part go to Quotation More Than 1 Part each 1 Piece
    [Documentation]     Request Part ไปยัง Quotation มากกว่า 1 Part อย่างละ 1 ชิ้น
    [Tags]         positive      
    [Teardown]     Close Browser

TC-038 : Request Part ไปยัง Quotation มากกว่า 1 Part อย่างละมากกว่า 1 ชิ้น
    Request Part go to Quotation More Than 1 Part More Than each 1 Piece
    [Documentation]     Request Part ไปยัง Quotation มากกว่า 1 Part อย่างละมากกว่า 1 ชิ้น
    [Tags]         positive      
    [Teardown]     Close Browser





   