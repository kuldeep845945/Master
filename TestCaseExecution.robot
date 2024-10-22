*** Settings ***
Resource            UserDefinedKeywords.robot
*** Test Cases ***
TC01
    #c[Tags]         test:retry(1)
    Wait Until Keyword Succeeds    1x    0.5s   Login
    Log       This test will be retired one times

TC02
    Wait Until Keyword Succeeds    1x    0.5s    Products

TC03
    Wait Until Keyword Succeeds    1x    0.5s    Checkout

TC04
    Wait Until Keyword Succeeds    1x    0.5s    Overview

TC05
    Wait Until Keyword Succeeds    1x    0.5s    Logout