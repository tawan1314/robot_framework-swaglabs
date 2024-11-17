*** Settings ***
Resource    ${CURDIR}/../../import.resource


*** Keywords ***
Input the information
    [Arguments]    ${user_info}
    checkout_your_information_page.Verify header
    Verify and the input firstname field          ${user_info}[firstname]
    Verify and the input lastname field           ${user_info}[lastname]
    Verify and the input zip postal code field    ${user_info}[zip_postal_code]

Verify and the input firstname field
    [Arguments]    ${firstname}
    checkout_your_information_page.Verify firstname field
    checkout_your_information_page.Input firstname    ${firstname}

Verify and the input lastname field
    [Arguments]    ${lastname}
    checkout_your_information_page.Verify lastname field
    checkout_your_information_page.Input lastname    ${lastname}

Verify and the input zip postal code field
    [Arguments]    ${zip_postal_code}
    checkout_your_information_page.Verify zip postal code field
    checkout_your_information_page.Input zip postal code    ${zip_postal_code}

Verify and close the error required
    [Arguments]    ${required}
    checkout_your_information_page.Verify error required    ${required}
    checkout_your_information_page.Verify close error required button
    checkout_your_information_page.Click close error required button
