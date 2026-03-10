*** Comments ***
This file combines keywords to create complete workflows for user registration.
...    It orchestrates the entire registration process from start to finish.

*** Settings ***
Resource    ../../common.resource

*** Keywords ***

Register New User
    [Documentation]    Complete workflow for registering a new user, which includes all steps
    ...    from selecting gender, filling in name, address to submitting the registration form.
    Click Register Button
    Select Random Gender Checkbox
    ${first_name_for_verification}=    Fill First Name
    ${last_name_for_verification}=    Fill Last Name
    ${email_for_verification}=    Fill Email
    ${password_for_verification}=    Fill Password
    ${birth_date_for_verification}=    Fill Birth Date
    Check Opt-in For Special Offers
    Check GDPR Consent
    Check Customer Privacy
    Check Newsletter
    Click Save
    Verify Successful Registration    ${first_name_for_verification} ${last_name_for_verification}
