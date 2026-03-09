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

Vyplní Heslo v Košíku
    [Documentation]    Vyplní heslo do příslušného pole v košíku, aby se mohl pokračovat v procesu objednávky.
    ${heslo}=     Password
    Log Action    Vyplňuji heslo do pole pro heslo v košíku pro pokračování v procesu objednávky.
    Fill Field    ${SHOPPING_CART_PASSWORD_INPUT}    ${heslo}    Heslo Input V Košíku