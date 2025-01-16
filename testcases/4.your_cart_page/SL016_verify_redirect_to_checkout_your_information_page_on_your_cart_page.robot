*** Settings ***
Resource          ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website

*** Test Cases ***
TC023 Verify redirect to the Checkout your information page by clicking the CHECKOUT button
    [Tags]    website    swag_labs    _feature    sl016    TC_026    positive    ready
    login_feature.Login successfully
    ...    username=${TC_026.username}    password=${TC_026.password}
    products_feature.Add item and verify number of items
    ...    num_of_items=${TC_026.num_of_items}
    ...    items_info=${TC_026.item_list}
    cart_feature.Verify and click cart button
    your_cart_feature.Verify items infomation
    ...    num_of_items=${TC_026.num_of_items}
    ...    items_info=${TC_026.item_list}
    your_cart_feature.Verify and click checkout button
    checkout_your_information_feature.Verify all element on the page
