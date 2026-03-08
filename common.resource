*** Settings ***
Library    Browser
Library    FakerLibrary

Resource    global_variables.resource

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
    New Browser    headless=False    browser=chromium
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
        VAR    ${msg}    Failed when, '${context_name}' --> | selector='${selector}' | ERROR: ${err}
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
        VAR    ${msg}    Failed when, '${context_name}' --> | locator='${locator}' | ERROR: ${err}
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
        VAR    ${msg}    Failed when, '${context_name}' --> | locator='${locator}' | ERROR: ${err}
        Fail    ${msg}
    END
    RETURN    ${text}

Select Random Dropdown Option
    [Documentation]    Opens dropdown and randomly selects a car type
    [Arguments]    ${locator}    ${context_name}=${EMPTY}
    TRY
        Wait Element Ready    ${locator}
        ${options}=    Get Select Options    ${locator}
        @{labels}=    Evaluate    [o['label'] for o in ${options}]
        ${choice}=    Evaluate    random.choice(${labels})    modules=random
        Log    Selected: ${choice}    console=${LOG_TO_CONSOLE}
        Select Options By    ${locator}    text    ${choice}
    EXCEPT    AS    ${err}
        Take Screenshot
        VAR    ${msg}    Failed when, '${context_name}'  --> | locator='${locator}' | ERROR: ${err}
    END

# === LOGGING KEYWORDS ===

Log Action
    [Documentation]    Logs a user action (clicks, navigation, form submissions).
    ...                Use for: button clicks, page navigation, form submissions, etc.
    [Arguments]    ${action_description}
    Log    \n---> ${action_description}    console=${LOG_TO_CONSOLE}