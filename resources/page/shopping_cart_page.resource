*** Settings ***
Resource    ../common.resource

*** Keywords ***

Klikne Na Pokračovat Do Poklady V Košíku
    [Documentation]    Klikne na tlačítko "Pokračovat do pokladny" v košíku, aby se přesměroval na stránku s formulářem pro vyplnění údajů pro objednávku.
    Log Action    Klikám na tlačítko "Pokračovat do pokladny" v košíku pro přesměrování na stránku s formulářem pro objednávku.
    Click Element    ${SHOPPING_CART_GO_TO_CHECKOUT_BUTTON}    Pokračovat Do Pokladny V Košíku

Klikne Na Pokračovat Po Vyplnění Formuláře V Košíku
    [Documentation]    Klikne na tlačítko "Pokračovat" v košíku po vyplnění údajů pro objednávku, aby se odeslala objednávka a dokončil nákup.
    Log Action    Klikám na tlačítko "Pokračovat" v košíku pro odeslání objednávky.
    Click Element    ${SHOPPING_CART_FORM_CONTINUE_BUTTON}    Pokračovat Po Vyplnění Formuláře V Košíku

Vyplní Email v Košíku
    [Documentation]    Vyplní emailovou adresu do příslušného pole v košíku, aby se mohl pokračovat v procesu objednávky.
    ${email}=     Email
    Log Action    Vyplňuji emailovou adresu do pole pro email v košíku pro pokračování v procesu objednávky.
    Fill Field    ${SHOPPING_CART_EMAIL_INPUT}    ${email}    Email Input V Košíku
    RETURN    ${email}

Vyplní Heslo v Košíku
    [Documentation]    Vyplní heslo do příslušného pole v košíku, aby se mohl pokračovat v procesu objednávky.
    ${heslo}=     Password
    Log Action    Vyplňuji heslo do pole pro heslo v košíku pro pokračování v procesu objednávky.
    Fill Field    ${SHOPPING_CART_PASSWORD_INPUT}    ${heslo}    Heslo Input V Košíku
    RETURN    ${heslo}

Vyplní Jméno v Košíku
    [Documentation]    Vyplní křestní jméno do příslušného pole v košíku, aby se mohl pokračovat v procesu objednávky.
    Vyplní Křestní Jméno
    
Vyplní Příjmení v Košíku
    [Documentation]    Vyplní příjmení do příslušného pole v košíku, aby se mohl pokračovat v procesu objednávky.
    Vyplní Příjmení

Vyplní Datum Narození v Košíku
    [Documentation]    Vyplní datum narození do příslušného pole v košíku, aby se mohl pokračovat v procesu objednávky.
    Vyplní Datum Narození

Zaškrtne Opt-in pro speciální nabídky v Košíku
    [Documentation]    Zaškrtne opt-in pro speciální nabídky v košíku, aby se mohl pokračovat v procesu objednávky.
    Zaškrtne Opt-in pro speciální nabídky

Zaškrtne GDPR souhlas v Košíku
    [Documentation]    Zaškrtne GDPR souhlas v košíku, aby se mohl pokračovat v procesu objednávky.
    Zaškrtne GDPR souhlas

Zaškrtne Customer Privacy v Košíku
    [Documentation]    Zaškrtne souhlas s ochranou osobních údajů (Customer Privacy) v košíku, aby se mohl pokračovat v procesu objednávky.
    Zaškrtne Customer Privacy

Zaškrtne Newsletter v Košíku
    [Documentation]    Zaškrtne souhlas s odběrem newsletteru v košíku, aby se mohl pokračovat v procesu objednávky.
    Zaškrtne Newsletter
Vyplní Alias v Košíku
    [Documentation]    Vyplní alias pro adresu do příslušného pole v košíku, je to form na adresu.
    ${alias}=     Street Name
    Log Action    Vyplňuji alias pro adresu do pole pro alias v košíku pro pokračování v procesu objednávky.
    Fill Field    ${SHOPPING_CART_ALIAS_INPUT}    ${alias}    Alias Input V Košíku
    RETURN    ${alias}

Vyplní Společnost v Košíku
    [Documentation]    Vyplní název společnosti do příslušného pole v košíku, je to form na adresu.
    ${company}=     Company
    Log Action    Vyplňuji název společnosti do pole pro společnost v košíku pro pokračování v procesu objednávky.
    Fill Field    ${SHOPPING_CART_COMPANY_INPUT}    ${company}    Společnost Input V Košíku
    RETURN    ${company}

Vyplní DIČ v Košíku
    [Documentation]    Vyplní DIČ do příslušného pole v košíku, je to form na adresu.
    ${number}=     Random Number    digits=8
    VAR    ${vat_number}    CZ${number}
    Log Action    Vyplňuji DIČ do pole pro DIČ v košíku pro pokračování v procesu objednávky.
    Fill Field    ${SHOPPING_CART_VAT_NUMBER_INPUT}    ${vat_number}    DIČ Input V Košíku
    RETURN    ${vat_number}

