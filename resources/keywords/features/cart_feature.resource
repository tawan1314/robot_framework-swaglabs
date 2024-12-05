*** Settings ***
Resource    ${CURDIR}/../../import.resource


*** Keywords ***
Verify and click cart button
    cart_page.Verify cart button
    cart_page.Click cart button
