*** Settings ***
Resource          ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC020 Verify tap Back button on the inventory item page
    [Tags]    website    swag_labs    _feature    sl012    TC_020    positive    ready
    login_feature.Login successfully
    ...    username=${TC_020.username}
    ...    password=${TC_020.password}
    products_feature.Verify and click the item name
    ...    num_of_items=${TC_021.num_of_items}
    ...    items_info=${TC_020.item_list}
    inventory_item_feature.Verify item infomation
    ...    num_of_items=${TC020.num_of_items}
    ...    items_info=${TC_020.item_list}
    inventory_item_feature.Verify and click back button
    products_page.Verify products header
