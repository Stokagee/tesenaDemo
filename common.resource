*** Comments ***
Zde je soubour který zastřešuje jako deštník celý projekt. Obsahuje obecné keywords pro práci s prohlížečem, 
...    které jsou využívány napříč všemi stránkami.

*** Settings ***
Library    Browser
Library    FakerLibrary
Library    DateTime

Resource    global_variables.resource

# === LOCATORS ===
Resource    resources/locators/main_page_locators.resource
Resource    resources/locators/register_page_locators.resource
Resource    resources/page/main_page_page.resource
Resource    resources/page/register_page_page.resource
Resource    resources/workflow/register_workflow.resource
Resource    resources/locators/main_clothes_menu/clothes_women_locators.resource
Resource    resources/locators/main_clothes_menu/clothes_men_locators.resource
Resource    resources/workflow/main_workflow.resource
Resource    resources/page/clothes_menu/women.resource
Resource    resources/page/clothes_menu/men.resource
Resource    resources/workflow/checkout_workflow.resource
Resource    resources/locators/main_prislusenstvi_menu/prislusentsvi_stationery_locators.resource
Resource    resources/locators/main_prislusenstvi_menu/prislusentsvi_home_accessories_locators.resource
Resource    resources/page/prislusenstvi_menu/home_accessories_page.resource
Resource    resources/page/prislusenstvi_menu/stationery_page.resource
Resource    resources/locators/main_clothes_menu/clothes_page_locators.resource
Resource    resources/locators/main_prislusenstvi_menu/prislusenstvi_locators.resource
Resource    resources/locators/art_page_locators.resource
Resource    resources/page/art_page_page.resource
Resource    resources/locators/shopping_cart_locators.resource
Resource    resources/page/shopping_cart_page.resource



***Keywords***

# === WAIT KEYWORDS ===

Wait Element Ready
    [Documentation]    Waits for element to be ready for interaction.
    ...                Checks states in order: attached, visible, enabled, stable.
    ...                Use this before any element interaction.
    [Arguments]    ${locator}
    FOR    ${state}    IN    attached    visible    enabled    stable
        Wait For Elements State    ${locator}    ${state}    ${TIMEOUT}
    END

# === CORE KEYWORDS ===

Initialize Browser Session
    [Documentation]    Otevře se nové okno a načte se zadaná URL adresa.
    New Browser    headless=${HEADLESS}   browser=chromium
    New Context
    New Page    url=${TEST_URL}    wait_until=networkidle    
    Set Viewport Size    width=1280    height=800

Close Browser Session
    [Documentation]    Zavře se aktuální okno prohlížeče.
    Close Browser

Click Element
    [Documentation]    Clicks on an element using the specified selector with optional context name for better error messages
    [Arguments]    ${selector}    ${context_name}=${EMPTY}
    TRY
        Wait Element Ready    ${selector}
        Click    ${selector}
    EXCEPT    AS    ${err}
        Take Screenshot
        VAR    ${msg}    Nepodařilo se kliknout na prvek, '${context_name}' --> | selector='${selector}' | ERROR: ${err}
        Fail    ${msg}
    END

Fill Field
    [Documentation]    Fills the specified text into a field using the given locator with optional context name for better error messages
    [Arguments]    ${locator}    ${text}    ${context_name}=${EMPTY}
    TRY
        Wait Element Ready    ${locator}
        Click Element    ${locator}
        #Clear Text    ${locator}
        Fill Text    ${locator}    ${text}
    EXCEPT    AS    ${err}
        Take Screenshot
        VAR    ${msg}    Nepodařilo se vyplnit pole, '${context_name}' --> | locator='${locator}' | ERROR: ${err}
        Fail    ${msg}
    END

Get Element Text
    [Documentation]    Gets text from an element using the specified locator with optional context name for better error messages
    [Arguments]    ${locator}    ${context_name}=${EMPTY}
    VAR    ${text}    ${EMPTY}
    TRY
        Wait Element Ready    ${locator}
        ${text}=    browser.Get Text    ${locator}
    EXCEPT    AS    ${err}
        Take Screenshot
        VAR    ${msg}    Nepodařilo se získat text elementu, '${context_name}' --> | locator='${locator}' | ERROR: ${err}
        Fail    ${msg}
    END
    RETURN    ${text}

Click On Checkbox
    [Documentation]    Checks the checkbox element using the specified locator with optional context name for better error messages
    [Arguments]    ${locator}    ${context_name}=${EMPTY}
    TRY
        Wait Element Ready    ${locator}
        Check Checkbox   ${locator}
    EXCEPT    AS    ${err}
        Take Screenshot
        VAR    ${msg}    Nepodařilo se zaškrtnout checkbox, '${context_name}' --> | locator='${locator}' | ERROR: ${err}
        Fail    ${msg}
    END    

Najetí Myši Na Element
    [Documentation]    Hovers the mouse over the specified element using the given locator with optional context name for better error messages
    [Arguments]    ${locator}    ${context_name}=${EMPTY}
    TRY
        Wait Element Ready    ${locator}
        Hover   ${locator}
    EXCEPT    AS    ${err}
        Take Screenshot
        VAR    ${msg}    Nepodařilo se najet myší na element, '${context_name}' --> | locator='${locator}' | ERROR: ${err}
        Fail    ${msg}
    END

# === LOGGING KEYWORDS ===

Log Action
    [Documentation]    Logs a user action (clicks, navigation, form submissions).
    ...                Use for: button clicks, page navigation, form submissions, etc.
    [Arguments]    ${action_description}
    Log    \n---> ${action_description}    console=${LOG_TO_CONSOLE}

# === Global Keywords ===

Přidat Produkt Do Košíku
    [Documentation]    Přidá produkt do košíku pomocí globálního lokátoru pro tlačítko "Přidat do košíku".
    Log Action    Klikám na tlačítko "Přidat do košíku" pro produkt.
    Click Element    ${GLOBAL_ADD_TO_CART_BUTTON}    Add To Cart Button

Zavřít Modal Okno Po Přidání Do Košíku
    [Documentation]    Zavře modal okno, které se objeví po přidání produktu do košíku, pomocí globálního lokátoru pro tlačítko zavření.
    Log Action    Zavírám modal okno po přidání produktu do košíku.
    Click Element    ${GLOBAL_CLOSE_MODAL_BUTTON}    Close Modal Button

Klikne Na Přejít Do Košíku V Modal Okně Po Přidání Do Košíku
    [Documentation]    Klikne na tlačítko "Přejít do košíku" v modal okně, které se objeví po přidání produktu do košíku, pomocí globálního lokátoru pro toto tlačítko.
    Log Action    Klikám na tlačítko "Přejít do košíku" v modal okně po přidání produktu do košíku.
    Click Element    ${GLOBAL_MODAL_GO_TO_CART_BUTTON}    Go To Cart Button
