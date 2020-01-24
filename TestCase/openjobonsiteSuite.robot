***Settings***
Documentation     LOGIN
Library        Selenium2Library 
Library        BuiltIn
Resource       ../Keyword/Login/loginKeyword.robot
Resource       ../Keyword/OpenJobOnsite/openjobonsiteKeyword.robot

***Test Cases***
TC-01 : Open Job Onsite
    Open Job Onsite
    [Tags]         positive      
    [Teardown]     




   