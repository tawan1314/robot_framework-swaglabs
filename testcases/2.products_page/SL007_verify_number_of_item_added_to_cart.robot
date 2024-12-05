*** Settings ***
Resource          ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website
Test Template     Verify number of the item that added to cart
Force Tags        website    swag_labs    _feature    sl007    positive    data_driven    ready


*** Test Cases ***                                                            USERNAME              PASSWORD              NUM_OF_ITEMS             ITEMS_INFO
TC014 Verify number of the item that added to cart (1 item)              ${TC_014.username}    ${TC_014.password}    ${TC_014.num_of_items}    ${TC_014.item_list}
    [Tags]    TC_014

TC015 Verify number of the item that added to cart (more than 1 item)    ${TC_015.username}    ${TC_015.password}    ${TC_015.num_of_items}    ${TC_015.item_list}
    [Tags]    TC_015


*** Keywords ***
Verify number of the item that added to cart
    [Arguments]    ${USERNAME}    ${PASSWORD}    ${NUM_OF_ITEMS}    ${ITEMS_INFO}
    login_feature.Login successfully    ${USERNAME}    ${PASSWORD}
    products_feature.Add item and verify number of items    ${NUM_OF_ITEMS}    ${ITEMS_INFO}
    cart_feature.Verify and click cart button
