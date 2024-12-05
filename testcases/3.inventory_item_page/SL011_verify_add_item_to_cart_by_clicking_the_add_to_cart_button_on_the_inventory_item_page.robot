*** Settings ***
Resource          ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC019 Verify add a item to cart by clicking the ADD TO CART button on the inventory item page
    [Tags]    website    swag_labs    _feature    sl011    TC_019    positive    ready
    login_feature.Login successfully
    ...    username=${TC_019.username}
    ...    password=${TC_019.password}
    products_feature.Verify and click the item name
    ...    num_of_items=${TC_021.num_of_items}
    ...    items_info=${TC_019.item_list}
    inventory_item_feature.Verify item infomation
    ...    num_of_items=${TC_021.num_of_items}
    ...    items_info=${TC_019.item_list}
    inventory_item_feature.Verify and click add to cart button
    ...    num_of_items=${TC_019.num_of_items}
    cart_feature.Verify and click cart button
    your_cart_feature.Verify items infomation
    ...    num_of_items=${TC_019.num_of_items}
    ...    items_info=${TC_019.item_list}
