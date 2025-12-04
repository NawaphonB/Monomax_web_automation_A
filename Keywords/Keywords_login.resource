*** Settings ***
Resource    ../import.resource

*** Keywords ***
   
Wait Element Page Website    Element Should Be Enabled    ${Wait Element Page Website} 
click button login    Click Element    ${Element button Login}
wait element button login    Wait Until Element Is Visible  ${wait element button login}    timeout=20
click select login with password    Click Element    ${Element select login with password}   

open website Monomax 
    # 1. กำหนดค่า Preferences (prefs) เพื่อปิด Password Manager
    &{prefs} =    Create Dictionary
    ...    credentials_enable_service=${FALSE}
    ...    profile.password_manager_enabled=${FALSE}

    # 2. สร้าง ChromeOptions instance
        ${chrome_options} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver

    # 3. เพิ่ม Preferences เข้าไปใน ChromeOptions โดยใช้ add_experimental_option
        Call Method    ${chrome_options}    add_experimental_option    prefs    ${prefs}

    # 4. เปิดเบราว์เซอร์โดยส่ง ChromeOptions ที่ตั้งค่าแล้วเข้าไป
        Open Browser     ${URL Server}    chrome    options=${chrome_options}
  
Input username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${Element-Field-username}
    Input Text    ${Element-Field-username}    ${username}

Input password
    [Arguments]    ${password}    
    Wait Until Element Is Visible    ${Element-Field-password}
    Input Text     ${Element-Field-password}   ${password}

click button submit    Click Element    ${Click login}     


