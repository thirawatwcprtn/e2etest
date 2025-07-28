***settings***
Library    SeleniumLibrary
*** Variables ***
${URL}   https://www.google.com
${BROWSER}    headlesschrome
*** Test Cases ***
ค้นหา คำค้น และตรวจสอบผลการค้นหา
    เข้า Google
    ใส่คำค้นหา    ข้าวหมูทอดเฮียวงศ์วงเวียนใหญ่
    กดปุ่ม Enter
    ตรวจสอบผลการค้นพา ต้องพบ ข้าวหมูทอด เฮียวงศ์
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

    Wait Until Element Contains    xpath://*[@id="a-autoid-0-announce"]/span[@class="slot-price"]/span[@class="a-size-base a-color-secondary"]    $20.73