*** Settings ***
Library    SeleniumLibrary

*** Variables ***



*** Keywords ***
create open browser    Open Browser    https://monomax.me   browser=chrome

click button login    Click Button    class="md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-4 py-2 bg-transparent text-ui-secondary border-2 border-ui-primary hover:bg-ui-primary/30 active:bg-transparent"   
  


*** Test Cases ***
tc-001 verify login 
    create open browser 
    click button login 
    

     

   

 

    