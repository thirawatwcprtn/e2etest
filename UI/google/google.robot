***settings***
Library    SeleniumLibrary
*** Variables ***
${URL}   https://www.google.com
${BROWSER}    headlesschrome
*** Test Cases ***
ค้นหา คำค้น และตรวจสอบผลการค้นหา
    เข้า Google
    ใส่คำค้นหา ข้าวหมูทอดเฮียวงศ์วงเวียนใหญ่
    กดปุ่ม Enter
    ตรวจสอบผลการค้นพา ต้องพบ ข้าวหมูทอด เฮียวงศ์
*** Keywords ***
เข้า Google
    Open Browser    url=${URL}    browser=${BROWSER} 
    Maximize Browser Window
ใส่คำค้นหา ข้าวหมูทอดเฮียวงศ์วงเวียนใหญ่
    Input Text    name=q    ข้าวขาหมูทอดเฮียวงศ์

กดปุ่ม Enter
    Press Keys    None    RETURN
    # Press Keys    locator keys    RETURN

ตรวจสอบผลการค้นพา ต้องพบ ข้าวหมูทอด เฮียวงศ์
    Wait Until Page Contains    ข้าวขาหมูทอด เฮียวงศ์
