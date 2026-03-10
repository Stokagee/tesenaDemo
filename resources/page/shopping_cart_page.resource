*** Comments ***
This file contains keywords for working with the shopping cart page,
...    including checkout flow, form filling, and price verification.

*** Settings ***
Resource    ../../common.resource

*** Keywords ***

Click Continue To Checkout In Cart
    [Documentation]    Clicks on the "Proceed to checkout" button in the cart to redirect to the checkout form page.
    Log Action    Clicking on "Proceed to checkout" button in the cart to redirect to checkout form page.
    Click Element    ${SHOPPING_CART_GO_TO_CHECKOUT_BUTTON}    Proceed To Checkout In Cart

Click Continue After Filling Form In Cart
    [Documentation]    Clicks on the "Continue" button in the cart after filling in order details to submit the order and complete the purchase.
    Log Action    Clicking on "Continue" button in the cart to submit the order.
    Click Element    ${SHOPPING_CART_FORM_CONTINUE_BUTTON}    Continue after Filling Form In Cart

Fill Email In Cart
    [Documentation]    Fills the email address into the corresponding field in the cart to continue with the checkout process.
    ${email}=    Email
    Log Action    Filling email address into the email field in the cart to continue with checkout process.
    Fill Field    ${SHOPPING_CART_EMAIL_INPUT}    ${email}    Email Input In Cart
    RETURN    ${email}

Fill Password In Cart
    [Documentation]    Fills the password into the corresponding field in the cart to continue with the checkout process.
    ${password}=    Password
    Log Action    Filling password into the password field in the cart to continue with checkout process.
    Fill Field    ${SHOPPING_CART_PASSWORD_INPUT}    ${password}    Password Input In Cart
    RETURN    ${password}

Fill First Name In Cart
    [Documentation]    Fills the first name into the corresponding field in the cart to continue with the checkout process.
    Fill First Name

Fill Last Name In Cart
    [Documentation]    Fills the last name into the corresponding field in the cart to continue with the checkout process.
    Fill Last Name

Fill Birth Date In Cart
    [Documentation]    Fills the birth date into the corresponding field in the cart to continue with the checkout process.
    Fill Birth Date

Check Opt-in For Special Offers In Cart
    [Documentation]    Checks the opt-in for special offers in the cart to continue with the checkout process.
    Check Opt-in For Special Offers

Check GDPR Consent In Cart
    [Documentation]    Checks the GDPR consent in the cart to continue with the checkout process.
    Check GDPR Consent

Check Customer Privacy In Cart
    [Documentation]    Checks the customer privacy consent in the cart to continue with the checkout process.
    Check Customer Privacy

Check Newsletter In Cart
    [Documentation]    Checks the newsletter subscription consent in the cart to continue with the checkout process.
    Check Newsletter

Fill Alias In Cart
    [Documentation]    Fills the address alias into the corresponding field in the cart, this is part of the address form.
    ${alias}=    Street Name
    Log Action    Filling address alias into the alias field in the cart to continue with checkout process.
    Fill Field    ${SHOPPING_CART_ALIAS_INPUT}    ${alias}    Alias Input In Cart
    RETURN    ${alias}

Fill Company In Cart
    [Documentation]    Fills the company name into the corresponding field in the cart, this is part of the address form.
    ${company}=    Company
    Log Action    Filling company name into the company field in the cart to continue with checkout process.
    Fill Field    ${SHOPPING_CART_COMPANY_INPUT}    ${company}    Company Input In Cart
    RETURN    ${company}

Fill VAT Number In Cart
    [Documentation]    Fills the VAT number into the corresponding field in the cart, this is part of the address form.
    ${number}=    Random Number    digits=8
    VAR    ${vat_number}    CZ${number}
    Log Action    Filling VAT number into the VAT field in the cart to continue with checkout process.
    Fill Field    ${SHOPPING_CART_VAT_NUMBER_INPUT}    ${vat_number}    VAT Number Input In Cart
    RETURN    ${vat_number}

Fill Address In Cart
    [Documentation]    Fills the address into the corresponding field in the cart, this is part of the address form.
    ${address}=    Street Address
    Log Action    Filling address into the address field in the cart to continue with checkout process.
    Fill Field    ${SHOPPING_CART_ADDRESS1_INPUT}    ${address}    Address Input In Cart
    RETURN    ${address}

Fill Address Complement In Cart
    [Documentation]    Fills the address complement into the corresponding field in the cart, this is part of the address form.
    ${address2}=    Secondary Address
    Log Action    Filling address complement into the address complement field in the cart to continue with checkout process.
    Fill Field    ${SHOPPING_CART_ADDRESS2_INPUT}    ${address2}    Address Complement Input In Cart
    RETURN    ${address2}

Fill Zip Code In Cart
    [Documentation]    Fills the postal code into the corresponding field in the cart, this is part of the address form.
    ${postcode}=    Postcode
    ${postcode}=    Evaluate    "${postcode[:3]} ${postcode[3:]}"
    Fill Field    ${SHOPPING_CART_POSTCODE_INPUT}    ${postcode}    Postal Code Input In Cart
    RETURN    ${postcode}

Fill City In Cart
    [Documentation]    Fills the city into the corresponding field in the cart, this is part of the address form.
    ${city}=    City
    Log Action    Filling city into the city field in the cart to continue with checkout process.
    Fill Field    ${SHOPPING_CART_CITY_INPUT}    ${city}    City Input In Cart
    RETURN    ${city}

