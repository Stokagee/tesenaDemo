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
    Klikne Na Přejít Do Košíku V Modal Okně Po Přidání Do Košíku
    ${item_prices}    ${total_sum}    Get Cart Item Prices And Sum
    Log Action    Získal jsem ceny položek v košíku: ${item_prices} a jejich součet: ${total_sum}. Nyní ověřuji, že tento součet odpovídá zobrazenému mezisoučtu produktů v košíku pro ověření správného výpočtu celkové ceny.
    ${subtotal_price}=    Get Cart Subtotal Products
    Log Action    Ověřuji, že součet cen položek v košíku (${total_sum}) odpovídá zobrazenému mezisoučtu produktů (${subtotal_price}) pro ověření správného výpočtu celkové ceny v košíku.
    Should Be Equal As Numbers    ${total_sum}    ${subtotal_price}    msg=Ověření správného výpočtu celkové ceny v košíku selhalo. Očekávaná cena: ${subtotal_price}, Získaná cena: ${total_sum}
    Klikne Na Pokračovat Do Poklady V Košíku
    Vyplní Údaje Pro Objednávku
    Vyplní Formulář Adresy v košíku
    Vybere Možnost Zvolit Mého Dopravce
    Klikne Na Pokračovat Po Vybrání Dopravce v Košíku
    Ověření Zvoleného Dopravce a Přechod Na stránku S Výběrem Platby v Košíku


Vyplní Údaje Pro Objednávku
    [Documentation]    Vyplní všechny potřebné údaje pro objednávku, včetně jména, příjmení, emailu, telefonního čísla, adresy a dalších informací potřebných pro dokončení nákupu.
    Vybere náhodný gender chekckbox
    ${křestní_pro_ověření}=    Vyplní Jméno v Košíku
    ${příjmení_pro_ověření}=    Vyplní Příjmení v Košíku
    ${email_pro_ověření}=    Vyplní Email v Košíku
    ${heslo_pro_ověření}=    Vyplní Heslo v Košíku
    ${datum_narození_pro_ověření}=    Vyplní Datum Narození v Košíku
    Zaškrtne Opt-in pro speciální nabídky v Košíku
    Zaškrtne GDPR souhlas v Košíku
    Zaškrtne Customer Privacy v Košíku
    Zaškrtne Newsletter v Košíku
    Klikne Na Pokračovat Po Vyplnění Formuláře V Košíku


Vyplní Formulář Adresy v košíku
    [Documentation]    Vyplní všechny potřebné údaje pro adresu v košíku, včetně ulice, města, PSČ a dalších informací potřebných pro dokončení nákupu.
    Vyplní Alias v Košíku
    Vyplní Společnost v Košíku
    Vyplní DIČ v Košíku
    Vyplní Adresu v Košíku
    Vyplní Doplněk Adresy v Košíku
    Vyplní PSČ v Košíku
    Vyplní Město v Košíku
    Vyplní Telefon v Košíku
    Klikne Na Pokračovat Po Vyplnění Adressy V Košíku
    













    Sleep    3