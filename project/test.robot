*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${data}    test1


*** Keywords ***
Open Website Monomax    Open Browser    https://www.monomax.me/   browser=chrome
wait Element ready    Wait Until Element Is Enabled    xpath=//button [@type='button'][@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-4 py-2 bg-transparent text-ui-secondary border-2 border-ui-primary hover:bg-ui-primary/30 active:bg-transparent']
wait Element ready2   Wait Until Element Is Visible     xpath=//button [@type='button'][@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-4 py-2 bg-transparent text-ui-secondary border-2 border-ui-primary hover:bg-ui-primary/30 active:bg-transparent']
Click button login    Click Element    xpath=//button [@type='button'][@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-4 py-2 bg-transparent text-ui-secondary border-2 border-ui-primary hover:bg-ui-primary/30 active:bg-transparent']  


*** Test Cases ***
tc-001 Open browser and visit to monomax website 
    Open Website Monomax 
    wait Element ready
    wait Element ready2  
    Click button login 


    
    
    

    
    

     

   

 

    