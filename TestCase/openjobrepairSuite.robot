***Settings***
Documentation     LOGIN
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/Login/loginKeyword.robot
Resource       ../Keyword/OpenJobRepair/openjobrepairKeyword.robot

***Test Cases***
TC-011 : Open Job กรณีเลือก Service Type เป็น Carry In 
    Open Job Case Service Type is Carry In 
    [Tags]         positive      
    [Teardown]     