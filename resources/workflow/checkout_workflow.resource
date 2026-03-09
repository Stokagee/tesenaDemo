*** Settings ***
Resource    ../common.resource

*** Keywords ***
Najede Myší Na Clothes v menu & Vybere Ženu & Přidá Produkt Do košíku
    [Documentation]    Najede myší na položku "Clothes" v hlavním menu, vybere kategorii 
    ...    pro ženy a přidá první produkt do košíku.
    #Najede Myší Na Clothes v menu & Vybere Ženu
    #Výběr První Položky V Kategorii Pro Ženy
    #Sleep    2    # Nucený sleep. Když není, tak při kliknutí na přidat produkt, se objevím v košíku s textem "....žádne další položky"
    #Přidat Produkt Do Košíku
    #Zavřít Modal Okno Po Přidání Do Košíku
    #Najede Myší Na Příslušenství v menu & Vybere Stacionerie
    #Vybere První Notebook V Kategorii Stacionerie
    #Sleep    2    # Nucený sleep. Když není, tak při kliknutí na přidat produkt, se objevím v košíku s textem "....žádne další položky"
    #Přidat Produkt Do Košíku
    #Zavřít Modal Okno Po Přidání Do Košíku
    Klikne Na Art V Menu
    Vybere První Produkt v ART Kategorii
    Sleep    2    # Nucený sleep. Když není, tak při kliknutí na přidat produkt, se objevím v košíku s textem "....žádne další položky"
    Přidat Produkt Do Košíku
    Klikne Na Přejít Do Košíku V Modal Okně Po Přidání Do Košíku
    Klikne Na Pokračovat Do Poklady V Košíku
    Vyplní Údaje Pro Objednávku


Vyplní Údaje Pro Objednávku
    [Documentation]    Vyplní všechny potřebné údaje pro objednávku, včetně jména, příjmení, emailu, telefonního čísla, adresy a dalších informací potřebných pro dokončení nákupu.
    Vybere náhodný gender chekckbox
    ${křestní_pro_ověření}=    Vyplní Křestní Jméno
    ${příjmení_pro_ověření}=    Vyplní Příjmení
    ${email_pro_ověření}=    Vyplní Email v Košíku
    ${heslo_pro_ověření}=    Vyplní Heslo v Košíku
    ${datum_narození_pro_ověření}=    Vyplní Datum Narození
    Zaškrtne Opt-in pro speciální nabídky
    Zaškrtne GDPR souhlas
    Zaškrtne Customer Privacy
    Zaškrtne Newsletter
    Klikne Na Pokračovat Po Vyplnění Formuláře V Košíku


    Sleep    3