Vyplní Adresu v Košíku
    [Documentation]    Vyplní adresu do příslušného pole v košíku, je to form na adresu.
    ${address}=     Street Address
    Log Action    Vyplňuji adresu do pole pro adresu v košíku pro pokračování v procesu objednávky.
    Fill Field    ${SHOPPING_CART_ADDRESS1_INPUT}    ${address}    Adresa Input V Košíku
    RETURN    ${address}

Vyplní Doplněk Adresy v Košíku
    [Documentation]    Vyplní doplněk adresy do příslušného pole v košíku, je to form na adresu.
    ${address2}=     Secondary Address
    Log Action    Vyplňuji doplněk adresy do pole pro doplněk adresy v košíku pro pokračování v procesu objednávky.
    Fill Field    ${SHOPPING_CART_ADDRESS2_INPUT}    ${address2}    Doplněk Adresy Input V Košíku
    RETURN    ${address2}

Vyplní PSČ v Košíku
    ${postcode}=    Postcode
    ${postcode}=    Evaluate    "${postcode[:3]} ${postcode[3:]}"
    Fill Field    ${SHOPPING_CART_POSTCODE_INPUT}    ${postcode}    PSČ Input V Košíku
    RETURN    ${postcode}

Vyplní Město v Košíku
    [Documentation]    Vyplní město do příslušného pole v košíku, je to form na adresu.
    ${city}=     City
    Log Action    Vyplňuji město do pole pro město v košíku pro pokračování v procesu objednávky.
    Fill Field    ${SHOPPING_CART_CITY_INPUT}    ${city}    Město Input V Košíku
    RETURN   ${city}

Vyplní Telefon v Košíku
    [Documentation]    Vyplní telefonní číslo do příslušného pole v košíku, je to form na adresu.
    ${phone}=     Random Number    digits=9
    Log Action    Vyplňuji telefonní číslo do pole pro telefon v košíku pro pokračování v procesu objednávky.
    Fill Field    ${SHOPPING_CART_PHONE_INPUT}    ${phone}    Telefon Input V Košíku
    RETURN    ${phone}

Vybere Náhodnou Zemi v Košíku
    [Documentation]    Vybere zemi z dropdownu v košíku, je to form na adresu.
    Log Action    Vyberu zemi z dropdownu pro zemi v košíku pro pokračování v procesu objednávky.
    ${selected_value}=    Select Random Dropdown Value    ${SHOPPING_CART_COUNTRY_DROPDOWN}    value    False    Country Dropdown V Košíku
    RETURN    ${selected_value}

Klikne Na Pokračovat Po Vyplnění Adressy v Košíku
    [Documentation]    Klikne na tlačítko "Pokračovat" v košíku po vyplnění údajů pro adresu, aby se mohl pokračovat v procesu objednávky.
    Log Action    Klikám na tlačítko "Pokračovat" v košíku po vyplnění údajů pro adresy pro pokračování v procesu objednávky.
    Click Element    ${SHOPPING_CART_ADDRESSES_FORM_CONTINUE_BUTTON}    Pokračovat Po Vyplnění Adresy V Košíku

Vybere Možnost Zvolit Mého Dopravce
    [Documentation]    Vybere možnost "Zvolit mého dopravce" v košíku, aby se mohl pokračovat v procesu objednávky.
    Log Action    Vyberu možnost "Zvolit mého dopravce" v košíku pro pokračování v procesu objednávky.
    Click On Checkbox    ${SHOPPING_CART_DELIVERY_OPTION_MY_CARRIER_CHECKBOX}    Zvolit Mého Dopravce V Košíku

Klikne Na Pokračovat Po Vybrání Dopravce v Košíku
    [Documentation]    Klikne na tlačítko "Pokračovat" v košíku po vybrání dopravce, aby se mohl pokračovat v procesu objednávky.
    Log Action    Klikám na tlačítko "Pokračovat" v košíku po vybrání dopravce pro pokračování v procesu objednávky.
    Click Element    ${SHOPPING_CART_DELIVERY_OPTION_FORM_CONTINUE_BUTTON}    Pokračovat Po Vybrání Dopravce V Košíku

Ověření Zvoleného Dopravce a Přechod Na stránku S Výběrem Platby v Košíku
    [Documentation]    Ověří, že byla zvolena možnost "Zvolit mého dopravce" v košíku, a poté klikne na tlačítko pro pokračování na stránku s výběrem platby.
    Log Action    Ověřuji, že byla zvolena možnost "Zvolit mého dopravce" v košíku a pokračuji na stránku s výběrem platby.
    Wait Element Ready    "Bohužel není k dispozici žádná platební metoda."









