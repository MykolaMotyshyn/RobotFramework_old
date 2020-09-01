*** Settings ***

*** Test Cases ***
Checking the translation
    [Tags]
    Given the user is on the google translate page
    When select languages from 'english' to 'Ukrainian'
    Then the user check the translation of word
    And the user should see the translated word