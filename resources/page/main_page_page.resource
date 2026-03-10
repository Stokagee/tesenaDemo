*** Comments ***
This file contains basic keywords for working with the main page,
...    which use general keywords from common.resource and specific locators from main_page_locators.resource.

*** Settings ***
Resource    ../../common.resource


*** Keywords ***
Click Register Button
    [Documentation]    Clicks on the registration button on the main page, which is located at the bottom of the page in the footer.
    Log Action    Clicking on registration button on the main page.
    Click Element    ${MAIN_PAGE_REGISTER_BUTTON}    Register Button

Verify Successful Registration
    [Documentation]    Verifies that the user has successfully registered and is logged in by checking the presence of the sign-out button.
    [Arguments]    ${text}
    Log Action    Verifying successful registration, checking sign-out presence and displayed user name: ${text}
    ${text_for_verify}=    Get Element Text    ${MAIN_PAGE_ACCOUNT_BUTTON}
    Should Contain   ${text_for_verify}    ${text}    Verification of successful registration

Hover Over Clothes In Menu
    [Documentation]    Hovers over the "Clothes" item in the main menu to display the submenu with options for men and women.
    Log Action    Hovering over "Clothes" item in the main menu.
    Hover Over Element    ${MAIN_PAGE_MENU_BAR_CLOTHES_DROPDOWN}    Clothes Dropdown Menu

Click Clothes For Women In Menu
    [Documentation]    Clicks on the "Women" item in the "Clothes" submenu to display the women's clothing category.
    Log Action    Clicking on "Women" item in "Clothes" submenu.
    Hover Over Element    ${MAIN_PAGE_MENU_BAR_CLOTHES_FOR_WOMEN_BUTTON}    Verifying that women's clothing category is displayed by checking for specific product.
    Click Element    ${MAIN_PAGE_MENU_BAR_CLOTHES_FOR_WOMEN_BUTTON}    Click on women's clothing category

Hover Over Accessories In Menu
    [Documentation]    Hovers over the "Accessories" item in the main menu to display the submenu with options for stationery and home accessories.
    Log Action    Hovering over "Accessories" item in the main menu.
    Hover Over Element    ${MAIN_PAGE_MENU_BAR_PRISLUSENTSTVI_DROPDOWN}    Accessories Dropdown Menu

Click Accessories For Stationery In Menu
    [Documentation]    Clicks on the "Stationery" item in the "Accessories" submenu to display the stationery category.
    Log Action    Clicking on "Stationery" item in "Accessories" submenu.
    Hover Over Element    ${MAIN_PAGE_MENU_BAR_PRISLUSENTSTVI_STACIONERIE_BUTTON}    Verifying that stationery category is displayed by checking for specific product.
    Click Element    ${MAIN_PAGE_MENU_BAR_PRISLUSENTSTVI_STACIONERIE_BUTTON}    Click on stationery category

Click Art In Menu
    [Documentation]    Clicks on the "Art" item in the main menu to display the art category.
    Log Action    Clicking on "Art" item in the main menu.
    Click Element    ${MAIN_PAGE_MENU_BAR_ART_BUTTON}    Click on art category
