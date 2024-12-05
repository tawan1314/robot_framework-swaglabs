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
    [Arguments]    ${item_name}    ${description}    ${price}
    ${locator}    String.Replace String    ${overview.lbl_item_info}    ***item_name***    ${item_name}
    ${locator}    String.Replace String    ${locator}    ***description***    ${description}
    ${locator}    String.Replace String    ${locator}    ***price***    ${price}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify payment information
    SeleniumLibrary.Wait Until Element Is Visible    ${overview.lbl_payment_info}    timeout=${GLOBAL_TIMEOUT}

Verify shipping information
    SeleniumLibrary.Wait Until Element Is Visible    ${overview.lbl_shipping_info}    timeout=${GLOBAL_TIMEOUT}

Verify item total
    [Arguments]    ${item_total}
    ${locator}    String.Replace String    ${overview.lbl_item_total}    ***item_total***    ${item_total}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify tax
    [Arguments]    ${tax}
    ${locator}    String.Replace String    ${overview.lbl_tax}    ***tax***    ${tax}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify total
    [Arguments]    ${total}
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

Calculate the total price
    [Arguments]    @{prices}    ${total_price}=0
    FOR    ${price}    IN    @{prices}
        ${total_price}    Evaluate    ${price} + ${total_price}
    END
    ${total_price}    Evaluate    str(round(${total_price}, 2))
    RETURN    ${total_price}

Calculate the tax
    [Arguments]    ${total_price}    ${tax}=8
    ${total_tax}    Evaluate  round((${total_price} * ${tax}) / 100, 2)
    ${total_tax}    Evaluate  str(${total_tax})
    IF    ${total_tax}[-1] == .0
        ${total_tax}    String.Replace String    ${total_tax}    .0    .00
    END
    RETURN    ${total_tax}

Calculate the total
    [Arguments]    ${total_price}    ${total_tax}
    ${total}    Evaluate    ${total_price} + ${total_tax}
    ${total}    Evaluate    str(round(${total}, 2))
    RETURN    ${total}
