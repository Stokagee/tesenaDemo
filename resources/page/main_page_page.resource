*** Comments ***
Tady se nacházejí základní keywords pro práci s hlavní stránkou, 
...    které využívají obecné keywords z common.resource a specifické lokátory z main_page_locators.resource.
*** Settings ***
Resource    ../../common.resource


*** Keywords ***
Klikne Na regiter tlacitko
    [Documentation]    Klikne na tlačítko pro registraci na hlavní stránce.
    Click Element    ${MAIN_PAGE_REGISTER_BUTTON}    Register Button

Ověření úspěšné registrace
    [Documentation]    Ověří, že se uživatel úspěšně zaregistroval a je přihlášen, tím že zkontroluje přítomnost tlačítka pro odhlášení.
    [Arguments]    ${text}
    Log Action    Ověřuji úspěšnou registraci, kontroluji přítomnost odhlášení a zobrazení jména uživatele: ${text}
    ${text_for_verify}=    Get Element Text    ${MAIN_PAGE_ACCOUNT_BUTTON}
    Should Contain   ${text_for_verify}    ${text}    Ověření úspěšné registrace

