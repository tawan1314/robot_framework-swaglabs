*** Settings ***
Resource    ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC017 Verify return to products page when click continue shopping button
    [Tags]    website    swag_labs    _feature    sl009    TC_017    positive
    login_feature.Login successfully    ${TC_017.username}    ${TC_017.password}
    products_feature.Add item and verify number of items
    ...    num_of_items=${TC_017.num_of_items}
    ...    items_info=${TC_017.item_list}
    cart_feature.Verify and click cart button
    your_cart_feature.Verify items infomation
    ...    num_of_items=${TC_017.num_of_items}
    ...    items_info=${TC_017.item_list}
    your_cart_page.Verify continue shopping button
    your_cart_page.Click continue shopping button
    products_page.Verify products header
