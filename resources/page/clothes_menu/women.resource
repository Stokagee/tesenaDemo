*** Settings ***
Resource    ../common.resource

*** Keywords ***

Výběr První Položky V Kategorii Pro Ženy
    [Documentation]    Vybere první položku z kategorie oblečení pro ženy a klikne na ni pro zobrazení detailů produktu.
    ...    Je to bílé trričko s dlouhým rukávem.
    Log Action    Klikám na první položku v kategorii pro ženy.
    Click Element    ${CLOTHES_WOMEN_PRODUCT_ITEM_2_BUTTON}    kliknutí na první položku pro ženy