*** Settings ***
Resource          ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC013 Verify the item information on the inventory item page by click the item name
    [Tags]    website    swag_labs    _feature    sl006    TC_013    positive    ready
    login_feature.Login successfully    ${TC_013.username}    ${TC_013.password}
    products_feature.Verify and click the item name
    ...    ${TC_021.num_of_items}
    ...    ${TC_013.item_list}
    inventory_item_feature.Verify item infomation
    ...    ${TC_013.num_of_items}
    ...    ${TC_013.item_list}
