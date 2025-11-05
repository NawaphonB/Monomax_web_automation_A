*** Settings ***
Library    AppiumLibrary


*** Variables ***

# Pre-Condition
${Username}    test_auto01
${Password}    123456 

# Login-with-user/pass 
${wait-element-button-login-onboarding}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/mb_onboarding_login_button"]
${input-username}    id=com.doonung.activity.staging:id/mb_login_username_edit_text
${input-password}    id=com.doonung.activity.staging:id/mb_login_password_edit_text
${Click-button-login-With-username-pasword}    com.doonung.activity.staging:id/mb_login_button

# skip-before-login-success
${skip-package}    xpath=//android.view.ViewGroup[@resource-id="com.doonung.activity.staging:id/mb_package_tool_bar"]/android.widget.ImageButton[@content-desc="Navigate up"]
${skip-Profile}    xpath=//android.view.ViewGroup[@resource-id="com.doonung.activity.staging:id/mb_sub_profile_tool_bar"]/android.widget.ImageButton[@content-desc="Navigate up"]

#MainPage
${ูSelect-notification-OK}    xpath=//android.widget.Button[@resource-id="android:id/button1"]
${Allow-Noti}    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"] 

# hamburger-menu
${Click-hamburger-menu}    xpath=//android.widget.ImageButton[@content-desc="open drawer"]
${click-button-Buy_package}    xpath=(//android.view.ViewGroup[@resource-id="com.doonung.activity.staging:id/cell_mb_side_menu_item_layout"])[1]/android.widget.LinearLayout

#package Basic
${Verify-Package-Catetory-basic}    xpath=//android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_title_text_view" and @text="เบสิก"]
${Select-Package-Basic}    xpath=(//android.widget.Button[@resource-id="com.doonung.activity.staging:id/cell_mb_package_button"])[1]
${Select-Package-Basic-pre-purchase}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/cell_mb_package_button"] 
${Click-buy-package-99/month}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/cell_mb_package_button"]
${Check-Card-Testing}    xpath=//android.widget.TextView[@resource-id="com.android.vending:id/0_resource_name_obfuscated" and @text="Test card, always approves"]
${Confirm-Subscribe}    xpath=//android.widget.Button[@resource-id="com.android.vending:id/0_resource_name_obfuscated"]
${Require authentication after Subscribe}    xpath=//android.widget.RadioButton[@text="No, thanks"]
${Check successfully Subscribe}    xpath=//android.widget.TextView[@resource-id="com.doonung.activity.staging:id/mb_title_textView"]
${Select-Basic-yearly}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/mb_package_yearly_button"]
${Click-buy-package-699/month}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/cell_mb_package_button"]

# Package Standard
${Verify-Package-Catetory-standard}    xpath=//android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_title_text_view" and @text="สแตนดาร์ด"]
${Select-Package-standard}    xpath=(//android.widget.Button[@resource-id="com.doonung.activity.staging:id/cell_mb_package_button"])[2]
${Select-Package-standard 299 / month}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/cell_mb_package_button"]
${Click-Proceed-to-payment}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/mb_ok_button"]
${Select-Standard-yearly}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/mb_package_yearly_button"]
${Select-Package-standard 2999 / yearly}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/cell_mb_package_button"]

#Click-Start-Watching-after-purchase-success
${Click-Start-Watching}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/mb_ok_button"] 

*** Keywords ***
open application monomax
    Open Application    remote_url=http://localhost:4723
    ...                platformName=Android
    ...                platformVersion=16.0
    ...                deviceName=Test Device
    ...                appPackage=com.doonung.activity.staging
    ...                appActivity=com.doonung.activity.mobile.ui.activity.MBSplashActivity
    ...                automationName=UiAutomator2
    # ...                noReset=true

# Login-with-user/pass 
Wait-element-button-login-onboarding    Wait Until Element Is Visible    ${wait-element-button-login-onboarding}    timeout=30s
Click-Select-button-login-onboarding    Click Element     ${wait-element-button-login-onboarding} 
input-username    Input Text  ${input-username}    text=${Username}    
input-password    Input Text    ${input-password}    text=${Password} 
Click-button-login-With-username-pasword    Click Element    ${Click-button-login-With-username-pasword}  

# skip-before-login-success
skip-package    Click Element   ${skip-package}
skip-Profile    Click Element    ${skip-Profile} 
Select-notification    Click Element    ${ูSelect-notification-OK}
Allow-Noti    Click Element    ${Allow-Noti}          

# Main Page
Click-hamburger-menu    Click Element    ${Click-hamburger-menu}

#Click-Start-Watching-after-purchase-success  
Click-Start-Watching    Click Element    ${Click-Start-Watching}     

# Check-Card-Testing
wait-element-Check-Card-Testing    Wait Until Page Contains Element   ${Check-Card-Testing}  
Check-Card-Testing    Element Text Should Be    ${Check-Card-Testing}    Test card, always approves
Confirm-Subscribe    Click Element    ${Confirm-Subscribe}  
Check element successfully Subscribe     Wait Until Page Contains Element    ${Check successfully Subscribe}    timeout=20s
Check text successfully Subscribe     Element Text Should Be    ${Check successfully Subscribe}    Purchase successfully 

#Package Catetory
click-button-Buy_package    Click Element    ${click-button-Buy_package}
Verify-Package-Catetory-basic    Wait Until Page Contains Element    ${Verify-Package-Catetory-basic}    timeout=20s    
Select-Package-Basic    Click Element    ${Select-Package-Basic}                
Select-Package-Basic-pre-purchase    Click Element    ${Select-Package-Basic-pre-purchase}    
Click-buy-package-99/month        Click Element    ${Click-buy-package-99/month}
Select-Basic-yearly    Click Element    ${Select-Basic-yearly}
Click-buy-package-699/month    Click Element    ${Click-buy-package-699/month} 

#Package Standard
check-element-Package-Catetory-standard    Wait Until Page Contains Element    ${Verify-Package-Catetory-standard}         
Select-Package-standard    Click Element    ${Select-Package-standard}        
Select-Package-standard 299 / month    Click Element    ${Select-Package-standard 299 / month}     
Click-Proceed-to-payment    Click Element    ${Click-Proceed-to-payment}  
Select-Standard-yearly    Click Element    ${Select-Standard-yearly} 
Select-Package-standard 2999 / yearly    Click Element    ${Select-Package-standard 2999 / yearly} 

Login-with-user/pass   
    Wait-element-button-login-onboarding 
    Click-Select-button-login-onboarding
    input-username
    input-password  
    Click-button-login-With-username-pasword
    
skip-before-login-success
    skip-package
    skip-Profile  
    Select-notification
    Allow-Noti  

Visit-Package-Category
    Click-hamburger-menu
    click-button-Buy_package

Verify-Card-testing-before-subscribe
    wait-element-Check-Card-Testing
    Check-Card-Testing 
    Confirm-Subscribe
    Check element successfully Subscribe  
    Check text successfully Subscribe 

Buy-Package-Basic99/month
    Verify-Package-Catetory-basic 
    Select-Package-Basic 
    Click-buy-package-99/month
    Verify-Card-testing-before-subscribe

 Buy-Package-Basic699/month
    Verify-Package-Catetory-basic 
    Select-Package-Basic
    Select-Basic-yearly
    Click-buy-package-699/month   
    Verify-Card-testing-before-subscribe

buy-package-Standard 299/month 
    check-element-Package-Catetory-standard 
    Select-Package-standard
    Select-Package-standard 299 / month 
    Click-Proceed-to-payment
    Verify-Card-testing-before-subscribe
    

buy-package-Standard 2999/yearly
    check-element-Package-Catetory-standard 
    Select-Package-standard
    Select-Standard-yearly
    Select-Package-standard 2999 / yearly 
    Click-Proceed-to-payment
    Verify-Card-testing-before-subscribe
    


*** Test Cases ***
tc-001 open application and login with username-password success and redicrect to MainPage
    open application monomax
    Login-with-user/pass
    skip-before-login-success

 tc-002 buy-package-Basic 99/month
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    Buy-Package-Basic99/month

 tc-003 buy-package-Basic 699/yearly  
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    Buy-Package-Basic699/month

tc-004 Upgrade-Package-Basic 99/month-to-Basic699/yearly
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    Buy-Package-Basic99/month
    Click-Start-Watching  
    Visit-Package-Category
    Buy-Package-Basic699/month

tc-005 Downgrade from Basic 699/yearly to Basic99/month
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    Buy-Package-Basic699/month
    Click-Start-Watching
    Visit-Package-Category
    Buy-Package-Basic99/month

tc-006 buy-package-Standard 299/month  
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    buy-package-Standard 299/month

tc-007 buy-package-Standard 2999/yearly  
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    buy-package-Standard 2999/yearly  

tc-008 Upgrade-Package-Standard 299/month-to-Standard2999/yearly
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    buy-package-Standard 299/month
    Click-Start-Watching
    Visit-Package-Category
    buy-package-Standard 2999/yearly

tc-009 Downgrade from Standard 2999/yearly to Standard299/month
    open application monomax
    Login-with-user/pass
    skip-before-login-success
    Visit-Package-Category
    buy-package-Standard 2999/yearly
    Click-Start-Watching
    Visit-Package-Category
    buy-package-Standard 299/month
    Log To Console    Downgrade Successfully