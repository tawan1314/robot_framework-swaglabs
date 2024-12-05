*** Settings ***
Resource         ${CURDIR}/../../resources/import.resource
Test Setup       common.Open SwagLabs website
Test Teardown    common.Close SwagLabs website

*** Test Cases ***
TC111 Verify number of the added items are in the cart after revisit
    [Tags]    website    swag_labs    sort_feature    sl014    tc_111    positive    ready
    login_feature.Login successfully
    ...    username=${TC_111.username}
    ...    password=${TC_111.password}
    products_feature.Add item and verify number of items
    ...    num_of_items=${TC_111.number_of_items}
    ...    items_info=${TC_111.item_list}
    cart_feature.Verify and click cart button
    your_cart_feature.Verify items infomation
    ...    num_of_items=${TC_111.number_of_items}
    ...    items_info=${TC_111.item_list}
    burgur_menu_feature.Logout
    login_feature.Login successfully
    ...    username=${TC_111.username}
    ...    password=${TC_111.password}
    cart_page.Verify number of items
    ...    num_of_items=${TC_111.number_of_items}
    cart_feature.Verify and click cart button
    your_cart_feature.Verify items infomation
    ...    num_of_items=${TC_111.number_of_items}
    ...    items_info=${TC_111.item_list}
