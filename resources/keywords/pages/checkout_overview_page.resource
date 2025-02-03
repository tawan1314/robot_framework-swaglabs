*** Settings ***
Resource    ${CURDIR}/../../import.resource
Resource    ${CURDIR}/../locators/checkout_overview_locator.resource


*** Keywords ***
Verify header
    SeleniumLibrary.Wait Until Element Is Visible    ${overview.lbl_header}    timeout=${GLOBAL_TIMEOUT}

Verify quantity of item
    [Arguments]    ${quantity}
    ${locator}    String.Replace String    ${overview.lbl_quantity}    ***quatity***    ${quantity}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify item information
    [Arguments]    ${num_of_items}    ${item_info}
    FOR    ${i}    IN RANGE    ${num_of_items}
        ${i}    Evaluate    ${i} + 1
        ${locator}    String.Replace String    ${overview.lbl_item_info}    ***item_name***    ${item_info}[${i}][name]
        ${locator}    String.Replace String    ${locator}    ***description***    ${item_info}[${i}][description]
        ${locator}    String.Replace String    ${locator}    ***price***    ${item_info}[${i}][price]
        SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}
    END

Verify payment information
    SeleniumLibrary.Wait Until Element Is Visible    ${overview.lbl_payment_info}    timeout=${GLOBAL_TIMEOUT}

Verify shipping information
    SeleniumLibrary.Wait Until Element Is Visible    ${overview.lbl_shipping_info}    timeout=${GLOBAL_TIMEOUT}

Verify item total
    [Arguments]    ${item_total}
    ${item_total}    Evaluate    str(${item_total})
    ${locator}    String.Replace String    ${overview.lbl_item_total}    ***item_total***    ${item_total}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify tax
    [Arguments]    ${tax}
    ${tax}    Evaluate    str(${tax})
    ${locator}    String.Replace String    ${overview.lbl_tax}    ***tax***    ${tax}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify total
    [Arguments]    ${total}
    ${total}    Evaluate    str(${total})
    ${locator}    String.Replace String    ${overview.lbl_total}    ***total***    ${total}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify finish button
    SeleniumLibrary.Wait Until Element Is Visible    ${overview.btn_finish}    timeout=${GLOBAL_TIMEOUT}

Verify cancel button
    SeleniumLibrary.Wait Until Element Is Visible    ${overview.btn_cancel}    timeout=${GLOBAL_TIMEOUT}

Click finish button
    SeleniumLibrary.Click Element    ${overview.btn_finish}

Click cancel button
    SeleniumLibrary.Click Element    ${overview.btn_cancel}
