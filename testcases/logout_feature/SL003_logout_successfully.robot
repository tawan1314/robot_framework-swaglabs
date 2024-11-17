*** Settings ***
Resource    ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC007 Logout successfully
    [Tags]    website    swag_labs    logout_feature    sl003    TC_007    positive
    login_feature.Login successfully    ${TC_007.username}    ${TC_007.password}
    burgur_menu_feature.Logout
    login_page.Verify Swag Labs header
