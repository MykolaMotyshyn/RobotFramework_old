*** Variables ***
${URL}  https://translate.google.com.ua/
${BROWSER}  chrome
${INPUT}  apple
${OUTPUT}  яблуко
${INPUT_LANGUAGE}  //div[@value='en']
${OUTPUT_LANGUAGE}  //div[contains(text(),'Ukrainian')]
${TEXT_AREA}  //textarea[@id='source']
${OUTPUT_TEST_AREA}  //div[@class='gendered-translations-header']