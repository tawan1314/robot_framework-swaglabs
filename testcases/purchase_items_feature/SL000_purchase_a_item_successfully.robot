*** Settings ***
Resource          ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC000 Purchase a item successfully
    [Tags]    website    swag_labs    purchase_items_feature    sl000    TC_012    positive
    login_feature.Login successfully    ${TC_012.username}    ${TC_012.password}
    products_feature.Add items to cart and click the cart button
    ...    num_of_items=${TC_012.num_of_items}
    ...    items_info=${TC_012.item_list}
    your_cart_feature.Verify items infomation
    ...    num_of_items=${TC_012.num_of_items}
    ...    items_info=${TC_012.item_list}
    your_cart_page.Verify checkout button
    your_cart_page.Click checkout button
    checkout_your_information_feature.Input the information
    ...    firstname=${TC_012.firstname}
    ...    lastname=${TC_012.lastname}
    ...    zip_postal_code=${TC_012.zip_postal_code}
    checkout_your_information_page.Verify continue button
    checkout_your_information_page.Click continue button
    checkout_overview_feature.Verify purchasing information
    ...    num_of_items=${TC_012.num_of_items}
    ...    items_info=${TC_012.item_list}
    checkout_overview_page.Verify finish button
    checkout_overview_page.Click finish button
    finish_feature.Verify purchasing successfully
