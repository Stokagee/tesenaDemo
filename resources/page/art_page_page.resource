*** Comments ***
This file contains keywords for working with the Art category page,
...    which use general keywords from common.resource and specific locators from art_page_locators.resource.

*** Settings ***
Resource    ../../common.resource

*** Keywords ***

Select First Product In Art Category
    [Documentation]    Selects the first product in the ART category using the locator specific to this category.
    Log Action    Selecting the first product in the ART category.
    Click Element    ${ART_PAGE_FIRST_ITEM_BUTTON}    First Item Button in ART Category
