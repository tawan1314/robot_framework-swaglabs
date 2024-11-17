*** Settings ***
Resource    ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC013 Verify the item information on the inventory item page by click the item name
    [Tags]    website    swag_labs    _feature    sl006    TC_013    positive
    login_feature.Login successfully    ${TC_013.username}    ${TC_013.password}
    products_feature.Verify and click the item name    ${TC_013.item_list}
    inventory_item_feature.Verify item infomation and click back button    ${TC_013.item_list}
    products_page.Verify products header
