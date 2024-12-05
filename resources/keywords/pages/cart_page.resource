*** Settings ***
Resource    ${CURDIR}/../../import.resource
Resource    ${CURDIR}/../locators/cart_locator.resource


*** Keywords ***
Verify cart button
    SeleniumLibrary.Wait Until Element Is Visible    ${cart.btn_cart}    timeout=${GLOBAL_TIMEOUT}

Verify number of items
    [Arguments]    ${num_of_items}
    ${num_of_items}    Evaluate    str(${num_of_items})
    ${locator}    String.Replace String    ${cart.lbl_num_of_items}    ***num_of_items***    ${num_of_items}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify number of items when have no any item added to cart
    ${new_locator}    String.Remove String Using Regexp    ${cart.lbl_num_of_items}    /descendant[a-z[:()="*_]*]
    SeleniumLibrary.Wait Until Element Is Visible    ${new_locator}    timeout=${GLOBAL_TIMEOUT}

Click cart button
    SeleniumLibrary.Click Element    ${cart.btn_cart}
