*** Settings ***
Resource          ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website
Test Template     login_feature.Login unsuccessfully
Test Tags         website    swag_labs    login_feature    sl002    negative    data_driven


*** Test Cases ***                                 USERNAME                   PASSWORD                          REQUIRED
TC004 Login unsuccessfully with no username    ${TC_004.username}        ${TC_004.password}        ${login_page.err_username_required}
    [Tags]    TC_004

TC005 Login unsuccessfully with no password    ${TC_005.username}        ${TC_005.password}    ${login_page.err_password_required}
    [Tags]    TC_005

TC006 Login unsuccessfully with no account     ${TC_006.username}        ${TC_006.password}     ${login_page.err_username_required}
    [Tags]    TC_006
