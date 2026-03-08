*** Settings ***
Documentation    Testovací scénář pro ověření funkčnosti registračního procesu na e-shopu Tesena.cz. 
    ...          Tento test zahrnuje kompletní workflow pro registraci nového uživatele, včetně výběru genderu, 
    ...          vyplnění osobních údajů, a odeslání formuláře.
Resource    ../common.resource

*** Test Cases ***
Registrace Nového Uživatele
    [Documentation]    Testovací případ pro ověření, že nový uživatel může úspěšně projít registračním procesem.
    [Setup]    Initialize Browser Session
    Registrace Nového Uživatele
    [Teardown]    Close Browser Session