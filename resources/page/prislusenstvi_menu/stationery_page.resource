*** Comments ***
This file contains keywords for working with the stationery category page,
...    which use general keywords from common.resource and specific locators from prislusentsvi_stationery_locators.resource.

*** Settings ***
Resource    ../../../common.resource

*** Keywords ***

Select First Notebook In Stationery Category
    [Documentation]    Selects the first notebook in the stationery category using the locator for the first item in this category.
    Log Action    Selecting the first notebook in the stationery category.
    Click Element    ${PRISLUSENTSTVI_STACIONERIE_PRODUCT_ITEM_1_BUTTON}    First Stationery Product Item Button
