*** Comments ***
Tady se keywordy slučují a tvoří se z nich kompletní workflow pro registraci nového uživatele.
*** Settings ***
Resource    ../common.resource

*** Keywords ***
Registrace Nového Uživatele
    [Documentation]    Kompletní workflow pro registraci nového uživatele, které zahrnuje všechny kroky 
    ...    od výběru genderu, vyplnění jména, adresy až po odeslání registračního formuláře.
    Klikne Na regiter tlacitko
    Vybere náhodný gender chekckbox
    ${křestní_pro_ověření}=    Vyplní Křestní Jméno
    ${příjmení_pro_ověření}=    Vyplní Příjmení
    ${email_pro_ověření}=    Vyplní Email
    ${heslo_pro_ověření}=    Vyplní Heslo
    ${datum_narození_pro_ověření}=    Vyplní Datum Narození
    Zaškrtne Opt-in pro speciální nabídky
    Zaškrtne GDPR souhlas
    Zaškrtne Customer Privacy
    Zaškrtne Newsletter
    Klikne Na Uložit
    Ověření úspěšné registrace    ${křestní_pro_ověření} ${příjmení_pro_ověření}