*** Settings ***
Resource    ${CURDIR}/../../import.resource
Resource    ${CURDIR}/../locators/inventory_item_locator.resource


*** Keywords ***
Verify header
    SeleniumLibrary.Wait Until Element Is Visible    ${inventory_item.lbl_header}    timeout=${GLOBAL_TIMEOUT}

Verify item information
    [Arguments]    ${product_name}    ${description}    ${price}
    ${locator}    String.Replace String    ${inventory_item.item_info}    ***item_name***    ${product_name}
    ${locator}    String.Replace String    ${locator}    ***description***    ${description}
    ${locator}    String.Replace String    ${locator}    ***price***    ${price}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify add to cart button
    SeleniumLibrary.Wait Until Element Is Visible    ${inventory_item.btn_add_to_cart}    timeout=${GLOBAL_TIMEOUT}

Verify back button
    SeleniumLibrary.Wait Until Element Is Visible    ${inventory_item.btn_back}    timeout=${GLOBAL_TIMEOUT}

Verify cart button
    SeleniumLibrary.Wait Until Element Is Visible    ${inventory_item.btn_cart}    timeout=${GLOBAL_TIMEOUT}

Verify remove button
    SeleniumLibrary.Wait Until Element Is Visible    ${inventory_item.btn_remove}    timeout=${GLOBAL_TIMEOUT}

Click add to cart button
    SeleniumLibrary.Click Button    ${inventory_item.btn_add_to_cart}

Click back button
    SeleniumLibrary.Click Button    ${inventory_item.btn_back}

Click cart button
    SeleniumLibrary.Click Button    ${inventory_item.btn_cart}

Click remove button
    SeleniumLibrary.Click Button    ${inventory_item.btn_remove}
