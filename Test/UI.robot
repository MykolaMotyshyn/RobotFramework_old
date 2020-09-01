*** Settings ***
Documentation  Product availability

Library  SeleniumLibrary

*** Variables ***
${BASE_URL}  https://rozetka.com.ua/ua
${BROWSER}  chrome
${SEARCH_TEXT}  Apple Iphone 11 PRO
${SEARCH_BUTTON}  xpath://button[@class='button button_color_green button_size_medium search-form__submit']
${SORTING_TYPE}  //*[@title='Крупна плитка']
${PRICE}  //p[@class='product-prices__big']
${BUY_BUTTON}  //app-buy-button[@goods_id='138132290']/button[@type='button']
${CART_CONFIRMATION}  //div[@class='cart-modal__check']//span[text()='Оформити замовлення']
${SITE_LANGUAGE}  //a[text()='UA']

*** Test Case ***

UI Checking of goods
    open browser  ${BASE_URL}  ${BROWSER}
    maximize browser window
    set browser implicit wait  10
    click element  ${SITE_LANGUAGE}
    input text  name:search  ${SEARCH_TEXT}
    click button  ${SEARCH_BUTTON}
    click link  ${PRODUCT}
    page should contain element  ${PRICE}
    click button  ${BUY_BUTTON}
    page should contain element  ${SCART_CONFIRMATION}