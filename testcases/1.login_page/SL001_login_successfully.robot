*** Settings ***
Resource          ${CURDIR}/../../resources/import.resource
Test Setup        common.Open SwagLabs website
Test Teardown     common.Close SwagLabs website
Test Template     login_feature.Login successfully
Force Tags        website    swag_labs    login_feature    sl001    positive    data_driven    ready


*** Test Cases ***                                            USERNAME                PASSWORD
TC001 Login successfully with standard user              ${TC_001.username}    ${TC_001.password}
    [Tags]    TC_001

TC002 Login successfully with problem user               ${TC_002.username}    ${TC_002.password}
    [Tags]    TC_002

TC003 Login successfully with performance glitch user    ${TC_003.username}    ${TC_003.password}
    [Tags]    TC_003
