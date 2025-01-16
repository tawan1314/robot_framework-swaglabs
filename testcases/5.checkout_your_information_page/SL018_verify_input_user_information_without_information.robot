*** Settings ***
Resource          ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website
Test Template     Input user information with invalid information
Force Tags        website    swag_labs    _feature    sl018    negative    ready

*** Test Cases ***                                            USERNAME               PASSWORD             NUM_OF_ITEMS             ITEM_LIST              USER_INFO                       ERR_REQUIRED
TC025 Verify input user information without firstname    ${TC_028.username}    ${TC_028.password}    ${TC_028.num_of_items}    ${TC_028.item_list}    ${TC_028.user_info}    ${your_info_page.err_firstname_required}
    [Tags]    TC_028

TC026 Verify input user information without lastname    ${TC_029.username}    ${TC_029.password}    ${TC_029.num_of_items}    ${TC_029.item_list}    ${TC_029.user_info}    ${your_info_page.err_lastname_required}
    [Tags]    TC_029

TC027 Verify input user information without zip code    ${TC_030.username}    ${TC_030.password}    ${TC_030.num_of_items}    ${TC_030.item_list}    ${TC_030.user_info}    ${your_info_page.err_zip_postal_code_required}
    [Tags]    TC_030


*** Keywords ***
Input user information with invalid information
    [Arguments]    ${USERNAME}    ${PASSWORD}    ${NUM_OF_ITEMS}    ${ITEM_LIST}    ${USER_INFO}    ${ERR_REQUIRED}
    login_feature.Login successfully
    ...    ${USERNAME}    ${PASSWORD}
    products_feature.Add item and verify number of items
    ...    num_of_items=${NUM_OF_ITEMS}
    ...    items_info=${ITEM_LIST}
    cart_feature.Verify and click cart button
    your_cart_feature.Verify items infomation
    ...    num_of_items=${NUM_OF_ITEMS}
    ...    items_info=${ITEM_LIST}
    your_cart_feature.Verify and click checkout button
    checkout_your_information_feature.Input user information    ${USER_INFO}
    checkout_your_information_feature.Verify and click continue button
    checkout_your_information_feature.Verify and close the error required    required=${ERR_REQUIRED}
