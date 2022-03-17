*** Settings ***
Documentation      Learn Automation Testing Calculator with Appium (RobotFramework)
Library            AppiumLibrary
Suite Teardown     Close Application

*** Keywords ***
Open Applications
     Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5574    appPackage=com.google.android.calculator    appActivity=com.android.calculator2.Calculator

*** Test Cases ***
Multiplication function in calculator 
    Open Applications
    Click Element                    id=com.google.android.calculator:id/digit_1
    Wait Until Element Is Visible    accessibility_id=multiply
    Click Element                    accessibility_id=multiply
    Click Element                    id=com.google.android.calculator:id/digit_7
    Click Element                    id=com.google.android.calculator:id/digit_0
    Click Element                    accessibility_id=equals
    Element Should Contain Text      class=android.widget.TextView        70

Division function in calculator
    Open Applications
    Click Element                    id=com.google.android.calculator:id/digit_9
    Wait Until Element Is Visible    accessibility_id=divide
    Click Element                    accessibility_id=divide
    Click Element                    id=com.google.android.calculator:id/digit_3
    Click Element                    accessibility_id=equals
    Element Should Contain Text      class=android.widget.TextView        3

Subtraction function in calculator 
    Open Applications
    Click Element                    id=com.google.android.calculator:id/digit_9
    Wait Until Element Is Visible    accessibility_id=minus
    Click Element                    accessibility_id=minus
    Click Element                    id=com.google.android.calculator:id/digit_7
    Click Element                    accessibility_id=equals
    Element Should Contain Text      class=android.widget.TextView        2

Addition function in calculator
    Open Applications
    Click Element                    id=com.google.android.calculator:id/digit_5
    Wait Until Element Is Visible    accessibility_id=plus
    Click Element                    accessibility_id=plus
    Click Element                    id=com.google.android.calculator:id/digit_6
    Click Element                    accessibility_id=equals
    Element Should Contain Text      class=android.widget.TextView        11