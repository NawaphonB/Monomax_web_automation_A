*** Settings ***
Resource    ../import.resource

*** Keywords ***
Wait element nav profile non package Is Visible   Wait Until Element Is Visible     ${nav profile non package}    timeout=3
Click nav profile non package     Click Element    ${nav profile non package} 
Wait element for nav profile has package Is Visible      Wait Until Element Is Visible    ${nav profile has package}   
Click nav profile has package   Click Element      ${nav profile has package}

Click menu buy package element A     Click Element    ${Menu package}
Click menu buy package element B     Click Element    ${Select menu package 2} 
Wait element page package category    Wait Until Element Is Visible    ${Package category}  

Wait element Package basic    Wait Until Element Is Visible    ${Package basic} 
Select Package basic    Click Element    ${Package basic}    
Wait element button buy package    Wait Until Element Is Visible    ${button buy package}    
Click button buy package    Click Element    ${button buy package} 
wait element payment type    Wait Until Element Is Visible    ${credit card} 
Click input credit card    Click Element  ${credit card} 
Click input date expire    Click Element    ${input date expire}    
Click input CVV    Click Element    ${input cvv}     
Click input cardholder_name    Click Element    ${input Cardholder name}
Check Radio-btn recurring for 99   Radio Button Should Be Set To    package    237
Check Radio-btn onetime for 99   Radio Button Should Be Set To    package    238
Should Radio-btn onetime for 99    Select Radio Button    package    238
Check Radio-btn recurring for 699  Radio Button Should Be Set To    package    214 
Should Radio-btn onetime for 699    Select Radio Button    package    241  
Check Radio-btn onetime for 699    Select Radio Button    package    241
Check Radio-btn recurring for 299    Select Radio Button    package    313
Check Radio-btn recurring for 2999      Select Radio Button    package    312
Should Radio-btn onetime for 299      Select Radio Button    package    323
Should Radio-btn onetime for 2999     Select Radio Button    package    322
Wait element submit    Wait Until Element Is Enabled    ${Click Submit}    timeout=5s
Click Submit    Click Element    ${Click Submit}
Wait element per-year    Wait Until Element Is Visible    ${Select per-year}    
Select per-year    Click Element    ${Select per-year}
Wait element Qr promtpay    Wait Until Element Is Visible  ${QR promtpay}  
Select QR promtpay    Click Element    ${QR promtpay}    

Wait element Package standard    Wait Until Element Is Visible    ${Package standard}    
Select Package standard    Click Element     ${Package standard} 

Input number card
    [Arguments]    ${card_number}
    Input Text    ${input card number}     ${card_number}

input date expire 
    [Arguments]    ${date_expire}
    Input Text    ${input date expire}      ${date_expire}

input CVV
    [Arguments]    ${CVV}
    Input Text    ${input CVV}    ${CVV}

input cardholder_name
    [Arguments]    ${cardholder_name}
    Input Text    ${input Cardholder name}    ${cardholder_name}

# ต้องแยก element ระหว่าง user ที่มี package และ ไม่มี package เนื่องจากตรงจุดนี้ไม่สามารถใช้ element ร่วมกันได้
# condition กรณีที่ไม่พบ element ที่ A จะโดดไปทำ element ที่ B แทน 
# [TRY] A = user ที่ไม่มี package , [EXCEPT] B = user มี package
Visit to page package category
    TRY
    Wait element nav profile non package Is Visible 
    Click nav profile non package
    Click menu buy package element A    
    EXCEPT
    Wait element for nav profile has package Is Visible 
    Click nav profile has package 
    Click menu buy package element B
    END
    Wait element page package category
    
     
Select package basic 99 reccuring with credit card   
    Wait element Package basic 
    Select Package basic
    Wait element button buy package  
    Click button buy package 
    wait element payment type 
    Click input credit card
    Input number card    ${PK_001.card_number}
    Click input date expire  
    input date expire    ${PK_001.date_expire}
    Click input CVV
    input CVV    ${PK_001.CVV}
    Click input cardholder_name 
    input cardholder name     ${PK_001.cardholder_name}
    Check Radio-btn recurring for 99
    Wait element submit 
    Click Submit 

Select package basic 699 reccuring with credit card
    Wait element Package basic 
    Select Package basic
    Wait element per-year
    Select per-year 
    Click button buy package
    wait element payment type 
    Click input credit card
    Input number card    ${PK_002.card_number}
    Click input date expire  
    input date expire    ${PK_002.date_expire}
    Click input CVV
    input CVV    ${PK_002.CVV}
    Click input cardholder_name 
    input cardholder name     ${PK_002.cardholder_name}
    Check Radio-btn recurring for 699
    Sleep    time_=15
    Wait element submit 
    Click Submit 

