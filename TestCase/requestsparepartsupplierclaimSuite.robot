***Settings***
Documentation     Request Spare Part Quotation
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/RequestSparePartSupplierClaim/requestsparepartsupplierclaimKeyword.robot

***Test Cases***
TC-039 : Request Part ไปยัง Supplier Claim 1 Part 1 ชิ้น
    Request Part go to Supplier Claim 1 Part and 1 Piece
    [Documentation]     Request Part ไปยัง Supplier Claim 1 Part 1 ชิ้น
    [Tags]         positive      
    [Teardown]     Close Browser

TC-040 : Request Part ไปยัง Supplier Claim 1 Part มากกว่า 1 ชิ้น
    Request Part go to Supplier Claim 1 Part and More Than 1 Piece
    [Documentation]     Request Part ไปยัง Supplier Claim 1 Part มากกว่า 1 ชิ้น
    [Tags]         positive      
    [Teardown]     Close Browser

TC-041 : Request Part ไปยัง Supplier Claim มากกว่า 1 Part อย่างละ 1 ชิ้น
    Request Part go to Supplier Claim More Than 1 Part each 1 Piece
    [Documentation]     Request Part ไปยัง Supplier Claim มากกว่า 1 Part อย่างละ 1 ชิ้น
    [Tags]         positive      
    [Teardown]      Close Browser

TC-042 : Request Part ไปยัง Supplier Claim มากกว่า 1 Part อย่างละมากกว่า 1 ชิ้น
    Request Part go to Supplier Claim More Than 1 Part and More Than 1 Piece
    [Documentation]     Request Part ไปยัง Supplier Claim มากกว่า 1 Part อย่างละมากกว่า 1 ชิ้น
    [Tags]         positive      
    [Teardown]      Close Browser




   