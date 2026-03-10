*** Settings ***
Documentation    Test scenario to verify the functionality of the checkout process for the Tesena e-shop.
    ...          This test includes the complete workflow for purchasing a product, including adding product to cart,
    ...          filling in order details, calculating total price, and submitting the order.
Resource    ../common.resource

Test Setup    Initialize Browser Session
Test Teardown    Close Browser Session

*** Test Cases ***
Complete Checkout Flow
    [Documentation]    This test verifies the complete checkout flow including adding multiple products to cart
    ...                (Women, Stationery, Art), verifying price calculation, filling order forms, and proceeding to payment.
    Complete Checkout Flow
