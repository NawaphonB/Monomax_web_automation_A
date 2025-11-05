*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#  **** Test ENV. ****
${Monomax-Production}     https://www.monomax.me/
${Monomax-Staging}    https://staging.monomax.me/ 

#  **** Test data STG for login****
${username-email}    mono_stg01@gmail.com
${password-email}    123456
${username-tel.}    0805741303
${password-tel.}    123456
${username-multi-package}    0805741303  #รอ mock
${password-multi-package}    123456   
${username-email-incorrect}    1111111111  #รอ mock
${passname-email-incorrect}     111111111
${username-tel.-incorrect}    110011  #รอ mock
${passname-tel.-incorrect}    110011
${username-email-notfound}    testtest   #รอ mock
${password-email-notfound}    testtest

${xpath-wait website ready}     xpath=//button[@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-4 py-2 bg-transparent text-ui-secondary border-2 border-ui-primary hover:bg-ui-primary/30 active:bg-transparent']
${xpath-click open pop-up login}    xpath=//button[normalize-space()='เข้าสู่ระบบ'][@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-4 py-2 bg-transparent text-ui-secondary border-2 border-ui-primary hover:bg-ui-primary/30 active:bg-transparent']
${xpath-click login with pass}    xpath=//div//span[@class='cursor-pointer']
${xpath-username-email}     xpath=//input[@type='text'][@class='form-input w-full']
${xpath-password-email}    xpath=//div/input[@type='password']
${xpath-delay after input data}    xpath=//div/button[@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-6 py-3 bg-ui-primary text-ui-secondary hover:bg-ui-primary-hover active:bg-ui-primary focus:outline-none focus:ring focus:ring-ui-primary-stroke w-full'] 
${xpath-click login }    xpath=//div/button[@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-6 py-3 bg-ui-primary text-ui-secondary hover:bg-ui-primary-hover active:bg-ui-primary focus:outline-none focus:ring focus:ring-ui-primary-stroke w-full']
${xpaht-acctep-button}    xpath=//div/button[@id="accept-cookie-button"]
${xpath-verifly-text-incorrect}    xpath=//div[contains(@class, "text-ui-status-negative")]   

${xpath-wait-click-Dropdown-right}  xpath=//div/button[@class="flex gap-x-1.5"]/span[@class="max-w-40 truncate"]  
${xpath-click-Dropdown-right}    xpath=//div/button[@class="flex gap-x-1.5"]/span[@class="max-w-40 truncate"] 
${xpath-click-button-buypackage}    xpath=//div/a[@href="/packages"]
${xpath-wait-elelment-package-category}    xpath=//div/div[@class="grid gap-4 justify-center items-stretch p-2 grid-cols-1 md:grid-cols-2"]

