*** Settings ***
Resource    ../common.resource


*** Keywords ***

Vybere První Notebook V Kategorii Stacionerie
    [Documentation]    Vybere první notebook v kategorii stacionerie pomocí lokátoru pro první položku v této kategorii.
    Log Action    Vyberu první notebook v kategorii stacionerie.
    Click Element    ${PRISLUSENTSTVI_STACIONERIE_PRODUCT_ITEM_1_BUTTON}    First Stationery Product Item Button