*** Settings ***
Resource    ${CURDIR}/../../import.resource


*** Keywords ***
Verify purchasing information
    [Arguments]    ${num_of_items}    ${items_info}
    # ...    ${quantity}    ${item_info}    ${item_total}    
    checkout_overview_page.Verify header
    FOR    ${i}    IN RANGE    ${num_of_items}
        ${i}    Evaluate    ${i} + 1
        # checkout_overview_page.Verify item information    ${item_info.item_name}    ${item_info.description}    ${item_info.price}
        ${total_price}    ${total_tax}    ${total}    Calculate and get total price result    ${items_info}[${i}][price]
    END
    checkout_overview_page.Verify payment information
    checkout_overview_page.Verify shipping information
    checkout_overview_page.Verify item total    ${total_price}
    checkout_overview_page.Verify tax    ${total_tax}
    checkout_overview_page.Verify total    ${total}

Calculate and get total price result
    [Arguments]    @{prices}
    ${total_price}    checkout_overview_page.Calculate the total price    @{prices}
    ${total_tax}    checkout_overview_page.Calculate the tax    ${total_price}
    ${total}    checkout_overview_page.Calculate the total    ${total_price}    ${total_tax}
    RETURN    ${total_price}    ${total_tax}    ${total}
