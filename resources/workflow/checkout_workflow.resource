*** Settings ***
Resource    ../common.resource

*** Keywords ***
Najede Myší Na Clothes v menu & Vybere Ženu & Přidá Produkt Do košíku
    [Documentation]    Najede myší na položku "Clothes" v hlavním menu, vybere kategorii 
    ...    pro ženy a přidá první produkt do košíku.
    Najede Myší Na Clothes v menu & Vybere Ženu
    Výběr První Položky V Kategorii Pro Ženy
    Sleep    2    # Nucený sleep. Když není, tak při kliknutí na přidat produkt, se objevím v košíku s textem "....žádne další položky"
    Přidat Produkt Do Košíku
    Zavřít Modal Okno Po Přidání Do Košíku
    Najede Myší Na Příslušenství v menu & Vybere Stacionerie
    Vybere První Notebook V Kategorii Stacionerie
    Sleep    2    # Nucený sleep. Když není, tak při kliknutí na přidat produkt, se objevím v košíku s textem "....žádne další položky"
    Přidat Produkt Do Košíku
    Zavřít Modal Okno Po Přidání Do Košíku
    Klikne Na Art V Menu
    Vybere První Produkt v ART Kategorii
    Sleep    2    # Nucený sleep. Když není, tak při kliknutí na přidat produkt, se objevím v košíku s textem "....žádne další položky"
    Přidat Produkt Do Košíku
    Zavřít Modal Okno Po Přidání Do Košíku




    Sleep    3