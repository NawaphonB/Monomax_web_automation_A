*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${xpath-Open Website Monomax}     https://www.monomax.me/
${xpath-wait website ready}     xpath=//button[@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-4 py-2 bg-transparent text-ui-secondary border-2 border-ui-primary hover:bg-ui-primary/30 active:bg-transparent']
${xpath-click open pop-up login}    xpath=//button[normalize-space()='เข้าสู่ระบบ'][@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-4 py-2 bg-transparent text-ui-secondary border-2 border-ui-primary hover:bg-ui-primary/30 active:bg-transparent']
${xpath-click login with pass}    xpath=//div//span[@class='cursor-pointer']
${xpath-input user}     xpath=//input[@type='text'][@class='form-input w-full']
${xpath-inpur pass }    xpath=//div/input[@type='password']
${username}    0805741384
${password}    123456
${xpath-delay after input data}    xpath=//div/button[@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-6 py-3 bg-ui-primary text-ui-secondary hover:bg-ui-primary-hover active:bg-ui-primary focus:outline-none focus:ring focus:ring-ui-primary-stroke w-full'] 
${xpath-click login }    xpath=//div/button[@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-6 py-3 bg-ui-primary text-ui-secondary hover:bg-ui-primary-hover active:bg-ui-primary focus:outline-none focus:ring focus:ring-ui-primary-stroke w-full']


*** Keywords ***
Open Website Monomax    Open Browser    ${xpath-Open Website Monomax}      browser=chrome
wait website ready    Wait Until Element Is Enabled    ${xpath-wait website ready}   
click open pop-up login   Click Button    ${xpath-click open pop-up login}     
click login with pass    Click Element    ${xpath-click login with pass}    
input user    Input Text    ${xpath-input user}    ${username}  
inpur pass    Input Password    ${xpath-inpur pass }    ${password}     
delay after input data    Wait Until Element Is Visible  ${xpath-delay after input data}    
click login    Click Element    ${xpath-click login }

*** Test Cases ***
tc-001 Open browser and visit to monomax website and login with user-passsword
    Open Website Monomax 
    wait website ready
    click open pop-up login
    click login with pass
    input user
    inpur pass
    delay after input data 
    click login
   
    
    
    
    


    
    
    

    
    

     

   

 

    