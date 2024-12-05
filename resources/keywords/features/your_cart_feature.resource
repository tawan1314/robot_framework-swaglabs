*** Settings ***
Resource    ${CURDIR}/../../import.resource


*** Keywords ***
Verify items infomation
    [Arguments]    ${num_of_items}    ${items_info}
    your_cart_page.Verify header
    FOR    ${i}    IN RANGE    ${num_of_items}
        ${i}    Evaluate    ${i} + 1
        ${n}    Evaluate    int(${i} / ${i})
        ${n}    BuiltIn.Convert To String    ${n}
        your_cart_page.Verify item information    ${items_info}[${i}][name]    ${items_info}[${i}][description]    ${items_info}[${i}][price]    ${n}
    END

Verify items information after items removed
    [Arguments]    ${items_info}    ${remove_items}
    ${num_of_remove_list}    Evaluate    len(${remove_items})
    FOR    ${i}    IN RANGE    ${num_of_remove_list}
        Collections.Remove From Dictionary    ${items_info}    ${remove_items}[${i}]
    END
    ${num_of_list}    Evaluate    len(${items_info})
    FOR    ${i}    IN RANGE    ${num_of_list}
        ${i}    Evaluate    ${i} + 1
        ${n}    Evaluate    int(${i} / ${i})
        ${n}    BuiltIn.Convert To String    ${n}
        your_cart_page.Verify item information    ${items_info}[${i}][name]    ${items_info}[${i}][description]    ${items_info}[${i}][price]    ${n}
    END

Verify and click remove button
    [Arguments]    ${items_info}    ${remove_items}
    FOR    ${remove_item}    IN    @{remove_items}
        IF    ${remove_item} == 0
            CONTINUE
        END
        your_cart_page.Verify remove button    ${items_info}[${remove_item}][name]    ${items_info}[${remove_item}][description]    ${items_info}[${remove_item}][price]
        your_cart_page.Click remove button     ${items_info}[${remove_item}][name]    ${items_info}[${remove_item}][description]    ${items_info}[${remove_item}][price]
    END
    RETURN    ${remove_items}

Verify and click continue shopping button
    your_cart_page.Verify continue shopping button
    your_cart_page.Click continue shopping button

Verify and click checkout button
    your_cart_page.Verify checkout button
    your_cart_page.Click checkout button
