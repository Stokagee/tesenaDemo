*** Settings ***
Resource    ../common.resource

*** Keywords ***

Vybere První Produkt v ART Kategorii
    [Documentation]    Vybere první produkt v kategorii ART pomocí lokátoru specifického pro tuto kategorii.
    Log Action    Vyberu první produkt v kategorii ART.
    Click Element    ${ART_PAGE_FIRST_ITEM_BUTTON}    First Item Button in ART Category