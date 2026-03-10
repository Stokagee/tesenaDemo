*** Comments ***
This file contains high-level workflow keywords that combine multiple page keywords
...    to create complete user journeys for navigation through the e-shop.

*** Settings ***
Resource    ../../common.resource

*** Keywords ***

Hover Over Clothes In Menu And Select Women
    [Documentation]    Hovers over the "Clothes" item in the main menu and then clicks on the "Women" item
    ...    to display the women's clothing category.
    Hover Over Clothes In Menu
    Click Clothes For Women In Menu

Hover Over Accessories In Menu And Select Stationery
    [Documentation]    Hovers over the "Accessories" item in the main menu and then clicks on the "Stationery" item
    ...    to display the stationery category.
    Hover Over Accessories In Menu
    Click Accessories For Stationery In Menu
