***Settings***
Documentation   TEST SAM
Library        Selenium2Library 
Library        BuiltIn
Resource       ../../Variable/loginVal.robot
Resource       ../../Element/loginElement.robot


*** Keywords ***
Login input User not input password
    Open Browser	       ${URL}      ${Browser} 
    Wait Until Element Is Visible      ${Txtusername}      timeout=10
    Maximize Browser Window
    Input Text	      ${Txtusername}        ${V_username}
    Click Element     ${Btnlogin} 
    Log to console     input User only Success
    
Login input Password not input User
    Open Browser	       ${URL}      ${Browser} 
    Wait Until Element Is Visible      ${Txtusername}      timeout=10
    Maximize Browser Window
    Input Text        ${Txtpassword}            ${V_password}
    Click Element     ${Btnlogin} 
    Log to console     input Password only Success

Login not input User and Password
    Open Browser	       ${URL}      ${Browser} 
    Wait Until Element Is Visible      ${Txtusername}      timeout=10
    Maximize Browser Window
    Click Element     ${Btnlogin} 
    Log to console     Popup Message Error

Login input User and Password
    Open Browser	       ${URL}      ${Browser}  
    Wait Until Element Is Visible      ${Txtusername}      timeout=10
    Maximize Browser Window
    Input Text	      ${Txtusername}        ${V_username}
    Input Text        ${Txtpassword}            ${V_password}
    Click Element     ${Btnlogin} 
    Log to console     Login Success

Login input User Password and Remember Me
    Open Browser	       ${URL}      ${Browser} 
    Wait Until Element Is Visible      ${Txtusername}      timeout=10
    Maximize Browser Window
    Input Text	      ${Txtusername}        ${V_username}
    Input Text        ${Txtpassword}            ${V_password}
    Double Click Element     remember_me 
    Click Element     ${Btnlogin} 
    Log to console     Login Success

Login input User and Password is Thai
    Open Browser	       ${URL}      ${Browser} 
    Wait Until Element Is Visible      ${Txtusername}      timeout=10
    Maximize Browser Window
    Input Text	      ${Txtusername}        ${V_characterThai}
    Input Text        ${Txtpassword}            ${V_characterThai}
    Click Element     ${Btnlogin} 
    Log to console    input User and Password is Thai Success

Login input User is Thai but input Password is English
    Open Browser	       ${URL}      ${Browser} 
    Wait Until Element Is Visible      ${Txtusername}      timeout=10
    Maximize Browser Window
    Input Text	      ${Txtusername}        ${V_characterThai} 
    Input Text        ${Txtpassword}            ${V_characterEng} 
    Click Element     ${Btnlogin} 
    Log to console    input User is Thai but input Password is English Success

Login input User is English but Password is Thai
    Open Browser	       ${URL}      ${Browser} 
    Wait Until Element Is Visible      ${Txtusername}      timeout=10
    Maximize Browser Window
    Input Text	      ${Txtusername}        ${V_characterEng} 
    Input Text        ${Txtpassword}            ${V_characterThai} 
    Click Element     ${Btnlogin} 
    Log to console    input User is English but Password is Thai Success

Login input User is Thai character but Password is English
    Open Browser	       ${URL}      ${Browser} 
    Wait Until Element Is Visible      ${Txtusername}      timeout=10
    Maximize Browser Window
    Input Text	      ${Txtusername}        ${V_character} 
    Input Text        ${Txtpassword}            ${V_characterEng} 
    Click Element     ${Btnlogin} 
    Log to console    input User is Thai character but Password is English Success

Login input User is English but Password is Thai character
    Open Browser	       ${URL}      ${Browser} 
    Wait Until Element Is Visible      ${Txtusername}      timeout=10
    Maximize Browser Window
    Input Text	      ${Txtusername}        ${V_characterEng} 
    Input Text        ${Txtpassword}            ${V_character} 
    Click Element     ${Btnlogin} 
    Log to console    input User is Thai character but Password is English Success









