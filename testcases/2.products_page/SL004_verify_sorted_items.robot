*** Settings ***
Resource          ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website
Test Template     Sort item and verify all of items
Force Tags    website    swag_labs    sort_feature    sl004    positive    data_driven    ready


*** Test Cases ***                                            USERNAME              PASSWORD              SORT_OPTION               NUM_OF_ITEMS              ITEMS_INFO
TC008 Verify the items when sort by name A - Z           ${TC_008.username}    ${TC_008.password}    ${TC_008.sort_option}    ${TC_008.num_of_items}    ${TC_008.item_list}
    [Tags]    TC_008

TC009 Verify the items when sort by name Z - A           ${TC_009.username}    ${TC_009.password}    ${TC_009.sort_option}    ${TC_009.num_of_items}    ${TC_009.item_list}
    [Tags]    TC_009

TC010 Verify the items when sort by price low to high    ${TC_010.username}    ${TC_010.password}    ${TC_010.sort_option}    ${TC_010.num_of_items}    ${TC_010.item_list}
    [Tags]    TC_010

TC011 Verify the items when sort by price high to low    ${TC_011.username}    ${TC_011.password}    ${TC_011.sort_option}    ${TC_011.num_of_items}    ${TC_011.item_list}
    [Tags]    TC_011


*** Keywords ***
Sort item and verify all of items
    [Arguments]    ${USERNAME}    ${PASSWORD}    ${SORT_OPTION}    ${NUM_OF_ITEMS}    ${ITEMS_INFO}
    login_feature.Login successfully    ${USERNAME}    ${PASSWORD}
    products_feature.Verify and sort items    ${SORT_OPTION}
    products_feature.Verify sorted items      ${NUM_OF_ITEMS}    ${ITEMS_INFO}
