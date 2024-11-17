*** Settings ***
Resource    ${CURDIR}/../../import.resource


*** Keywords ***
Verify purchasing successfully
    finish_page.Verify header
    finish_page.Verify thank you label
    finish_page.Verify description label
    # finish_page.Verify pony express image
