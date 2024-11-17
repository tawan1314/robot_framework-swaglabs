*** Settings ***
Resource    ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC018 Verify redirect to checkout your information page when click checkout button
    [Tags]    website    swag_labs    _feature    sl011    TC_019    positive
    login_feature.Login successfully    ${TC_019.username}    ${TC_019.password}
    products_feature.Add item and verify number of items
    ...    num_of_items=${TC_019.num_of_items}
    ...    items_info=${TC_019.item_list}
    cart_feature.Verify and click cart button
    your_cart_feature.Verify items infomation
    ...    num_of_items=${TC_019.num_of_items}
    ...    items_info=${TC_019.item_list}
    your_cart_page.Verify checkout button
    your_cart_page.Click checkout button
    checkout_your_information_feature.Input the information    ${TC_019.user_info}
    checkout_your_information_feature.Verify and close the error required     ${your_info_page.err_firstname_required}
