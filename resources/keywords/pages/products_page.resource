*** Settings ***
Resource    ${CURDIR}/../../import.resource
Resource    ${CURDIR}/../locators/products_locator.resource


*** Keywords ***
Verify products header
    SeleniumLibrary.Wait Until Element Is Visible    ${products.lbl_header}    timeout=${GLOBAL_TIMEOUT}

Verify item information
    [Arguments]    ${name}    ${description}    ${price}
    ${locator}    String.Replace String    ${products.lbl_item_information}    ***item_name***    ${name}
    ${locator}    String.Replace String    ${locator}    ***description***    ${description}
    ${locator}    String.Replace String    ${locator}    ***price***    ${price}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify add to cart button
    [Arguments]    ${name}    ${description}    ${price}
    ${locator}    String.Replace String    ${products.btn_add_to_cart}    ***item_name***    ${name}
    ${locator}    String.Replace String    ${locator}    ***description***    ${description}
    ${locator}    String.Replace String    ${locator}    ***price***    ${price}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify sort button
    SeleniumLibrary.Wait Until Element Is Visible    ${products.btn_sort}    timeout=${GLOBAL_TIMEOUT}

Verify sort option
    [Arguments]    ${sort_option}
    ${locator}    String.Replace String    ${products.option_sort}    ***sort_options***    ${sort_option}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Verify remove button
    [Arguments]    ${name}    ${description}    ${price}
    ${locator}    String.Replace String    ${products.btn_remove}    ***item_name***    ${name}
    ${locator}    String.Replace String    ${locator}    ***description***    ${description}
    ${locator}    String.Replace String    ${locator}    ***price***    ${price}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    timeout=${GLOBAL_TIMEOUT}

Click item name
    [Arguments]    ${name}
    ${locator}    String.Replace String    ${products.lbl_item_name}    ***item_name***    ${name}
    SeleniumLibrary.Click Element    ${locator}

Click item image
    [Arguments]    ${img_src}
    ${locator}    String.Replace String    ${products.img_product}    ***img_src***    ${img_src}
    SeleniumLibrary.Click Element    ${locator}

Click add to cart button
    [Arguments]    ${name}    ${description}    ${price}
    ${locator}    String.Replace String    ${products.btn_add_to_cart}    ***item_name***    ${name}
    ${locator}    String.Replace String    ${locator}    ***description***    ${description}
    ${locator}    String.Replace String    ${locator}    ***price***    ${price}
    SeleniumLibrary.Click Element    ${locator}

Click sort button
    SeleniumLibrary.Click Element    ${products.btn_sort}

Click sort option
    [Arguments]    ${sort_option}
    ${locator}    String.Replace String    ${products.option_sort}    ***sort_options***    ${sort_option}
    SeleniumLibrary.Click Element    ${locator}

Click remove button
    [Arguments]    ${name}    ${description}    ${price}
    ${locator}    String.Replace String    ${products.btn_remove}    ***item_name***    ${name}
    ${locator}    String.Replace String    ${locator}    ***description***    ${description}
    ${locator}    String.Replace String    ${locator}    ***price***    ${price}
    SeleniumLibrary.Click Element    ${locator}
