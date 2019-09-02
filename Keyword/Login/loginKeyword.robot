***Settings***
Documentation   TEST SAM
Library        Selenium2Library 
Library        BuiltIn

*** Keywords ***
Login input User not input passwordnew
    Open Browser	       http://samsvoatest.ar.co.th/     gc
    Wait Until Element Is Visible      u_username     timeout=10
    Maximize Browser Window
    Input Text	      u_username       robot
    Click Element     btn_signin
    Log to console     input User only Success
    
Login input Password not input User
    Open Browser	       http://samsvoatest.ar.co.th/    gc
    Wait Until Element Is Visible      u_username     timeout=10
    Maximize Browser Window
    Input Text        u_pwd            12345
    Click Element     btn_signin
    Log to console     input Password only Success

Login not input User and Password
    Open Browser	       http://samsvoatest.ar.co.th/    gc
    Wait Until Element Is Visible      u_username     timeout=10
    Maximize Browser Window
    Click Element     btn_signin
    Log to console     Popup Message Error

Login input User and Password
    Open Browser	       http://samsvoatest.ar.co.th/    gc
    Wait Until Element Is Visible      u_username     timeout=10
    Maximize Browser Window
    Input Text	      u_username       admin
    Input Text        u_pwd            @$R12345
    Click Element     btn_signin
    Log to console     Login Success

Login input User Password and Remember Me
    Open Browser	       http://samsvoatest.ar.co.th/    gc
    Wait Until Element Is Visible      u_username     timeout=10
    Maximize Browser Window
    Input Text	      u_username       admin
    Input Text        u_pwd            @$R12345
    Double Click Element     remember_me 
    Click Element     btn_signin
    Log to console     Login Success

Login input User and Password is Thai
    Open Browser	       http://samsvoatest.ar.co.th/    gc
    Wait Until Element Is Visible      u_username     timeout=10
    Maximize Browser Window
    Input Text	      u_username       เทส
    Input Text        u_pwd            เทส
    Click Element     btn_signin
    Log to console    input User and Password is Thai Success

Login input User is Thai but input Password is English
    Open Browser	       http://samsvoatest.ar.co.th/    gc
    Wait Until Element Is Visible      u_username     timeout=10
    Maximize Browser Window
    Input Text	      u_username       เทส
    Input Text        u_pwd            TEST
    Click Element     btn_signin
    Log to console    input User is Thai but input Password is English Success

Login input User is English but Password is Thai
    Open Browser	       http://samsvoatest.ar.co.th/    gc
    Wait Until Element Is Visible      u_username     timeout=10
    Maximize Browser Window
    Input Text	      u_username       TEST
    Input Text        u_pwd            เทส
    Click Element     btn_signin
    Log to console    input User is English but Password is Thai Success

Login input User is Thai character but Password is English
    Open Browser	       http://samsvoatest.ar.co.th/    gc
    Wait Until Element Is Visible      u_username     timeout=10
    Maximize Browser Window
    Input Text	      u_username       ฯื๒๓๔
    Input Text        u_pwd            TEST
    Click Element     btn_signin
    Log to console    input User is Thai character but Password is English Success

Login input User is English but Password is Thai character
    Open Browser	       http://samsvoatest.ar.co.th/    gc
    Wait Until Element Is Visible      u_username     timeout=10
    Maximize Browser Window
    Input Text	      u_username       TEST
    Input Text        u_pwd            ฯื๒๓๔
    Click Element     btn_signin
    Log to console    input User is Thai character but Password is English Success









