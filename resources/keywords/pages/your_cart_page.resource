*** Settings ***
Resource    ${CURDIR}/../../import.resource
Resource    ${CURDIR}/../locators/your_cart_locator.resource


*** Keywords ***
Verify header
    SeleniumLibrary.Wait Until Element Is Visible    ${your_cart.lbl_header}    timeout=${GLOBAL_TIMEOUT}

Verify item information
    [Arguments]    ${name}    ${description}    ${price}    ${num_of_items}
    ${locator}    String.Replace String    ${your_cart.lbl_item_info}    ***item_name***    ${name}
    ${locator}    String.Replace String    ${locator}    ***description***    ${description}
    ${locator}    String.Replace String    ${locator}    ***price***    ${price}
    ${locator}    String.Replace String    ${locator}    ***quantity***    ${num_of_items}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify remove button
    [Arguments]    ${name}    ${description}    ${price}
    ${locator}    String.Replace String    ${your_cart.btn_remove}    ***item_name***    ${name}
    ${locator}    String.Replace String    ${locator}    ***description***    ${description}
    ${locator}    String.Replace String    ${locator}    ***price***    ${price}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify continue shopping button
    SeleniumLibrary.Wait Until Element Is Visible    ${your_cart.btn_continue_shopping}    timeout=${GLOBAL_TIMEOUT}

Verify checkout button
    SeleniumLibrary.Wait Until Element Is Visible    ${your_cart.btn_checkout}    timeout=${GLOBAL_TIMEOUT}

Click remove button
    [Arguments]    ${name}    ${description}    ${price}
    ${locator}    String.Replace String    ${your_cart.btn_remove}    ***item_name***    ${name}
    ${locator}    String.Replace String    ${locator}    ***description***    ${description}
    ${locator}    String.Replace String    ${locator}    ***price***    ${price}
    SeleniumLibrary.Click Button    ${locator}

Click continue shopping button
    SeleniumLibrary.Click Element    ${your_cart.btn_continue_shopping}

Click checkout button
    SeleniumLibrary.Click Element    ${your_cart.btn_checkout}

Click item name
    SeleniumLibrary.Click Element    ${your_cart.lbl_item_name}
