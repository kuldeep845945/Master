*** Settings ***
Library        SeleniumLibrary
Library    String
Resource       ObjectRepository.robot

*** Keywords ***
Login
    Open Browser  
    ...    https://www.saucedemo.com/v1/
    ...    chrome
    
    #Log To Console    ${Implicit Wait}
    Set Selenium Implicit Wait    5seconds
    Maximize Browser Window
    Input Text    ${UsernameLocator}    ${username}
    Input Text    ${PasswordLocator}    ${password}
    Click Button    ${LoginButton}     

Products
    Wait Until Element Is Visible        ${Backpack}        4s
    Click Element    ${Add To Cart}
    Wait Until Element Is Visible    ${Remove}    2s
    Click Element    ${Cart}
    Wait Until Element Is Visible    ${Your Cart}  2s

Checkout    
    Click Element    ${Checkout}
    Wait Until Element Is Visible    ${Info}        2s
    ${Name}     Generate Random String    8    LETTERS
    Input Text    ${FirstName}       ${Name}
    Input Text    ${LastName}    ${Name}
    ${Code}    Generate Random String    6    NUMBERS
    Input Text    ${PostalCode}    ${Code}
    Click Element    ${Continue}

Overview    
    Wait Until Element Is Visible    ${Overview}    
    Scroll Element Into View    ${Finish}
    Wait Until Element Is Visible    ${Finish}    2s
    Click Element    ${Finish}
    Wait Until Element Is Visible    ${OrderConfirmed}    3s

Logout
    Click Element    ${Menu}
    Wait Until Element Is Visible    ${Logout}            3s
    Click Element    ${Logout}