Select package basic 99 onetime with credit card
    Wait element Package basic 
    Select Package basic
    Wait element button buy package  
    Click button buy package 
    wait element payment type 
    Click input credit card
    Input number card    ${PK_022.card_number}
    Click input date expire  
    input date expire    ${PK_022.date_expire}
    Click input CVV
    input CVV    ${PK_022.CVV}
    Click input cardholder_name 
    input cardholder name     ${PK_022.cardholder_name}
    Should Radio-btn onetime for 99
    Check Radio-btn onetime for 99 
    Wait element submit 
    Click Submit

Select package basic 699 One time with credit card
    Wait element Package basic 
    Select Package basic
    Wait element per-year
    Select per-year 
    Click button buy package
    wait element payment type 
    Click input credit card
    Input number card    ${PK_023.card_number}
    Click input date expire  
    input date expire    ${PK_023.date_expire}
    Click input CVV
    input CVV    ${PK_023.CVV}
    Click input cardholder_name 
    input cardholder name     ${PK_023.cardholder_name}
    Should Radio-btn onetime for 699 
    Check Radio-btn onetime for 699
    Wait element submit 
    Click Submit 

Select package basic 99 One time with QR promptpay 
    Wait element Package basic 
    Select Package basic
    Wait element button buy package  
    Click button buy package 
    wait element payment type 
    Wait element Qr promtpay
    Select QR promtpay
    Wait element submit 
    Click Submit 

Select package basic 699 One time with QR promptpay 
    Wait element Package basic 
    Select Package basic
    Wait element per-year
    Select per-year 
    Click button buy package
    wait element payment type 
    Wait element Qr promtpay
    Select QR promtpay
    Wait element submit 
    Click Submit 
    
Select package standard 299 Recurring with Credit card
    Wait element Package standard 
    Select Package standard
    Wait element button buy package  
    Click button buy package 
    wait element payment type 
    Click input credit card
    Input number card    ${PK_028.card_number}
    Click input date expire  
    input date expire    ${PK_028.date_expire}
    Click input CVV
    input CVV    ${PK_028.CVV}
    Click input cardholder_name 
    input cardholder name     ${PK_028.cardholder_name}
    Check Radio-btn recurring for 299
    Wait element submit 
    Click Submit

Select package standard 2999 Recurring with Credit card
    Wait element Package standard 
    Select Package standard
    Wait element per-year
    Select per-year
    Wait element button buy package  
    Click button buy package 
    wait element payment type 
    Click input credit card
    Input number card    ${PK_029.card_number}
    Click input date expire  
    input date expire    ${PK_029.date_expire}
    Click input CVV
    input CVV    ${PK_029.CVV}
    Click input cardholder_name 
    input cardholder name     ${PK_029.cardholder_name}
    Check Radio-btn recurring for 2999
    Wait element submit 
    Click Submit

Select package standard 299 onetime with Credit card
    Wait element Package standard 
    Select Package standard
    Wait element button buy package  
    Click button buy package 
    wait element payment type 
    Click input credit card
    Input number card    ${PK_036.card_number}
    Click input date expire  
    input date expire    ${PK_036.date_expire}
    Click input CVV
    input CVV    ${PK_036.CVV}
    Click input cardholder_name 
    input cardholder name     ${PK_036.cardholder_name}
    Should Radio-btn onetime for 299  
    # Wait element submit 
    # Click Submit
    
Select package standard 2999 onetime with Credit card
    Wait element Package standard 
    Select Package standard
    Wait element per-year
    Select per-year
    Wait element button buy package  
    Click button buy package 
    wait element payment type 
    Click input credit card
    Input number card    ${PK_037.card_number}
    Click input date expire  
    input date expire    ${PK_037.date_expire}
    Click input CVV
    input CVV    ${PK_037.CVV}
    Click input cardholder_name 
    input cardholder name     ${PK_037.cardholder_name}
    Should Radio-btn onetime for 2999  
    Wait element submit 
    Click Submit

Upgrade With Select package standard 299 Recurring with Credit card
    Wait element Package standard 
    Select Package standard
    Wait element button buy package  
    Click button buy package 
    wait element payment type 
    Click input credit card
    Input number card    ${PK_042.card_number}
    Click input date expire  
    input date expire    ${PK_042.date_expire}
    Click input CVV
    input CVV    ${PK_042.CVV}
    Click input cardholder_name 
    input cardholder name     ${PK_042.cardholder_name}
    Check Radio-btn recurring for 299
    # Wait element submit 
    # Click Submit
    