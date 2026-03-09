*** Settings ***
Resource    ../common.resource

*** Keywords ***
Najede Myší Na Clothes v menu & Vybere Ženu & Přidá Produkt Do košíku
    [Documentation]    Najede myší na položku "Clothes" v hlavním menu, vybere kategorii 
    ...    pro ženy a přidá první produkt do košíku.
    Najede Myší Na Clothes v menu & Vybere Ženu
    Výběr První Položky V Kategorii Pro Ženy
    Přidat Produkt Do Košíku
    