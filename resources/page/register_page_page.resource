*** Comments ***
This file contains basic keywords for working with the registration page,
...    which use general keywords from common.resource and specific locators from register_page_locators.resource.

*** Settings ***
Resource    ../../common.resource

*** Keywords ***

Select Random Gender Checkbox
    [Documentation]    Randomly selects one of the two gender checkboxes (Mr or Mrs) on the registration page.
    ${random_checkbox}=    Evaluate    random.choice(@{REGISTER_PAGE_BOTH_GENDER_CHECKBOXES_FOR_RANDOM_CHOICE})    modules=random
    Log Action    Selecting gender checkbox: ${random_checkbox}
    Click On Checkbox    ${random_checkbox}    one of two gender checkboxes
    RETURN    ${random_checkbox}

Fill First Name
    [Documentation]    Fills in the first name field on the registration page.
    ${first_name}=    First Name
    Log Action    Filling first name: ${first_name}
    Fill Field    ${REGISTER_PAGE_FIRST_NAME_INPUT}    ${first_name}    First Name
    RETURN    ${first_name}

Fill Last Name
    [Documentation]    Fills in the last name field on the registration page.
    ${last_name}=    Last Name
    Log Action    Filling last name: ${last_name}
    Fill Field    ${REGISTER_PAGE_LAST_NAME_INPUT}    ${last_name}    Last Name
    RETURN    ${last_name}

Fill Email
    [Documentation]    Fills in the email field on the registration page.
    ${email}=    Email
    Log Action    Filling email: ${email}
    Fill Field    ${REGISTER_PAGE_EMAIL_INPUT}    ${email}    Email
    RETURN    ${email}

Fill Password
    [Documentation]    Fills in the password field on the registration page.
    ${password}=    Password    length=12    special_chars=1    digits=1    upper_case=1    lower_case=1
    Log Action    Filling password: ${password}
    Fill Field    ${REGISTER_PAGE_PASSWORD_INPUT}    ${password}    Password
    RETURN    ${password}

Fill Birth Date
    [Documentation]    Fills in the birth date field on the registration page.
    ${birthday}=    Get Current Date    result_format=%d.%m.%Y   increment=-3650
    Log Action    Filling birth date: ${birthday}
    Fill Field    ${REGISTER_PAGE_BIRTHDAY_INPUT}    ${birthday}    Birth Date
    RETURN    ${birthday}

Check Opt-in For Special Offers
    [Documentation]    Checks the opt-in checkbox for special offers from partners.
    Log Action    Checking opt-in checkbox for special offers
    Click On Checkbox    ${REGISTER_PAGE_OPTIN_CHECKBOX}    Opt-in for special offers

Check GDPR Consent
    [Documentation]    Checks the GDPR consent checkbox for registration.
    Log Action    Checking GDPR consent checkbox
    Click On Checkbox    ${REGISTER_PAGE_GDPR_CHECKBOX}    GDPR consent

Check Newsletter
    [Documentation]    Checks the newsletter subscription checkbox.
    Log Action    Checking newsletter subscription checkbox
    Click On Checkbox    ${REGISTER_PAGE_NEWSLETTER_CHECKBOX}    Newsletter

Check Customer Privacy
    [Documentation]    Checks the customer privacy consent checkbox.
    Log Action    Checking customer privacy consent checkbox
    Click On Checkbox    ${REGISTER_PAGE_CUSTOMER_PRIVACY_CHECKBOX}    Customer Privacy

Click Save
    [Documentation]    Clicks the save button to complete the registration process.
    Log Action    Clicking Save registration button
    Click Element    ${REGISTER_PAGE_SAVE_BUTTON}    Save registration
