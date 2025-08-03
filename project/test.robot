*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${xpath-Open Website Monomax-Production}     https://www.monomax.me/
${xpath-Open Website Monomax-Staging}    https://staging.monomax.me/ 
${xpath-wait website ready}     xpath=//button[@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-4 py-2 bg-transparent text-ui-secondary border-2 border-ui-primary hover:bg-ui-primary/30 active:bg-transparent']
${xpath-click open pop-up login}    xpath=//button[normalize-space()='เข้าสู่ระบบ'][@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-4 py-2 bg-transparent text-ui-secondary border-2 border-ui-primary hover:bg-ui-primary/30 active:bg-transparent']
${xpath-click login with pass}    xpath=//div//span[@class='cursor-pointer']
${xpath-input user}     xpath=//input[@type='text'][@class='form-input w-full']
${xpath-inpur pass }    xpath=//div/input[@type='password']
${username}    0805741302
${password}    123456
${xpath-delay after input data}    xpath=//div/button[@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-6 py-3 bg-ui-primary text-ui-secondary hover:bg-ui-primary-hover active:bg-ui-primary focus:outline-none focus:ring focus:ring-ui-primary-stroke w-full'] 
${xpath-click login }    xpath=//div/button[@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-6 py-3 bg-ui-primary text-ui-secondary hover:bg-ui-primary-hover active:bg-ui-primary focus:outline-none focus:ring focus:ring-ui-primary-stroke w-full']
${xpaht-acctep-button}    xpath=//div/button[@id="accept-cookie-button"]

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
Open Website Monomax    Open Browser    ${xpath-Open Website Monomax-Staging}      browser=chrome
wait website ready    Wait Until Element Is Enabled    ${xpath-wait website ready}   
click open pop-up login   Click Button    ${xpath-click open pop-up login}     
click login with pass    Click Element    ${xpath-click login with pass}    
input user    Input Text    ${xpath-input user}    ${username}  
inpur pass    Input Password    ${xpath-inpur pass }    ${password}     
delay after input data    Wait Until Element Is Visible  ${xpath-delay after input data}    
click login    Click Element    ${xpath-click login }
click accept button    Click Button    ${xpaht-acctep-button} 

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
select-onetime    Select Radio Button    package    237
click-submit-credit    Click Button    ${xpath-click-submit-credit}  
check-sucessfully-credit   Should Contain    ${xpath-check-sucessfully-credit}    ทำรายการสำเร็จ

Login      
    Open Website Monomax 
    wait website ready
    click open pop-up login
    click login with pass
    input user
    inpur pass
    delay after input data 
    click login
    click accept button 

visit package catetory
    wait-click-Dropdown-right 
    click-Dropdown-right 
    click-click-button-buypackage 
    wait-elelment-package-category 
    

*** Test Cases ***
tc-001 Open browser and visit to monomax website and login with user-passsword
    Login

tc-002 login sucessfully and visit package basic 99 / month
    Login
    visit package catetory
    click-select-basic
    wait-element-click-select-basic99/month 
    click-select-basic99/month 
    wait-element-package_id=237
    wait-element-payment 
    wait-element-payment-credit   
    click-payment-credit 

    # กรอกข้อมูลบัตร
    input-id-payment-credit 
    input-credit-date-expire 
    input-credit-CVV 
    input-credit-nameuser
    select-onetime
    click-submit-credit 
    check-sucessfully-credit
    
    
    


    
    
    
    
    
   



    


    
    
   
    
    
    
    


    
    
    

    
    

     

   

 

    