# xpath basic 99 ->
${xpath-click-select-basic}    xpath=(//div/div//button[@class="btn-primary w-full min-w-40"])[1]
${xpath-click-select-basic99/month}    xpath=//div/button[@class="btn-primary w-full"][contains(text(), 'สมัครแพ็กเกจ') or contains(text(), 'Buy Package')or contains(text(), 'เปลี่ยนแพ็กเกจ')]   
${xpath-wait-element-package_id=237}    xpath=//div/div[@class='container mx-auto px-4']
${xpath-Click-sumbit-credit}    xpath=//div/button[@class="md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-4 py-2 bg-ui-primary text-ui-secondary hover:bg-ui-primary-hover active:bg-ui-primary focus:outline-none focus:ring focus:ring-ui-primary-stroke w-full"]


# xpath payment basic with credit
${xpath-wait-element-payment}        xpath=//div[@class='bg-surface-container-high p-6 rounded-lg shadow-md w-full md:w-3/5']
${xpath-click-payment-credit}        xpath=//div/span[@class="h3-bold mr-4 max-w-full text-start"]
${xpath-input-id-payment-credit}     xpath=//input[@placeholder="หมายเลขบัตร"] 
${xpath-input-credit-date-expire}    xpath=//div/input[@placeholder="วันหมดอายุ"]
${xpath-input-credit-CVV}            xpath=//div/input[@placeholder="CVV"]
${xpath-input-credit-nameuser}           xpath=//div/input[@placeholder="ชื่อผู้ถือบัตร"]
${xpath-click-submit-credit}    xpath=//div[@class='my-4 text-base']/following-sibling::button[text()='ชำระเงิน']         
${xpath-check-sucessfully-credit}    xpath=//div[@id="page-new-signup-finish"]//*[contains (text(),'ทำรายการสำเร็จ')]

*** Keywords ***
Open Website Monomax    Open Browser    ${Monomax-Staging}       browser=chrome
wait website ready    Wait Until Element Is Enabled    ${xpath-wait website ready}   
click open pop-up login   Click Button    ${xpath-click open pop-up login}     
click login with pass    Click Element    ${xpath-click login with pass}    

username-email    Input Text    ${xpath-username-email}     ${username-email}   
password-email    Input Password    ${xpath-password-email}    ${password-email}     
username-tel.    Input Text    ${xpath-username-email}     ${username-tel.}    
password-tel.    Input Password    ${xpath-password-email}    ${password-tel.}   
username-multi-package    Input Text    ${xpath-username-email}     ${username-multi-package}    
password-multi-package     Input Password    ${xpath-password-email}    ${password-multi-package}   
username-email-incorrect    Input Text    ${xpath-username-email}      ${username-email-incorrect}      
passname-email-incorrect   Input Password    ${xpath-password-email}    ${passname-email-incorrect}
username-tel.-incorrect    Input Text    ${xpath-username-email}      ${username-tel.-incorrect}      
passname-tel.-incorrect   Input Password    ${xpath-password-email}    ${passname-tel.-incorrect}
username-email-notfound     Input Text    ${xpath-username-email}      ${username-email-notfound}      
password-email-notfound     Input Password    ${xpath-password-email}    ${password-email-notfound}

delay after input data    Wait Until Element Is Visible  ${xpath-delay after input data}    
click login    Click Element    ${xpath-click login }    
click accept button    Click Button    ${xpaht-acctep-button} 
wait-elememnt-verifly-text-incorrect    wait Until Element Is Visible    ${xpath-verifly-text-incorrect}    timeout=30s
verifly-text-incorrect    Element Should Contain    ${xpath-verifly-text-incorrect}    ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง



# กดที่ปุ่ม profile เพื่อเข้าหน้า package category
wait-click-Dropdown-right    Wait Until Element Is Visible   ${xpath-wait-click-Dropdown-right}    timeout=30s
click-Dropdown-right    Click Element  ${xpath-click-Dropdown-right} 
click-click-button-buypackage  Click Element    ${xpath-click-button-buypackage}   
wait-elelment-package-category    Wait Until Element Is Visible     ${xpath-wait-elelment-package-category}  



click-select-basic  Click Element    ${xpath-click-select-basic} 
wait-element-click-select-basic99/month    Wait Until Element Is Visible     ${xpath-click-select-basic99/month}    timeout=15s
click-select-basic99/month    Click Button    ${xpath-click-select-basic99/month}
wait-element-package_id=237    Wait Until Element Is Visible    ${xpath-wait-element-package_id=237} 
# Page payment basic with credit
wait-element-payment    Wait Until Element Is Visible    ${xpath-wait-element-payment}     timeout=15s
wait-element-payment-credit    Wait Until Element Is Visible    ${xpath-click-payment-credit}    timeout=15s
click-payment-credit    Click Element    ${xpath-click-payment-credit}     
input-id-payment-credit    Input Text    ${xpath-input-id-payment-credit}    5555 5555 5555 4444 
input-credit-date-expire    Input Text    ${xpath-input-credit-date-expire}     08/25
input-credit-CVV    Input Text    ${xpath-input-credit-CVV}       123 
input-credit-nameuser    Input Text     ${xpath-input-credit-nameuser}    tester          
select-recurring    Select Radio Button    package    237
click-submit-credit    Click Button    ${xpath-click-submit-credit}  
wait-check-sucessfully-credit   wait Until Element Is Visible  ${xpath-check-sucessfully-credit}    timeout=30s
check-sucessfully-credit     Element Text Should Be    ${xpath-check-sucessfully-credit}    ทำรายการสำเร็จ
  
# visit package catetory
#     wait-click-Dropdown-right 
#     click-Dropdown-right 
#     click-click-button-buypackage 
#     wait-elelment-package-category 
    
# select package basic
#     click-select-basic
#     wait-element-click-select-basic99/month 
#     click-select-basic99/month 
#     wait-element-package_id=237
#     wait-element-payment 
#     wait-element-payment-credit   
#     click-payment-credit 

# input data payment-credit-card-recurring  
#     input-id-payment-credit 
#     input-credit-date-expire 
#     input-credit-CVV 
#     input-credit-nameuser
#     select-recurring
#     click-submit-credit 
#     wait-check-sucessfully-credit
#     check-sucessfully-credit

Login with email      
    Open Website Monomax 
    wait website ready
    click accept button 
    click open pop-up login
    click login with pass
    username-email
    password-email
    delay after input data 
    click login

Login with tel.      
    Open Website Monomax 
    wait website ready
    click accept button 
    click open pop-up login
    click login with pass
    username-tel.
    password-tel.
    delay after input data 
    click login

Login with multiple package success      
    Open Website Monomax 
    wait website ready
    click accept button 
    click open pop-up login
    click login with pass
    username-multi-package 
    password-multi-package 
    delay after input data 
    click login

Login with E-mail password incorrect      
    Open Website Monomax 
    wait website ready
    click accept button 
    click open pop-up login
    click login with pass
    username-email-incorrect 
    passname-email-incorrect
    delay after input data 
    click login
    wait-elememnt-verifly-text-incorrect
    verifly-text-incorrect

Login fail with mobile password incorrect
    Open Website Monomax 
    wait website ready
    click accept button 
    click open pop-up login
    click login with pass
    username-tel.-incorrect 
    passname-tel.-incorrect  
    delay after input data 
    click login
    wait-elememnt-verifly-text-incorrect
    verifly-text-incorrect

Login fail E-mail not found
    Open Website Monomax 
    wait website ready
    click accept button 
    click open pop-up login
    click login with pass
    username-email-notfound 
    password-email-notfound   
    delay after input data 
    click login
    wait-elememnt-verifly-text-incorrect
    verifly-text-incorrect
    

*** Test Cases ***

# tc-002 login sucessfully and buy package basic 99 / month with recurring
#     Login
#     visit package catetory
#     select package basic
#     input data payment-credit-card-recurring  

LN_001 Success-Login success with E-mail
    Login with email

LN_002 Success-Login success with mobile
    Login with tel. 

LN_005 Success-Login with multiple package success    
    Login with multiple package success  

LN_006 Fail-Login fail with E-mail password incorrect
    Login with E-mail password incorrect 

LN_007 Fail-Login fail with mobile password incorrect
    Login fail with mobile password incorrect

LN_008 Fail-Login fail E-mail not found
    Login fail E-mail not found  


    
    
   



    


    
    
   
    
    
    
    


    
    
    

    
    

     

   

 

    