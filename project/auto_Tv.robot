*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
tc-001 555    Open Application    http://localhost:4723    
    ...    platformName= Android   
    ...    deviceName= emulator-5554     
    ...    platformVersion= 16 
    ...    automationName= Espresso    
    ...    appPackage= com.doonung.dtv.staging    
    ...    appActivity= com.doonung.activity.tv.sidemenu.TVMainTabsActivity   
    ...    noReset= true