Fill Phone In Cart
    [Documentation]    Fills the phone number into the corresponding field in the cart, this is part of the address form.
    ${phone}=    Random Number    digits=9
    Log Action    Filling phone number into the phone field in the cart to continue with checkout process.
    Fill Field    ${SHOPPING_CART_PHONE_INPUT}    ${phone}    Phone Input In Cart
    RETURN    ${phone}

Select Random Country In Cart
    [Documentation]    Selects a country from the dropdown in the cart, this is part of the address form.
    Log Action    Selecting country from the country dropdown in the cart to continue with checkout process.
    ${selected_value}=    Select Random Dropdown Value    ${SHOPPING_CART_COUNTRY_DROPDOWN}    value    False    Country Dropdown In Cart
    RETURN    ${selected_value}

Click Continue After Filling Address In Cart
    [Documentation]    Clicks on the "Continue" button in the cart after filling in address details to continue with the checkout process.
    Log Action    Clicking on "Continue" button in the cart after filling address details to continue with checkout process.
    Click Element    ${SHOPPING_CART_ADDRESSES_FORM_CONTINUE_BUTTON}    Continue After Filling Address In Cart

Select Choose My Carrier Option
    [Documentation]    Selects the "Choose my carrier" option in the cart to continue with the checkout process.
    Log Action    Selecting "Choose my carrier" option in the cart to continue with checkout process.
    Click On Checkbox    ${SHOPPING_CART_DELIVERY_OPTION_MY_CARRIER_CHECKBOX}    Choose My Carrier In Cart

Click Continue To Payment Step
    [Documentation]    Clicks on the "Continue" button to proceed to the payment step.
    Log Action    Clicking on "Continue" button to proceed to payment step.
    Click Element    ${SHOPPING_CART_DELIVERY_OPTION_FORM_CONTINUE_BUTTON}    Continue To Payment Step

Verify Payment Step Is Displayed
    [Documentation]    Verifies that the payment step is displayed by checking for the payment method message.
    Log Action    Verifying that payment step is displayed.
    Wait Element Ready    "Bohužel není k dispozici žádná platební metoda."

Get Cart Item Prices And Sum
    [Documentation]    Returns a list of item prices in the cart and their sum.
    Log Action    Getting item prices in the cart and calculating their sum to verify correct total price calculation in cart.
    ${elements}=    Browser.Get Elements    ${SHOPPING_CART_ITEM_PRICE_VIEWFIELD}
    Log Action    Retrieved elements with item prices in the cart, now getting text from these elements for further processing.
    ${raw_prices}=    Create List
    FOR    ${el}    IN    @{elements}
        ${txt}=    Get Element Text    ${el}    Item price in cart
        Append To List    ${raw_prices}    ${txt}
    END
    Log Action    Retrieved raw text prices of items in cart: ${raw_prices}. Now need to clean these prices and convert to numeric format for sum calculation.
    ${clean_prices}=    Create List
    FOR    ${p}    IN    @{raw_prices}
        ${clean}=    Replace String    ${p}    &nbsp;Kč    ${EMPTY}
        ${clean}=    Replace String    ${clean}    Kč    ${EMPTY}
        ${clean}=    Replace String    ${clean}    ${SPACE}    ${EMPTY}
        ${clean}=    Replace String    ${clean}    ,    .
        Append To List    ${clean_prices}    ${clean}
    END
    Log Action    Cleaned item prices in cart from currency symbols, spaces and replaced comma with period for correct number format: ${clean_prices}. Now converting these cleaned prices to numeric format for sum calculation.
    ${numeric_prices}=    Evaluate    [float(x) for x in ${clean_prices}]
    Log Action    Converting cleaned item prices in cart to numeric format for total price calculation: ${numeric_prices}. Now calculating sum of these prices to verify correct total price calculation in cart.
    ${sum}=    Evaluate    sum(${numeric_prices})
    RETURN    ${numeric_prices}    ${sum}

Get Cart Subtotal Products
    [Documentation]    Returns the product subtotal from the cart as a number (float).
    Log Action    Getting product subtotal from the cart to verify correct total price calculation in cart. First getting raw subtotal text, then cleaning it from currency symbols, spaces and other non-numeric characters to convert to float for further verification.
    ${raw}=    Get Element Text    ${SHOPPING_CART_TOTAL_SUM_VIEWFIELD}    "Product subtotal in cart"
    Log Action    Retrieved raw text of product subtotal in cart: '${raw}'. Now need to clean this text from currency symbols, spaces and other non-numeric characters to convert to number for verification.
    ${clean}=    Replace String    ${raw}    &nbsp;Kč    ${EMPTY}
    ${clean}=    Replace String    ${clean}    Kč    ${EMPTY}
    ${clean}=    Replace String    ${clean}    ${SPACE}    ${EMPTY}
    ${clean}=    Replace String    ${clean}    ,    .
    ${clean}=    Replace String    ${clean}    \u00A0    ${EMPTY}
    Log Action    Cleaned product subtotal text in cart from currency symbols, spaces and replaced comma with period for correct number format: '${clean}'. Now converting this cleaned subtotal to number for verification.
    ${subtotal}=    Evaluate    float(${clean})
    RETURN    ${subtotal}
