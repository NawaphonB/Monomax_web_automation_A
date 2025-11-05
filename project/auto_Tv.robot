*** Settings ***
Library    AppiumLibrary

*** Variables ***
${value-username}    0805741302
${value-Password}    123456

${Click Side bar to Login}    xpath=//android.widget.ImageView[@resource-id="com.doonung.dtv.staging:id/menu_buypackage_image_view"] 
${Select Login}    xpath = //android.widget.Button[@resource-id="com.doonung.dtv.staging:id/tv_auth_wall_login_button"]
${input username}    xpath = //android.widget.EditText[@resource-id="com.doonung.dtv.staging:id/tv_login_email_edit_text"]
${input password}    xpath = //android.widget.EditText[@resource-id="com.doonung.dtv.staging:id/tv_login_password_edit_text"]
${Click login}    xpath= //android.widget.Button[@resource-id="com.doonung.dtv.staging:id/tv_login_button"]


*** Keywords ***
Open Monomax  Open Application    http://127.0.0.1:4723
    ...    platformName=Android
    ...    platformVersion=16.0
    ...    deviceName=emulator-5554
    ...    appPackage=com.doonung.dtv.staging
    ...    appActivity=com.doonung.activity.tv.ui.TVSplashActivity
    ...    automationName=UiAutomator2 
    Input Username - password

# Login
Click Side bar to Login    Click Element    ${Click Side bar to Login}
Select Login    Click Element    ${Select Login} 
wait element login    Wait Until Element Is Visible    ${input username}    timeout=15
input username    Input Text    ${input username}    ${value-username} 
input password    Input Text    ${input password}    ${value-Password}
wait element Click login    Wait Until Element Is Visible    ${Click login}    timeout=15
Click login        ${Click login}
  
    
Input Username - password
  Click Side bar to Login    
  Select Login    
  input username   
  input password    
  Hide Keyboard
  Click login    

*** Test Cases ***
tc-001 Open Application Monomax and Login With User - pass 
    Open Monomax 


    




