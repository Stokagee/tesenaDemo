*** Comments ***
Tady se nacházejí základní keywords pro práci s hlavní stránkou, 
...    které využívají obecné keywords z common.resource a specifické lokátory z main_page_locators.resource.
*** Settings ***
Resource    ../../common.resource


*** Keywords ***
Klikne Na regiter tlacitko
    [Documentation]    Klikne na tlačítko pro registraci na hlavní stránce, které je je na spodu stránky v patičce.
    Log Action    Klikám na tlačítko pro registraci na hlavní stránce.
    Click Element    ${MAIN_PAGE_REGISTER_BUTTON}    Register Button

Ověření úspěšné registrace
    [Documentation]    Ověří, že se uživatel úspěšně zaregistroval a je přihlášen, tím že zkontroluje přítomnost tlačítka pro odhlášení.
    [Arguments]    ${text}
    Log Action    Ověřuji úspěšnou registraci, kontroluji přítomnost odhlášení a zobrazení jména uživatele: ${text}
    ${text_for_verify}=    Get Element Text    ${MAIN_PAGE_ACCOUNT_BUTTON}
    Should Contain   ${text_for_verify}    ${text}    Ověření úspěšné registrace

Najede Myší Na Clothes v menu
    [Documentation]    Najede myší na položku "Clothes" v hlavním menu pro zobrazení podmenu s možností výběru pro muže a ženy.
    Log Action    Najíždím myší na položku "Clothes" v hlavním menu.
    Najetí Myši Na Element    ${MAIN_PAGE_MENU_BAR_CLOTHES_DROPDOWN}    Clothes Dropdown Menu

Klikne Na Clothes Pro Ženy V Menu
    [Documentation]    Klikne na položku "Women" v podmenu "Clothes" pro zobrazení kategorie oblečení pro ženy.
    Log Action    Klikám na položku "Women" v podmenu "Clothes".
    Najetí Myši Na Element    ${MAIN_PAGE_MENU_BAR_CLOTHES_FOR_WOMEN_BUTTON}    Ověření, že se zobrazila kategorie oblečení pro ženy, tím že zkontroluje přítomnost specifického produktu v této kategorii.
    Click Element    ${MAIN_PAGE_MENU_BAR_CLOTHES_FOR_WOMEN_BUTTON}    kliknutí na kategorii oblečení pro ženy

Najede Myší Na Příslušenství v menu
    [Documentation]    Najede myší na položku "Příslušenství" v hlavním menu pro zobrazení podmenu s možností výběru pro stacionerie a domácí příslušenství.
    Log Action    Najíždím myší na položku "Příslušenství" v hlavním menu.
    Najetí Myši Na Element    ${MAIN_PAGE_MENU_BAR_PRISLUSENTSTVI_DROPDOWN}    Příslušenství Dropdown Menu

Klikne Na Příslušenství Pro Stacionerie V Menu
    [Documentation]    Klikne na položku "Stacionerie" v podmenu "Příslušenství" pro zobrazení kategorie stacionerie.
    Log Action    Klikám na položku "Stacionerie" v podmenu "Příslušenství".
    Najetí Myši Na Element    ${MAIN_PAGE_MENU_BAR_PRISLUSENTSTVI_STACIONERIE_BUTTON}    Ověření, že se zobrazila kategorie stacionerie, tím že zkontroluje přítomnost specifického produktu v této kategorii.
    Click Element    ${MAIN_PAGE_MENU_BAR_PRISLUSENTSTVI_STACIONERIE_BUTTON}    kliknutí na kategorii stacionerie    