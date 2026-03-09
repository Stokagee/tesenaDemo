*** Variables ***
${SHOPPING_CART_GO_TO_CHECKOUT_BUTTON}                    css=a.btn.btn-primary[href*="objednavka"]
${SHOPPING_CART_FORM_CONTINUE_BUTTON}                     css=button.continue[data-link-action="register-new-customer"]
${SHOPPING_CART_ITEM_PRICE_VIEWFIELD}                     css=li.cart-item strong
${SHOPPING_CART_TOTAL_SUM_VIEWFIELD}                      css=#cart-subtotal-products .value

# === First Form Fields  ===

${SHOPPING_CART_EMAIL_INPUT}                              css=input#field-email:not([autocomplete])
${SHOPPING_CART_PASSWORD_INPUT}                           css=input#field-password:not([autocomplete])

# === Second Form Fields With Address ===

${SHOPPING_CART_ALIAS_INPUT}                                  [id="field-alias"]
${SHOPPING_CART_COMPANY_INPUT}                                [id="field-company"]
${SHOPPING_CART_VAT_NUMBER_INPUT}                             [id="field-vat_number"]
${SHOPPING_CART_ADDRESS1_INPUT}                               [id="field-address1"]
${SHOPPING_CART_ADDRESS2_INPUT}                               [id="field-address2"]
${SHOPPING_CART_POSTCODE_INPUT}                               [id="field-postcode"]
${SHOPPING_CART_CITY_INPUT}                                   [id="field-city"]
${SHOPPING_CART_PHONE_INPUT}                                  [id="field-phone"]
${SHOPPING_CART_COUNTRY_DROPDOWN}                             [id="field-id_country"]
${SHOPPING_CART_ADDRESSES_FORM_CONTINUE_BUTTON}               [name="confirm-addresses"]

# === Third Form Fields With Shipping ===

${SHOPPING_CART_DELIVERY_OPTION_MY_CARRIER_CHECKBOX}          css=label[for="delivery_option_2"]
${SHOPPING_CART_DELIVERY_OPTION_FORM_CONTINUE_BUTTON}         [name="confirmDeliveryOption"]

