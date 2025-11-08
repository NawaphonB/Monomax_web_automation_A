*** Settings ***
Resource    ../import.resource

*** Keywords ***
open website Monomax    Open Browser    ${URL Server}    browser=chrome
Wait Element Page Website    Element Should Be Enabled    ${Wait Element Page Website} 
click button login    Click Element    ${Element button Login}
wait element button login    Wait Until Element Is Visible  ${wait element button login}   
click select login with password    Click Element    ${Element select login with password}   
  
Input username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${Element-Field-username}
    Input Text    ${Element-Field-username}    ${username}

Input password
    [Arguments]    ${password}    
    Wait Until Element Is Visible    ${Element-Field-password}
    Input Text     ${Element-Field-password}   ${password}

click button submit    Click Element    ${Click login}     


