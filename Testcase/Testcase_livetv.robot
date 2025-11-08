*** Settings ***
Resource    ../import.resource

*** Test Cases ***

LiveTV_01 User ที่ไม่ได้ Login จะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'
    open website Monomax
    Wait Element Page Website
    Click accept cookie 
    Click-element-menu-liveTv
    Sleep    time_=2s

LiveTV_02 User ที่ Login แต่ไม่มี Package จะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'
    open website Monomax 
    Wait Element Page Website
    Click accept cookie 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${LiveTV_02.username}
    Input password    ${LiveTV_02.password}
    click button submit
    Wait Element Page Website 
    Click-element-menu-liveTv
    wait-element-Page-liveTv 
    Sleep    time_=2s

LiveTV_03 User ที่ Login ด้วย Package Starter จะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'  
    open website Monomax 
    Wait Element Page Website 
    Click accept cookie 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${LiveTV_03.username}
    Input password    ${LiveTV_03.password}
    click button submit
    Wait Element Page Website 
    Click-element-menu-liveTv
    Sleep    time_=5s
    wait-element-Page-monoplus 
    click-element-monoplus
    Sleep    time_=5s

LiveTV_04 User ที่ Login ด้วย Package Basic จะดูได้ทุกช่องยกเว้นช่อง Tier Standard
    open website Monomax 
    Wait Element Page Website
    Click accept cookie  
    click button login
    wait element button login  
    click select login with password 
    Input username    ${LiveTV_04.username}
    Input password    ${LiveTV_04.password}
    click button submit
    Wait Element Page Website 
    Click-element-menu-liveTv
    Sleep    time_=5s
    wait-element-Page-monoplus 
    click-element-monoplus
    Sleep    time_=5s

LiveTV_05 User ที่ Login ด้วย Package Standard จะดูช่อง LiveTV ได้ทุกช่อง
    open website Monomax 
    Wait Element Page Website
    Click accept cookie  
    click button login
    wait element button login  
    click select login with password 
    Input username    ${LiveTV_05.username}
    Input password    ${LiveTV_05.password}
    click button submit
    Wait Element Page Website 
    Click-element-menu-liveTv
    Sleep    time_=5s
    wait-element-Page-monoplus 
    click-element-monoplus
    Sleep    time_=5s
    wait-element-Page-monoplus 
    click-element-sport5 
    Sleep    time_=5s
    wait-element-Page-sport5
    click-element-sport5 
    Sleep    time_=5s

# LiveTV_06	User ที่ Login ด้วย Package Basic/Standard ที่ยกเลิกและหมดอายุแล้วจะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'

LiveTV_07 User ที่ Login ด้วย Package Basic/Standard ที่หมดอายุจะดูได้แค่ช่อง Tier 'ดูได้ทุกคน'
     open website Monomax 
    Wait Element Page Website 
    Click accept cookie 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${LiveTV_07.username}
    Input password    ${LiveTV_07.password}
    click button submit
    Wait Element Page Website 
    Click-element-menu-liveTv
    Sleep    time_=5s
    wait-element-Page-monoplus 
    click-element-monoplus
    Sleep    time_=5s