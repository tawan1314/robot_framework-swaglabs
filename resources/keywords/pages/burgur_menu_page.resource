*** Settings ***
Resource    ${CURDIR}/../../import.resource
Resource    ${CURDIR}/../locators/burgur_menu_locator.resource


*** Keywords ***
Verify burgur button
    SeleniumLibrary.Wait Until Element Is Visible    ${burgur_menu.btn_burgur}    timeout=${GLOBAL_TIMEOUT}

Verify close burgur button
    SeleniumLibrary.Wait Until Element Is Visible    ${burgur_menu.btn_close_burgur}    timeout=${GLOBAL_TIMEOUT}

Verify all items button
    SeleniumLibrary.Wait Until Element Is Visible    ${burgur_menu.btn_all_items}    timeout=${GLOBAL_TIMEOUT}

Verify about button
    SeleniumLibrary.Wait Until Element Is Visible    ${burgur_menu.btn_about}    timeout=${GLOBAL_TIMEOUT}

Verify logout button
    SeleniumLibrary.Wait Until Element Is Visible    ${burgur_menu.btn_logout}    timeout=${GLOBAL_TIMEOUT}

Verify reset app state button
    SeleniumLibrary.Wait Until Element Is Visible    ${burgur_menu.btn_reset_app_state}    timeout=${GLOBAL_TIMEOUT}

Click burgur button
    SeleniumLibrary.Click Element     ${burgur_menu.btn_burgur}

Click close burgur button
    SeleniumLibrary.Click Button     ${burgur_menu.btn_close_burgur}

Click all items button
    SeleniumLibrary.Click Element    ${burgur_menu.btn_all_items}

Click about button
    SeleniumLibrary.Click Element    ${burgur_menu.btn_about}

Click logout button
    SeleniumLibrary.Click Element    ${burgur_menu.btn_logout}

Click reset app state button
    SeleniumLibrary.Click Element    ${burgur_menu.btn_reset_app_state}
