*** Settings ***
Resource    ${CURDIR}/../../import.resource


*** Keywords ***
Verify and sort items
    [Arguments]    ${sort_option}
    products_page.Verify sort button
    products_page.Click sort button
    products_page.Verify sort option    ${sort_option}
    products_page.Click sort option     ${sort_option}

Verify sorted items
    [Arguments]    ${num_of_items}    ${items_info}
    FOR    ${i}    IN RANGE    ${num_of_items}
        ${i}    Evaluate    ${i} + 1
        ${name}           SeleniumLibrary.Get Text    xpath=//div//following::div[@class="${products_page.attribute_items.name}"][${i}]
        ${description}    SeleniumLibrary.Get Text    xpath=//div//following::div[@class="${products_page.attribute_items.description}"][${i}]
        ${price}          SeleniumLibrary.Get Text    xpath=//div//following::div[@class="${products_page.attribute_items.price}"][${i}]
        ${price}          String.Remove String    ${price}    $
        BuiltIn.Should Be Equal    ${items_info}[${i}][name]           ${name}
        BuiltIn.Should Be Equal    ${items_info}[${i}][description]    ${description}
        BuiltIn.Should Be Equal    ${items_info}[${i}][price]          ${price}
    END

Verify and click the item name
    [Arguments]    ${num_of_items}    ${items_info}
    FOR    ${i}    IN RANGE    ${num_of_items}
        ${i}    Evaluate    ${i} + 1
        products_page.Verify item information    ${items_info}[${i}][name]    ${items_info}[${i}][description]    ${items_info}[${i}][price]
        products_page.Click item name    ${items_info}[${i}][name]
    END

## do not verify image
# Verify and click the item image
#     [Arguments]    ${items_info}
#     products_page.Verify item information    ${items_info}[${i}][name]    ${items_info}[${i}][description]    ${items_info}[${i}][price]
#     products_page.Click item image    ${items_info}[${i}][img_src]

Add item and verify number of items
    [Arguments]    ${num_of_items}    ${items_info}
    FOR    ${i}    IN RANGE    ${num_of_items}
        ${i}    Evaluate    ${i} + 1
        products_page.Verify add to cart button    ${items_info}[${i}][name]    ${items_info}[${i}][description]    ${items_info}[${i}][price]
        products_page.Click add to cart button     ${items_info}[${i}][name]    ${items_info}[${i}][description]    ${items_info}[${i}][price]
        products_page.Verify remove button         ${items_info}[${i}][name]    ${items_info}[${i}][description]    ${items_info}[${i}][price]
        ${n}    BuiltIn.Convert To String          ${i}
        cart_page.Verify number of items           ${n}
    END

Remove item and verify number of items
    [Arguments]    ${num_of_items}    ${items_info}
    WHILE    ${num_of_items} != 0
        FOR    ${i}    IN RANGE    ${num_of_items}
            ${i}    Evaluate    ${i} + 1 
            products_page.Verify remove button    ${items_info}[${i}][name]    ${items_info}[${i}][description]    ${items_info}[${i}][price]
            products_page.Click remove button     ${items_info}[${i}][name]    ${items_info}[${i}][description]    ${items_info}[${i}][price]
            ${num_of_items}    Evaluate     ${num_of_items} - 1
            ${n}               Evaluate     str(${num_of_items})
            IF    '${n}' != '0'
                cart_page.Verify number of items      ${n}
            ELSE
                cart_page.Verify number of items when have no any item added to cart
            END
        END
    END
