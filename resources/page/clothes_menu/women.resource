*** Comments ***
This file contains keywords for working with the women's clothing category page,
...    which use general keywords from common.resource and specific locators from clothes_women_locators.resource.

*** Settings ***
Resource    ../../../common.resource

*** Keywords ***

Select First Item In Women Category
    [Documentation]    Selects the first item from the women's clothing category and clicks on it to view product details.
    ...    It is a white long-sleeve t-shirt.
    Log Action    Clicking on the first item in the women's category.
    Click Element    ${CLOTHES_WOMEN_PRODUCT_ITEM_2_BUTTON}    Click on first item for women
