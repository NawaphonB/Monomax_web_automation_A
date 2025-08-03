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

${xpath-wait-click-Dropdown-right}  xpath=//a[@href='#'][@id="memberDropdown"]  
${xpath-click-Dropdown-right}    xpath=//a[@href='#'][@id="memberDropdown"]   
${xpath--click-button-buypackage}    xpath=//li/div/a[@class="dropdown-item"][contains(text(), 'ซื้อแพ็กเกจ')or contains(text(), 'Buy Package')]
${xpath-wait-elelment-package-category}    xpath=//div/div[@class="grid gap-4 justify-center items-stretch p-2 grid-cols-1 md:grid-cols-2"]

# ->
${xpath-click-select-basic99}    xpath=(//div/div//button[@class="btn-primary w-full min-w-40"])[1]

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
wait-click-Dropdown-right    Wait Until Element Is Enabled   ${xpath-wait-click-Dropdown-right}    timeout=30s
click-Dropdown-right    Click Element  ${xpath-click-Dropdown-right} 
click-click-button-buypackage  Click Element    ${xpath--click-button-buypackage}    
wait-elelment-package-category    Wait Until Element Is Visible     ${xpath-wait-elelment-package-category}  

# ->

click-select-basic99  Click Element    ${xpath-click-select-basic99} 

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

*** Test Cases ***
tc-001 Open browser and visit to monomax website and login with user-passsword
    Login

tc-002 login sucessfully and visit package basic 99 / month
    Login
    wait-click-Dropdown-right 
    click-Dropdown-right
    click-click-button-buypackage
    wait-elelment-package-category 
    click-select-basic99 
    
    
    
    
   



    


    
    
   
    
    
    
    


    
    
    

    
    

     

   

 

    