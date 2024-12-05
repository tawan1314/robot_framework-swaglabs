*** Settings ***
Resource          ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website
Test Template     login_feature.Login unsuccessfully
Force Tags        website    swag_labs    login_feature    sl002    negative    data_driven    ready


*** Test Cases ***                                                  USERNAME                  PASSWORD                          REQUIRED
TC004 Login unsuccessfully with no username                    ${TC_004.username}        ${TC_004.password}        ${login_page.err_username_required}
    [Tags]    TC_004

TC005 Login unsuccessfully with no password                    ${TC_005.username}        ${TC_005.password}        ${login_page.err_password_required}
    [Tags]    TC_005

TC006 Login unsuccessfully with no account                     ${TC_006.username}        ${TC_006.password}        ${login_page.err_username_required}
    [Tags]    TC_006

TC023 Login with valid username and invalid password           ${TC_023.username}        ${TC_023.password}        ${login_page.err_invalid_username_and_password}
    [Tags]    TC_023

TC024 Login with invalid username and valid password           ${TC_024.username}        ${TC_024.password}        ${login_page.err_invalid_username_and_password}
    [Tags]    TC_024

TC025 Login with switched valid username and valid password    ${TC_025.username}        ${TC_025.password}        ${login_page.err_invalid_username_and_password}
    [Tags]    TC_025
