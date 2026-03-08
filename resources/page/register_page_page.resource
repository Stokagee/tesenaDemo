*** Comments ***
Tady se nacházejí základní keywords pro práci s registrační stránkou,
...    které využívají obecné keywords z common.resource a specifické lokátory z register_page_locators.resource.
*** Settings ***
Resource    ../../common.resource

*** Keywords ***

Vybere náhodný gender chekckbox 
    [Documentation]    Vybere náhodně jeden z dvou gender checkboxů (Pan nebo Paní) na registrační stránce.
    ${random_checkbox}=    Evaluate    random.choice(@{REGISTER_PAGE_BOTH_GENDER_CHECKBOXES_FOR_RANDOM_CHOICE})    modules=random
    Log Action    Vyberu checkbox pro gender: ${random_checkbox}
    Click On Checkbox    ${random_checkbox}    jeden ze dvou gender
    RETURN    ${random_checkbox}

Vyplní Křestní Jméno
    [Documentation]    Vyplní pole pro křestní jméno na registrační stránce.
    ${first_name}=    First Name
    Log Action   Vyplním křestní jméno: ${first_name}
    Fill Field    ${REGISTER_PAGE_FIRST_NAME_INPUT}    ${first_name}    Křestní jméno
    RETURN    ${first_name}

Vyplní Příjmení
    [Documentation]    Vyplní pole pro příjmení na registrační stránce.
    ${last_name}=    Last Name
    Log Action   Vyplním příjmení: ${last_name}
    Fill Field    ${REGISTER_PAGE_LAST_NAME_INPUT}    ${last_name}    Příjmení
    RETURN    ${last_name}

Vyplní Email
    [Documentation]    Vyplní pole pro email na registrační stránce.
    ${email}=    Email
    Log Action   Vyplním email: ${email}
    Fill Field    ${REGISTER_PAGE_EMAIL_INPUT}    ${email}    Email
    RETURN    ${email}

Vyplní Heslo
    [Documentation]    Vyplní pole pro heslo na registrační stránce.
    ${password}=    Password    length=12    special_chars=1    digits=1    upper_case=1    lower_case=1
    Log Action   Vyplním heslo: ${password}
    Fill Field    ${REGISTER_PAGE_PASSWORD_INPUT}    ${password}    Heslo
    RETURN    ${password}

Vyplní Datum Narození
    [Documentation]    Vyplní pole pro datum narození na registrační stránce.
    ${birthday}=    Get Current Date    result_format=%d.%m.%Y   increment=-3650
    Log Action   Vyplním datum narození: ${birthday}
    Fill Field    ${REGISTER_PAGE_BIRTHDAY_INPUT}    ${birthday}    Datum narození
    RETURN    ${birthday}

Zaškrtne Opt-in pro speciální nabídky
    [Documentation]    Zaškrtne opt-in checkbox pro speciální nabídky od partner
    Log Action    Zaškrtávám opt-in checkbox pro speciální nabídky
    Click On Checkbox    ${REGISTER_PAGE_OPTIN_CHECKBOX}    Opt-in pro speciální nabídky

Zaškrtne GDPR souhlas
    [Documentation]    Zaškrtne GDPR souhlas pro registraci
    Log Action    Zaškrtávám GDPR souhlas
    Click On Checkbox    ${REGISTER_PAGE_GDPR_CHECKBOX}    GDPR souhlas

Zaškrtne Newsletter
    [Documentation]    Zaškrtne checkbox pro odběr newsletteru
    Log Action    Zaškrtávám checkbox pro odběr newsletteru
    Click On Checkbox    ${REGISTER_PAGE_NEWSLETTER_CHECKBOX}    Newsletter

Zaškrtne Customer Privacy
    [Documentation]    Zaškrtne checkbox pro souhlas s ochranou osobních údajů
    Log Action    Zaškrtávám checkbox pro souhlas s ochranou osobních údajů
    Click On Checkbox    ${REGISTER_PAGE_CUSTOMER_PRIVACY_CHECKBOX}    Customer Privacy

Klikne Na Uložit
    [Documentation]    Klikne na tlačítko pro uložení registrace a tím dokončení procesu registrace.
    Log Action    Klikám na tlačítko Uložit registraci
    Click Element    ${REGISTER_PAGE_SAVE_BUTTON}    Uložit registraci