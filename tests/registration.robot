*** Settings ***
Documentation    Testovací scénář pro ověření funkčnosti registračního procesu na e-shopu Tesena.cz. 
    ...          Tento test zahrnuje kompletní workflow pro registraci nového uživatele, včetně výběru genderu, 
    ...          vyplnění osobních údajů, a odeslání formuláře.
Resource    ../common.resource

Test Setup    Initialize Browser Session
Test Teardown    Close Browser Session

*** Test Cases ***
Registrace Nového Uživatele & Ověření Úspěšné Registrace
    [Documentation]    Testovací případ pro ověření, že nový uživatel může úspěšně projít registračním procesem.
    Registrace Nového Uživatele