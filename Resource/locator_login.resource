*** Settings ***
Resource    ../import.resource

*** Variables ***
${Wait Element Page Website}    xpath=//button[@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-4 py-2 bg-transparent text-ui-secondary border-2 border-ui-primary hover:bg-ui-primary/30 active:bg-transparent']    
${Element button Login}    //button[normalize-space()='เข้าสู่ระบบ'][@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-4 py-2 bg-transparent text-ui-secondary border-2 border-ui-primary hover:bg-ui-primary/30 active:bg-transparent']
${Element select login with password}    //div//span[@class='cursor-pointer']
${Element-Field-username}    //input[@type='text'][@class='form-input w-full']
${Element-Field-password}    //div/input[@type='password']
${Click login}    //div/button[@class='md:block rounded-lg font-bold whitespace-nowrap transition duration-200 ease-in-out px-6 py-3 bg-ui-primary text-ui-secondary hover:bg-ui-primary-hover active:bg-ui-primary focus:outline-none focus:ring focus:ring-ui-primary-stroke w-full']
${wait element button login}   //div[@class='text-right text-sm']/span[@class="cursor-pointer"]