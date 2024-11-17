*** Settings ***
Resource    ${CURDIR}/../../import.resource
Resource    ${CURDIR}/../locators/finish_locator.resource


*** Keywords ***
Verify header
    SeleniumLibrary.Wait Until Element Is Visible    ${finish.lbl_header}    timeout=${GLOBAL_TIMEOUT}

Verify thank you label
    SeleniumLibrary.Wait Until Element Is Visible    ${finish.lbl_thank_you}    timeout=${GLOBAL_TIMEOUT}

Verify description label
    SeleniumLibrary.Wait Until Element Is Visible    ${finish.lbl_description}    timeout=${GLOBAL_TIMEOUT}

Verify pony express image
    SeleniumLibrary.Wait Until Element Is Visible    ${finish.img_pony_express}    timeout=${GLOBAL_TIMEOUT}
