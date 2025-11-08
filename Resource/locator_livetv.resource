*** Settings ***
Resource    ../import.resource

*** Variables ***
${accept cookie}    //button[@type="button"][@id="accept-cookie-button"]
${menu-liveTv}    //a[@class="text-white-primary" and (contains(@title, "รายการสด") or contains(@title, "Live"))]
${channel-monoplus}    //div[contains(@class,"text-center") and (contains(text(),"โมโนพลัส") or contains(text(),"Mono Plus"))]
${channel-sport5}    //div[(contains(text(),"Sports5"))]