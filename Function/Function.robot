***Settings***
Documentation   TEST SAM Open Job Repair
Library        Selenium2Library 
Library        BuiltIn

*** Keywords ***
Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})

Click JavaScript
    [Arguments]        ${Name}
    Execute Javascript    document.getElementsByName('${Name}').onclick()

Input Type Flex
        [Arguments]    ${locator}    ${text}
        ${items}    Get Length    ${text}
        : FOR    ${item}    IN RANGE    ${items}
        \    Press Key    ${locator}    ${text[${item}]}

Current Date Time
    ${now}    Evaluate    '{dt.day}{dt.month}{dt.year}'.format(dt=datetime.datetime.now())    modules=datetime