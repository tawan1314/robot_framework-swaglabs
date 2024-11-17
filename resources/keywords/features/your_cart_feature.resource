*** Settings ***
Resource    ${CURDIR}/../../import.resource


*** Keywords ***
Verify items infomation
    [Arguments]    ${num_of_items}    ${items_info}
    FOR    ${i}    IN RANGE    ${num_of_items}
        ${i}    Evaluate    ${i} + 1
        your_cart_page.Verify header
        ${n}    Evaluate    int(${i} / ${i})
        ${n}    BuiltIn.Convert To String    ${n}
        your_cart_page.Verify item information    ${items_info}[${i}][name]    ${items_info}[${i}][description]    ${items_info}[${i}][price]    ${n}
    END
