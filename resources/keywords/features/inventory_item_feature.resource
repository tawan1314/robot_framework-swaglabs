*** Settings ***
Resource    ${CURDIR}/../../import.resource


*** Keywords ***
Verify item infomation
    [Arguments]    ${num_of_items}    ${items_info}
    inventory_item_page.Verify header
    FOR    ${i}    IN RANGE    ${num_of_items}
        ${i}    Evaluate    ${i} + 1
        inventory_item_page.Verify item information    ${items_info}[${i}][name]    ${items_info}[${i}][description]    ${items_info}[${i}][price]
    END

Verify and click add to cart button
    [Arguments]    ${num_of_items}
    cart_page.Verify number of items when have no any item added to cart
    inventory_item_page.Verify add to cart button
    inventory_item_page.Click add to cart button
    inventory_item_page.Verify remove button
    cart_page.Verify number of items    ${num_of_items}

Verify and click back button
    inventory_item_page.Verify back button
    inventory_item_page.Click back button

Verify and click remove button
    inventory_item_page.Verify remove button
    inventory_item_page.Click remove button
