*** Comments ***
This file contains high-level workflow keywords for the complete checkout process,
...    including product selection, cart management, form filling, and order completion.

*** Settings ***
Resource    ../../common.resource

*** Keywords ***

Complete Checkout Flow
    [Documentation]    Complete checkout flow including: adding 3 products (Women, Stationery, Art),
    ...    verifying price calculation, filling order forms, and proceeding to payment.
    Hover Over Clothes In Menu And Select Women
    Select First Item In Women Category
    Sleep    2    # Forced sleep. Without it, when clicking add product, cart appears with text "...no additional items"
    Add Product To Cart
    Close Modal After Adding To Cart
    Hover Over Accessories In Menu And Select Stationery
    Select First Notebook In Stationery Category
    Sleep    2    # Forced sleep. Without it, when clicking add product, cart appears with text "...no additional items"
    Add Product To Cart
    Close Modal After Adding To Cart
    Click Art In Menu
    Select First Product In Art Category
    Sleep    2    # Forced sleep. Without it, when clicking add product, cart appears with text "...no additional items"
    Add Product To Cart
    Click Go To Cart In Modal
    ${item_prices}    ${total_sum}    Get Cart Item Prices And Sum
    Log Action    Retrieved item prices in cart: ${item_prices} and their sum: ${total_sum}. Now verifying that this sum matches the displayed product subtotal to verify correct total price calculation.
    ${subtotal_price}=    Get Cart Subtotal Products
    Log Action    Verifying that the sum of item prices in cart (${total_sum}) matches the displayed product subtotal (${subtotal_price}) to verify correct total price calculation in cart.
    Should Be Equal As Numbers    ${total_sum}    ${subtotal_price}    msg=Verification of correct total price calculation in cart failed. Expected price: ${subtotal_price}, Got price: ${total_sum}
    Click Continue To Checkout In Cart
    Fill Order Details
    Fill Address Form In Cart
    Click Continue To Payment Step
    Verify Payment Step Is Displayed


Fill Order Details
    [Documentation]    Fills in all required details for the order, including first name, last name, email, phone number,
    ...    address, and other information needed to complete the purchase.
    Select Random Gender Checkbox
    ${first_name_for_verification}=    Fill First Name In Cart
    ${last_name_for_verification}=    Fill Last Name In Cart
    ${email_for_verification}=    Fill Email In Cart
    ${password_for_verification}=    Fill Password In Cart
    ${birth_date_for_verification}=    Fill Birth Date In Cart
    Check Opt-in For Special Offers In Cart
    Check GDPR Consent In Cart
    Check Customer Privacy In Cart
    Check Newsletter In Cart
    Click Continue After Filling Form In Cart


Fill Address Form In Cart
    [Documentation]    Fills in all required address details in the cart, including street, city, postal code,
    ...    and other information needed to complete the purchase.
    Fill Alias In Cart
    Fill Company In Cart
    Fill VAT Number In Cart
    Fill Address In Cart
    Fill Address Complement In Cart
    Fill Zip Code In Cart
    Fill City In Cart
    Fill Phone In Cart
    Click Continue After Filling Address In Cart
