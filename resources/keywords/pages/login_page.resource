*** Settings ***
Resource    ${CURDIR}/../../import.resource
Resource    ${CURDIR}/../locators/login_locator.resource


*** Keywords ***
Verify Swag Labs header
    SeleniumLibrary.Wait Until Element Is Visible    ${login.lbl_header}    timeout=${GLOBAL_TIMEOUT}

Verify username field
    SeleniumLibrary.Wait Until Element Is Visible    ${login.input_username}    timeout=${GLOBAL_TIMEOUT}

Verify password field
    SeleniumLibrary.Wait Until Element Is Visible    ${login.input_password}    timeout=${GLOBAL_TIMEOUT}

Verify login button
    SeleniumLibrary.Wait Until Element Is Visible    ${login.btn_login}    timeout=${GLOBAL_TIMEOUT}

Input username
    [Arguments]    ${username}
    SeleniumLibrary.Input Text    ${login.input_username}    ${username}

Input password
    [Arguments]    ${password}
    SeleniumLibrary.Input Text    ${login.input_password}    ${password}

Click login button
    SeleniumLibrary.Click Element    ${login.btn_login}

Verify required error
    [Arguments]    ${required}
    ${locator}    String.Replace String    ${login.lbl_login_unsuccessfully}    ***string***    ${required}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify locked out user error
    SeleniumLibrary.Wait Until Element Is Visible    ${login.lbl_login_lock_out_user}    timeout=${GLOBAL_TIMEOUT}

Verify close button
    SeleniumLibrary.Wait Until Element Is Visible    ${login.btn_close_err}    timeout=${GLOBAL_TIMEOUT}

Click close button
    SeleniumLibrary.Click Element    ${login.btn_close_err}
