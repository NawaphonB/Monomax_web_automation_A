*** Settings ***
Resource    ../import.resource

*** Variables ***
${Nav}    //header/div[@class="items-center flex justify-between px-4"]
${nav profile non package}    //*[@id='topbar-right-nav']//button[.//i[contains(@class,'chevron')]]
${Menu package}    //div[@class="py-1"]/a[@href="/packages"]
${Package category}    //div[@class="container mx-auto px-4"]
${Package basic}    //div[@class="relative mt-3 rounded-lg"]//button
${button buy package}    //div[@class="flex-shrink-0 pt-4"]/button[@type="button"]
${credit card}    //button[@class="flex items-center justify-between w-full p-4 bg-ui-tertiary rounded-md border border-ui-outline hover:bg-ui-tertiary-hover"]//span[@class="h3-bold mr-4 max-w-full text-start"]
${input card number}   //div[@class="space-y-3"]//input[contains(@placeholder, 'หมายเลขบัตร') or contains(@placeholder, 'Card number')]
${input date expire}     //div[@class="space-y-3"]//input[contains(@placeholder, 'วันหมดอายุ') or contains(@placeholder, 'Expiration date')]
${input cvv}     //div[@class="space-y-3"]//input[contains(@placeholder, 'CVV')]    
${input Cardholder name}    //div[@class="space-y-3"]//input[contains(@placeholder, 'ชื่อผู้ถือบัตร') or contains(@placeholder, 'Cardholder name')]    
${Select recurring}    //div[@class="flex flex-col space-y-3"]/label//span[contains(text(), "Recurring") or contains(text(), "ต่ออายุอัตโนมัติ")]
${Click Submit}    //button[contains(@class, 'bg-ui-primary') and (normalize-space(.)='ชำระเงิน' or normalize-space(.)='Proceed to payment')]
${Select per-year}    //div//button[@class="text-white flex-1 py-2 text-center h4-bold rounded-xl transition-all"][contains(text(), "รายปี") or contains(text(), "Yearly")]        
${QR promtpay}    //span[@class="h3-bold mr-4 max-w-full"][contains(text(), "QR พร้อมเพย์") or contains(text(), "QR prompay")]
${Package standard}    //div[@class="relative mt-3 rounded-lg brand-grad p-[2px]"]//button[@class="btn-primary w-full min-w-40"]
${nav profile has package}     //li[@class="nav-item dropdown member-dropdown"]/a[@id="memberDropdown"]
${Select menu package 2}    //a[@class="dropdown-item"][contains(text(), "ซื้อแพ็กเกจ") or contains(text(), "Buy Package")]    