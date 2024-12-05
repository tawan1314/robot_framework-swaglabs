*** Settings ***
Resource    ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC022 Verify remove a item on the cart page
    [Tags]    website    swag_labs    _feature    sl015    TC_022    positive    ready
    login_feature.Login successfully
    ...    username=${TC_022.username}    password=${TC_022.password}
    products_feature.Add item and verify number of items
    ...    num_of_items=${TC_022.num_of_items}    items_info=${TC_022.item_list}
    cart_feature.Verify and click cart button
    your_cart_feature.Verify items infomation
    ...    num_of_items=${TC_022.num_of_items}    items_info=${TC_022.item_list}
    ${remove_items}    your_cart_feature.Verify and click remove button
    ...    items_info=${TC_022.item_list}    remove_items=${TC_022.remove_items}
    your_cart_feature.Verify items information after items removed
    ...    items_info=${TC_022.item_list}    remove_items=${TC_022.remove_items}
