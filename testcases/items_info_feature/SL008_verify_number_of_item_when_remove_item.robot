*** Settings ***
Resource    ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC016 Verify number of the item when remove the item
    [Tags]    website    swag_labs    _feature    sl008    TC_016    positive    data_driven
    login_feature.Login successfully    ${TC_016.username}    ${TC_016.password}
    products_feature.Add item and verify number of items
    ...    num_of_items=${TC_016.num_of_items}
    ...    items_info=${TC_016.item_list}
    products_feature.Remove item and verify number of items
    ...    num_of_items=${TC_016.num_of_items}
    ...    items_info=${TC_016.item_list}
