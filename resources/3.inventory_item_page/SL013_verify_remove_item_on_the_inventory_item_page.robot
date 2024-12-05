*** Settings ***
Resource          ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC021 Verify remove an item on the inventory page by clicking REMOVE button
    [Tags]    website    swag_labs    _feature    sl013    tc_021    positive    ready
    login_feature.Login successfully
    ...    username=${TC_021.username}
    ...    password=${TC_021.password}
    products_feature.Verify and click the item name
    ...    num_of_items=${TC_021.num_of_items}
    ...    items_info=${TC_021.item_list}
    cart_page.Verify number of items when have no any item added to cart
    inventory_item_feature.Verify item infomation
    ...    num_of_items=${TC_021.num_of_items}
    ...    items_info=${TC_021.item_list}
    inventory_item_feature.Verify and click add to cart button
    ...    num_of_items=${TC_021.num_of_items}
    inventory_item_feature.Verify and click remove button
    cart_page.Verify number of items when have no any item added to cart
