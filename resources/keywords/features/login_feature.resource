*** Settings ***
Resource    ${CURDIR}/../../import.resource


*** Keywords ***
Login
    [Arguments]    ${username}    ${password}
    login_page.Verify Swag Labs header
    login_page.Verify username field
    login_page.Input username    ${username}
    login_page.Verify password field
    login_page.Input password    ${password}
    login_page.Verify login button
    login_page.Click login button

Login successfully
    [Arguments]    ${username}    ${password}
    Login    ${username}    ${password}
    products_page.Verify products header

Login unsuccessfully
    [Arguments]    ${username}    ${password}    ${required}
    Login    ${username}    ${password}
    Verify and close required error    ${required}

Verify and close required error
    [Arguments]    ${required}
    login_page.Verify required error    ${required}
    login_page.Verify close button
    login_page.Click close button

Verify and close locked out user error
    login_page.Verify locked out user error
    login_page.Verify close button
    login_page.Click close button
