***Settings***
Documentation   TEST SAM Open Job Repair
Library        Selenium2Library 
Library        BuiltIn
Library        datetime.py

*** Test Cases ***

TEST PAP
    Open Browser        https://www.google.co.th/       chrome
    ${SEARCH} =  Get_Current_Time
    input text         q       ${SEARCH}