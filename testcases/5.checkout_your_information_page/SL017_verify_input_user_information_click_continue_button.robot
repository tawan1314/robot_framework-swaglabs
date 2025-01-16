*** Settings ***
Resource    ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC024 Verify input all user information and click CONTINUE button
    [Tags]    website    swag_labs    _feature    sl017    TC_027    positive    ready
    login_feature.Login successfully
    ...    ${TC_027.username}    ${TC_027.password}
    products_feature.Add item and verify number of items
    ...    num_of_items=${TC_027.num_of_items}
    ...    items_info=${TC_027.item_list}
    cart_feature.Verify and click cart button
    your_cart_feature.Verify items infomation
    ...    num_of_items=${TC_027.num_of_items}
    ...    items_info=${TC_027.item_list}
    your_cart_feature.Verify and click checkout button
    checkout_your_information_feature.Input user information    ${TC_027.user_info}
    checkout_your_information_feature.Verify and click continue button
