***settings***
Library    SeleniumLibrary
Resource    resources.resource
*** Variables ***
${URL}   https://www.google.com
${BROWSER}    headlesschrome
*** Test Cases ***
ค้นหา คำค้น และตรวจสอบผลการค้นหา
    เข้า Google
    ใส่คำค้นหา    ข้าวหมูทอดเฮียวงศ์วงเวียนใหญ่
    กดปุ่ม Enter
    ตรวจสอบผลการค้นพา ต้องพบ ข้าวหมูทอด เฮียวงศ์
    เข้าดูข้อมูลของหนังสือ How to Win Friends and Influence People

    
*** Keywords ***
เข้า Google
    Open Browser    url=${URL}    browser=${BROWSER} 
    Maximize Browser Window
ใส่คำค้นหา    
    [Arguments]    ${keyword}
    Input Text    name=q    ${keyword}

กดปุ่ม Enter
    Press Keys    None    RETURN
    # Press Keys    locator keys    RETURN

ตรวจสอบผลการค้นพา ต้องพบ ข้าวหมูทอด เฮียวงศ์
    Wait Until Page Contains    ข้าวขาหมูทอด เฮียวงศ์

เข้าดูข้อมูลของหนังสือ How to Win Friends and Influence People
    Click Link    How to Win Friends and Influence People
    Wait Until Page Contains    Dale Carnegie
    [Teardown]    Close Browser    

    Element Attribute Value Should Be    //*/div/div/span/div/div/div/div[2]/div/div/div[3]/div[1]/div/div[1]/div[2]/div[1]/a/span[1]/span[1]    innerHTML    $21.69