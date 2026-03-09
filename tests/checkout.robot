*** Settings ***
Documentation    Testovací scénář pro ověření funkčnosti procesu nákupu na e-shopu Tesena.cz. 
    ...          Tento test zahrnuje kompletní workflow pro nákup produktu, včetně přidání produktu do košíku, 
    ...          vyplnění údajů pro objednávku, sečtení celkového součtu ceny a odeslání objednávky.
Resource    ../common.resource

Test Setup    Initialize Browser Session
Test Teardown    Close Browser Session

*** Test Cases ***
Nákup Produktu Pro Ženy
    [Documentation]    Tento test ověřuje kompletní proces nákupu produktu pro ženy, včetně přidání produktu do košíku, 
    ...                vyplnění údajů pro objednávku, sečtení celkového součtu ceny a odeslání objednávky.
    Najede Myší Na Clothes v menu & Vybere Ženu & Přidá Produkt Do košíku