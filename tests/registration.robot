*** Settings ***
Documentation    Test scenario to verify the functionality of the registration process for the Tesena e-shop.
    ...          This test includes the complete workflow for registering a new user, including gender selection,
    ...          filling in personal details, and submitting the form.
Resource    ../common.resource

Test Setup    Initialize Browser Session
Test Teardown    Close Browser Session

*** Test Cases ***
Register New User And Verify Successful Registration
    [Documentation]    Test case to verify that a new user can successfully complete the registration process.
    Register New User
