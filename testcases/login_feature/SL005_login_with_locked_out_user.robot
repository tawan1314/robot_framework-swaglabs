*** Settings ***
Resource    ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website


*** Test Cases ***
TC012 Login with locked out user
    [Tags]    website    swag_labs    sort_feature    sl005    TC_012    positive    data_driven
    login_feature.Login    ${TC_012.username}    ${TC_012.password}
    login_feature.Verify and close locked out user error
