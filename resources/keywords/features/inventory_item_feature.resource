*** Settings ***
Resource    ${CURDIR}/../../import.resource


*** Keywords ***
Verify item infomation and click add to cart button
    [Arguments]    ${items_info}
    inventory_item_page.Verify header
    inventory_item_page.Verify item information    ${items_info}[name]    ${items_info}[description]    ${items_info}[price]
    inventory_item_page.Verify add to cart button
    inventory_item_page.Click add to cart button
    inventory_item_page.Verify remove button
    inventory_item_page.Verify cart button
    inventory_item_page.Click cart button

Verify item infomation and click back button
    [Arguments]    ${items_info}
    inventory_item_page.Verify header
    inventory_item_page.Verify item information    ${items_info}[name]    ${items_info}[description]    ${items_info}[price]
    inventory_item_page.Verify back button
    inventory_item_page.Click back button
