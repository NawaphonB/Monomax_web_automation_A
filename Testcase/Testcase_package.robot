*** Settings ***
Resource    ../import.resource

*** Test Cases ***
PK_001 สมัคร Basic 99 รายเดือนแบบ Recurring ด้วย Credit card สำเร็จ 
    open website Monomax  
    Wait Element Page Website
    Click accept cookie 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${PK_001.username}
    Input password    ${PK_001.password}
    click button submit
    Visit to page package category
    Select package basic 99 reccuring with credit card     
    Sleep    time_=3

PK_002 สมัคร Basic 699 รายปีแบบ Recurring ด้วย Credit card สำเร็จ บน Web
    open website Monomax  
    Wait Element Page Website
    Click accept cookie 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${PK_002.username}
    Input password    ${PK_002.password}
    click button submit
    Visit to page package category
    Select package basic 699 reccuring with credit card     
    Sleep    time_=3

PK_022 สมัคร Basic 99 รายเดือนแบบ One time ด้วย credit card สำเร็จบน Web
    open website Monomax  
    Wait Element Page Website
    Click accept cookie 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${PK_022.username}
    Input password    ${PK_022.password}
    click button submit
    Visit to page package category
    Select package basic 99 onetime with credit card     
    Sleep    time_=3

PK_023 สมัคร Basic 699 รายปีแบบ One time ด้วย credit card สำเร็จบน Web
    open website Monomax  
    Wait Element Page Website
    Click accept cookie 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${PK_023.username}
    Input password    ${PK_023.password}
    click button submit
    Visit to page package category
    Select package basic 699 One time with credit card     
    Sleep    time_=3 

PK_024 สมัคร Basic 99 รายเดือนแบบ One time ด้วย QR promptpay สำเร็จบน Web
    open website Monomax  
    Wait Element Page Website
    Click accept cookie 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${PK_024.username}
    Input password    ${PK_024.password}
    click button submit
    Visit to page package category
    Select package basic 99 One time with QR promptpay     
    Sleep    time_=3

PK_025 สมัคร Basic 699 รายปีแบบ One time ด้วย QR promptpay สำเร็จบน Web
    open website Monomax  
    Wait Element Page Website
    Click accept cookie 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${PK_025.username}
    Input password    ${PK_025.password}
    click button submit
    Visit to page package category
    Select package basic 699 One time with QR promptpay     
    Sleep    time_=3

PK_028 สมัคร Standard 299 รายเดือนแบบ Recurring ด้วย Credit card สำเร็จบน Web
    open website Monomax  
    Wait Element Page Website
    Click accept cookie 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${PK_028.username}
    Input password    ${PK_028.password}
    click button submit
    Visit to page package category
    Select package standard 299 Recurring with Credit card
    Sleep    time_=3

PK_029 สมัคร Standard 2999 รายปีแบบ Recurring ด้วย Credit card สำเร็จบน Web
    open website Monomax  
    Wait Element Page Website
    Click accept cookie 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${PK_029.username}
    Input password    ${PK_029.password}
    click button submit
    Visit to page package category
    Select package standard 2999 Recurring with Credit card
    Sleep    time_=3

PK_036 สมัคร Standard รายเดือนแบบ onetime ด้วย Credit card สำเร็จบน Web
    open website Monomax  
    Wait Element Page Website
    Click accept cookie 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${PK_036.username}
    Input password    ${PK_036.password}
    click button submit
    Visit to page package category
    Select package standard 299 onetime with Credit card
    Sleep    time_=3

PK_037 สมัคร Standard รายปีแบบ onetime ด้วย Credit card สำเร็จบน Web
    open website Monomax  
    Wait Element Page Website
    Click accept cookie 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${PK_037.username}
    Input password    ${PK_037.password}
    click button submit
    Visit to page package category
    Select package standard 2999 onetime with Credit card
    Sleep    time_=3


# ตัว scenario ข้อนี้ยังไม่ชัดเจน เลยโฟกัสเรื่องการอัปเกรดไปก่อน **** ข้อนี้มีการเพิ่มข้อมูลที่ไม่ได้อยู่ในชีทเข้ามา จากรายเดือน basic -> รายเดือน STD และ recurring  
#  User ที่ใช้ upgrade จะมี package basic ติดมาอยู่แล้ว
PK_042 Upgrade จาก Basic รายเดือนไป Standard รายเดือน แบบ recurring ด้วย Credit card สำเร็จบน Web  
    open website Monomax  
    Wait Element Page Website
    Click accept cookie 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${PK_042.username}
    Input password    ${PK_042.password}
    click button submit
    Visit to page package category
    Upgrade With Select package standard 299 Recurring with Credit card
    Sleep    time_=3

