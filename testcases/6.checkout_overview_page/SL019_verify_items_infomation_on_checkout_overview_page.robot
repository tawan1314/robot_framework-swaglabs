*** Settings ***
Resource          ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC031 Verify items information on the checkout overview page
    [Tags]    website    swag_labs    _feature    sl019    TC_031    positive    ready
    login_feature.Login successfully
    ...    ${TC_031.username}    ${TC_031.password}
    products_feature.Add item and verify number of items
    ...    num_of_items=${TC_031.num_of_items}
    ...    items_info=${TC_031.item_list}
    cart_feature.Verify and click cart button
    your_cart_feature.Verify items infomation
    ...    num_of_items=${TC_031.num_of_items}
    ...    items_info=${TC_031.item_list}
    your_cart_feature.Verify and click checkout button
    checkout_your_information_feature.Input user information    ${TC_031.user_info}
    checkout_your_information_feature.Verify and click continue button
    checkout_overview_feature.Verify items information
    ...    num_of_items=${TC_031.num_of_items}
    ...    item_info=${TC_031.item_list}
    checkout_overview_feature.Verify and click finish button
