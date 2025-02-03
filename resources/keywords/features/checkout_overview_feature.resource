*** Settings ***
Resource    ${CURDIR}/../../import.resource


*** Keywords ***
Verify items information
    [Arguments]    ${num_of_items}    ${item_info}
    checkout_overview_page.Verify header
    checkout_overview_page.Verify item information    ${num_of_items}    ${item_info}
    checkout_overview_page.Verify payment information
    checkout_overview_page.Verify shipping information
    ${item_total}    Calculate item total    ${num_of_items}    ${item_info}
    ${tax}    Calculate tax    ${item_total}
    ${total}    Calculate total    ${item_total}    ${tax}
    checkout_overview_page.Verify item total    ${item_total}
    checkout_overview_page.Verify tax    ${tax}
    checkout_overview_page.Verify total    ${total}

Calculate item total
    [Arguments]    ${num_of_items}    ${item_info}
    ${item_total}    Set Variable    0
    FOR    ${i}    IN RANGE    ${num_of_items}
        ${i}    Evaluate    ${i} + 1
        ${item_total}    Evaluate    ${item_total} + ${item_info}[${i}][price]
    END
    RETURN    ${item_total}

Calculate tax
    [Arguments]    ${item_total}
    ${tax}    Evaluate    round((${item_total} * 0.8)/10,2)
    RETURN    ${tax}

Calculate total
    [Arguments]    ${item_total}    ${tax}
    ${total}    Evaluate    ${item_total} + ${tax}
    RETURN    ${total}

Verify and click finish button
    checkout_overview_page.Verify finish button
    checkout_overview_page.Click finish button

Verify and click cancel button
    checkout_overview_page.Verify cancel button
    checkout_overview_page.Click cancel button
