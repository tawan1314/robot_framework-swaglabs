*** Settings ***
Resource    ${CURDIR}/../../import.resource
Resource    ${CURDIR}/../locators/checkout_your_information_locator.resource


*** Keywords ***
Verify header
    SeleniumLibrary.Wait Until Element Is Visible    ${your_info.lbl_header}    timeout=${GLOBAL_TIMEOUT}

Verify firstname field
    SeleniumLibrary.Wait Until Element Is Visible    ${your_info.input_firstname}    timeout=${GLOBAL_TIMEOUT}

Verify lastname field
    SeleniumLibrary.Wait Until Element Is Visible    ${your_info.input_lastname}    timeout=${GLOBAL_TIMEOUT}

Verify zip postal code field
    SeleniumLibrary.Wait Until Element Is Visible    ${your_info.input_zip_postal_code}    timeout=${GLOBAL_TIMEOUT}

Verify continue button
    SeleniumLibrary.Wait Until Element Is Visible    ${your_info.btn_continue}    timeout=${GLOBAL_TIMEOUT}

Verify cancel button
    SeleniumLibrary.Wait Until Element Is Visible    ${your_info.btn_cancel}    timeout=${GLOBAL_TIMEOUT}

Verify error required
    [Arguments]    ${required}
    ${locator}    String.Replace String    ${your_info.err_required}    ***err_required***    ${required}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify close error required button
    SeleniumLibrary.Wait Until Element Is Visible    ${your_info.btn_close_err}    timeout=${GLOBAL_TIMEOUT}

Input firstname
    [Arguments]    ${firstname}
    SeleniumLibrary.Input Text    ${your_info.input_firstname}    ${firstname}

Input lastname
    [Arguments]    ${lastname}
    SeleniumLibrary.Input Text    ${your_info.input_lastname}    ${lastname}

Input zip postal code
    [Arguments]    ${zip_postal_code}
    SeleniumLibrary.Input Text    ${your_info.input_zip_postal_code}    ${zip_postal_code}

Click continue button
    SeleniumLibrary.Click Element    ${your_info.btn_continue}

Click cancel button
    SeleniumLibrary.Click Element    ${your_info.btn_cancel}

Click close error required button
    SeleniumLibrary.Click Element    ${your_info.btn_close_err}
