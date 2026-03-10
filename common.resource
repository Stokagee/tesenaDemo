*** Comments ***
This is the main resource file that serves as an umbrella for the entire project.
...    It contains general keywords for browser operations that are used across all pages.

*** Settings ***
Library    Browser
Library    FakerLibrary
Library    DateTime
Library    Collections
Library    String

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
    [Documentation]    Opens a new browser window and navigates to the specified URL.
    New Browser    headless=${HEADLESS}   browser=chromium
    New Context
    New Page    url=${TEST_URL}    wait_until=networkidle    
    Set Viewport Size    width=1280    height=800

Close Browser Session
    [Documentation]    Closes the current browser window.
    Close Browser

Click Element
    [Documentation]    Clicks on an element using the specified selector with optional context name for better error messages
    [Arguments]    ${selector}    ${context_name}=${EMPTY}
    TRY
        Wait Element Ready    ${selector}
        Click    ${selector}
    EXCEPT    AS    ${err}
        Take Screenshot
        VAR    ${msg}    Failed to click element, '${context_name}' --> | selector='${selector}' | ERROR: ${err}
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
        VAR    ${msg}    Failed to fill field, '${context_name}' --> | locator='${locator}' | ERROR: ${err}
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
        VAR    ${msg}    Failed to get element text, '${context_name}' --> | locator='${locator}' | ERROR: ${err}
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
        VAR    ${msg}    Failed to check checkbox, '${context_name}' --> | locator='${locator}' | ERROR: ${err}
        Fail    ${msg}
    END    

Hover Over Element
    [Documentation]    Hovers the mouse over the specified element using the given locator with optional context name for better error messages
    [Arguments]    ${locator}    ${context_name}=${EMPTY}
    TRY
        Wait Element Ready    ${locator}
        Hover   ${locator}
    EXCEPT    AS    ${err}
        Take Screenshot
        VAR    ${msg}    Failed to hover over element, '${context_name}' --> | locator='${locator}' | ERROR: ${err}
        Fail    ${msg}
    END

Select Random Dropdown Value
    [Documentation]    Selects a random item from a dropdown and returns it.
    ...                Parameter skip_first=True skips the first item (useful where first is default/placeholder)
    ...                Parameter attribute determines selection criteria: text (default), value, index, label
    ...                Usage: ${selected}=    Select Random Dropdown Value    ${locator}
    [Arguments]    ${locator}    ${attribute}    ${skip_first}    ${context_name}=${EMPTY}
    TRY
        Wait Element Ready    ${locator}

        # Get all options from dropdown
          ${options}=    Get Select Options    ${locator}
          @{values}=    Evaluate    [o['${attribute}'] for o in ${options}]

        # Random selection with option to skip first
        ${start_index}=    Set Variable If    ${skip_first}    1    0
        ${length}=    Get Length    ${values}
        ${random_index}=    Evaluate    random.randint(${start_index}, ${length} - 1)    modules=random
        ${selected_value}=    Get From List    ${values}    ${random_index}

        # Perform selection
        Select Options By    ${locator}    ${attribute}    ${selected_value}
        Log    Selected: ${selected_value}    console=${LOG_TO_CONSOLE}
    EXCEPT    AS    ${err}
        Take Screenshot
        VAR    ${msg}    Failed when '${context_name}' --> | locator='${locator}' | attribute='${attribute}' | ERROR: ${err}
        Fail    ${msg}
    END
    RETURN    ${selected_value}

# === LOGGING KEYWORDS ===

Log Action
    [Documentation]    Logs a user action (clicks, navigation, form submissions).
    ...                Use for: button clicks, page navigation, form submissions, etc.
    [Arguments]    ${action_description}
    Log    \n---> ${action_description}    console=${LOG_TO_CONSOLE}

# === Global Keywords ===

Add Product To Cart
    [Documentation]    Adds product to cart using the global locator for the "Add to cart" button.
    Log Action    Clicking on "Add to cart" button for the product.
    Click Element    ${GLOBAL_ADD_TO_CART_BUTTON}    Add To Cart Button

Close Modal After Adding To Cart
    [Documentation]    Closes the modal window that appears after adding a product to the cart, using the global locator for the close button.
    Log Action    Closing modal window after adding product to cart.
    Click Element    ${GLOBAL_CLOSE_MODAL_BUTTON}    Close Modal Button

Click Go To Cart In Modal
    [Documentation]    Clicks on the "Go to cart" button in the modal window that appears after adding a product to the cart, using the global locator for this button.
    Log Action    Clicking on "Go to cart" button in modal after adding product to cart.
    Click Element    ${GLOBAL_MODAL_GO_TO_CART_BUTTON}    Go To Cart Button

