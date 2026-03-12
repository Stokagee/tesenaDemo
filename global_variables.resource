*** Comments ***
Global variables and locators used across the entire project.
...    Contains configuration variables (URL, timeout, headless mode) and global locators.

*** Variables ***
${TEST_URL}    ${EMPTY}
${TIMEOUT}    10s
${LOG_TO_CONSOLE}    ${False}
${HEADLESS}   ${True}

# === Global locators ===

${GLOBAL_ADD_TO_CART_BUTTON}                [data-button-action="add-to-cart"]
${GLOBAL_CLOSE_MODAL_BUTTON}                css=.modal-content:has(.modal-title:has-text("Produkt byl úspěšně přidán do nákupního košíku")) button.close[aria-label="Zavřít"]
${GLOBAL_MODAL_GO_TO_CART_BUTTON}           css=a.btn.btn-primary[href*="kosik"][href*="action=show"]
