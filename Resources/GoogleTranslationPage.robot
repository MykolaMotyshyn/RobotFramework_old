*** Settings ***

Resource  ../Resources/PageObj/GoogleTrPage.robot
Library  SeleniumLibrary
*** Keywords ***
the user is on the google translate page
    open browser  ${URL}  ${BROWSER}
    maximize browser window
    set browser implicit wait  5s

select languages from 'english' to 'ukrainian'
    click element  ${OUTPUT_LANGUAGE}
    click element  ${INPUT_LANGUAGE}

the user check the translation of word
    input text  ${TEXT_AREA}  ${INPUT}

the user should see the translated word
    get text  ${OUTPUT_TEXT_AREA}
