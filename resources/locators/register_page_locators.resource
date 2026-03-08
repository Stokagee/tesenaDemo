*** Variables ***
${REGISTER_PAGE_PAN_CHECKBOX}                      css=label[for="field-id_gender-1"] input#field-id_gender-1
${REGISTER_PAGE_PANI_CHECKBOX}                     css=label.radio-inline:has-text("Paní")
${REGISTER_PAGE_FIRST_NAME_INPUT}                  [id="field-firstname"]
${REGISTER_PAGE_LAST_NAME_INPUT}                   [id="field-lastname"]
${REGISTER_PAGE_EMAIL_INPUT}                       [id="field-email"]
${REGISTER_PAGE_PASSWORD_INPUT}                    [id="field-password"]
${REGISTER_PAGE_BIRTHDAY_INPUT}                    [id="field-birthday"]
${REGISTER_PAGE_OPTIN_CHECKBOX}                    css=label:has-text("Přijímat speciální nabídky od našich partnerů") input[name="optin"]
${REGISTER_PAGE_GDPR_CHECKBOX}                     css=label:has-text("I agree to the terms and conditions and the privacy policy") input[name="psgdpr"]
${REGISTER_PAGE_NEWSLETTER_CHECKBOX}               [name="newsletter"]
${REGISTER_PAGE_CUSTOMER_PRIVACY_CHECKBOX}         [name="customer_privacy"]
${REGISTER_PAGE_SAVE_BUTTON}                       [data-link-action="save-customer"]