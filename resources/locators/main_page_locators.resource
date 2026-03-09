*** Variables ***
${MAIN_PAGE_REGISTER_BUTTON}                css=ul#footer_account_list a[title="Vytvořit účet"]
${MAIN_PAGE_LOGOUT_BUTTON}                  css=a.logout:has-text("Odhlásit")
${MAIN_PAGE_ACCOUNT_BUTTON}                 css=a.account span.hidden-sm-down

# === MENU BAR LOCATORS ===

${MAIN_PAGE_MENU_BAR_CLOTHES_DROPDOWN}                  css=a.dropdown-item:has-text("Clothes")
${MAIN_PAGE_MENU_BAR_CLOTHES_FOR_MEN_BUTTON}            css=#top_sub_menu_33028 a.dropdown-item:has-text("Men")
${MAIN_PAGE_MENU_BAR_CLOTHES_FOR_WOMEN_BUTTON}          xpath=//a[contains(@class,"dropdown-submenu")][normalize-space()="Women"]



