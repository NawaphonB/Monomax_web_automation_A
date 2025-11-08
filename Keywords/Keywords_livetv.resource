*** Settings ***
Resource    ../import.resource

*** Keywords ***
Click-element-menu-liveTv    Click Element    ${menu-liveTv}
wait-element-Page-liveTv     Wait Until Element Is Visible    ${menu-liveTv}  
click-element-monoplus    Click Element    ${channel-monoplus} 
wait-element-Page-monoplus    Wait Until Element Is Visible      ${channel-monoplus}
click-element-sport5    Click Element    ${channel-sport5}        
wait-element-Page-sport5    Wait Until Element Is Visible    ${channel-sport5} 
wait-element-accept cookie    Wait Until Element Is Visible    ${accept cookie}     
Click accept cookie      Click Element    ${accept cookie} 