*** Settings ***
Resource          ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC032 Verify click cancel button on the checkout overview page
    [Tags]    website    swag_labs    _feature    sl020    TC_032    positive    ready
    login_feature.Login successfully
    ...    ${TC_032.username}    ${TC_032.password}
    products_feature.Add item and verify number of items
    ...    num_of_items=${TC_032.num_of_items}
    ...    items_info=${TC_032.item_list}
    cart_feature.Verify and click cart button
    your_cart_feature.Verify items infomation
    ...    num_of_items=${TC_032.num_of_items}
    ...    items_info=${TC_032.item_list}
    your_cart_feature.Verify and click checkout button
    checkout_your_information_feature.Input user information    ${TC_032.user_info}
    checkout_your_information_feature.Verify and click continue button
    checkout_overview_feature.Verify items information
    ...    num_of_items=${TC_032.num_of_items}
    ...    item_info=${TC_032.item_list}
    checkout_overview_feature.Verify and click cancel button
