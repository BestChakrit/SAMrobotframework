***Settings***
Documentation     Stamp Repair Action
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/StampRepairAction/stamprepairactionKeyword.robot

***Test Cases***
TC-030 : ทดสอบ Stamp Repair Start โดยช่างเจ้าของงาน
    Stamp Repair Start By Engineer Owner Work
    [Documentation]     ทดสอบ Stamp Repair Start โดยช่างเจ้าของงาน
    [Tags]         positive     
    [Teardown]     Close Browser

TC-031 : ทดสอบ Stamp Repair Start โดยช่างคนอื่น
    Stamp Repair Start By Order People
    [Documentation]     ทดสอบ Stamp Repair Start โดยช่างคนอื่น
    [Tags]         positive      
    [Teardown]     Close Browser





   