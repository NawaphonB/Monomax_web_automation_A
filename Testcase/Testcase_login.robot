*** Settings ***
Resource    ../import.resource

*** Test Cases ***
LN_001 Success-Login success with E-mail
    open website Monomax 
    Wait Element Page Website 
    click button login
    wait element button login  
    click select login with password 
    Input username    ${LN_001.username}
    Input password    ${LN_001.password}
    click button submit
    Sleep    time_=2

LN_002 Success-Login success with mobile
    open website Monomax 
    Wait Element Page Website 
    click button login
    click select login with password 
    Input username    ${LN_002.username}
    Input password    ${LN_002.password} 
    wait element button login 
    click button submit
    Sleep    time_=2

# LN_003	Success-Login OTP success with E-mail
# LN_004	Success-Login OTP success with Mobile
# LN_005	Success-Login with multiple package success

LN_006 Fail-Login fail with E-mail password incorrect 
    open website Monomax 
    Wait Element Page Website 
    click button login
    click select login with password 
    Input username    ${LN_006.username}
    Input password    ${LN_006.password} 
    wait element button login 
    click button submit
    Sleep    time_=2

LN_007 Fail-Login fail with mobile password incorrect
    open website Monomax 
    Wait Element Page Website 
    click button login
    click select login with password 
    Input username    ${LN_007.username}
    Input password    ${LN_007.password} 
    wait element button login 
    click button submit
    Sleep    time_=2

LN_008 Fail-Login fail E-mail not found
    open website Monomax 
    Wait Element Page Website 
    click button login
    click select login with password 
    Input username    ${LN_008.username}
    Input password    ${LN_008.password} 
    wait element button login 
    click button submit
    Sleep    time_=2

LN_009 Fail-Login fail mobile not found
    open website Monomax 
    Wait Element Page Website 
    click button login
    click select login with password 
    Input username    ${LN_009.username}
    Input password    ${LN_009.password} 
    wait element button login 
    click button submit
    Sleep    time_=2