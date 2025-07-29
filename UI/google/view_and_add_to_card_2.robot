***settings***
Library    SeleniumLibrary
Resource    resources.resource
*** Variables ***
${URL}   https://www.amazon.com
${BROWSER}    edge
*** Test Cases ***
ค้นหาหนังสือ เพิ่มลง Shopping Cart สำเร็จ 
    เข้าหน้าแรกของที่ https://www.amazon.com
    ใส่คำค้น How Google Tests Software
    ตรวจสอบผลการค้นหาหนังสือ How Google Tests Software
    # ตรวจสอบราคาหนังสือ แบบ Paperback How Google Tests Software
    # ตรวจสอบราคาหนังสือ แบบ Kindle How Google Tests Software
    # เข้้าดูข้อมูลของหนังสือ How Google Tests Software
    # ตรวจสอบชื่อราคาหนังสือ ที่ หน้ารายละเอียดหนังสือ How Google Tests Software
    # ตรวจสอบราคาหนังสือ แบบ Paperback ที่ หน้ารายละเอียดหนังสือ How Google Tests Software
    # ตรวจสอบราคาหนังสือ แบบ Kindle ที่ หน้ารายละเอียดหนังสือ How Google Tests Software
    # เลือกซื้อหนังสือจำนวน 2 เล่ม
    # เพิ่มหนังสือเข้าตระกร้าสินค้า
    # ตรวจสอบการเพิ่มหนังสือเข้าตระกร้าสินค้าสำเร็จ
    # กดปุ่ม Go to Cart เข้าไปที่ตระกร้าสินค้า
    # ตรวจสอบชื่อราคาหนังสือ ที่ หน้าตระกร้าสินค้า How Google Tests Software
    # ตรวจสอบราคาหนังสือ แบบ Paperback ที่ หน้าตระกร้าสินค้า How Google Tests Software
    # ตรวจสอบจำนวนหนังสือ แบบ Paperback ที่ หน้าตระกร้าสินค้า How Google Tests Software
    # ตรวจสอบจำนวนหนังสือทั้งหมด (Subtotal) ที่ หน้าตระกร้าสินค้า
    # ตรวจสอบจำนวนเงินรวม (Subtotal) ที่ หน้าตระกร้าสินค้า
    # ตรวจสอบจำนวนหนังสือทั้งหมด (Subtotal) ที่ หน้าตระกร้าสินค้า ส่วนของ Processed to checkout
    # ตรวจสอบจำนวนเงินรวม (Subtotal) ที่ หน้าตระกร้าสินค้า ส่วนของ Processed to checkout

*** Keywords ***
เข้าหน้าแรกของที่ https://www.amazon.com
    Open Browser    url=${URL}   browser=${BROWSER} 
    Maximize Browser Window
    Wait Until Page Contains Element    id=nav-logo-sprites
ใส่คำค้น How Google Tests Software
    Input Text    name:field-keywords    text=How Google Tests Software
    Press Keys    None    RETURN
ตรวจสอบผลการค้นหาหนังสือ How Google Tests Software
    Wait Until Page Contains    How Google Tests Software



