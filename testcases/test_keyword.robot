*** Settings ***
Resource          ${CURDIR}/../resources/import.resource


*** Test Cases ***
test keywords
    [Tags]    test
    Calculate the tax    total_price=45.99


*** Keywords ***
Calculate the tax
    [Arguments]    ${total_price}    ${tax}=8
    ${total_tax}    Evaluate  math.ceil(${total_price} * ${tax}) / 100    modules=math
    ${total_tax}    Evaluate  str(${total_tax})
    IF    ${total_tax}[-1] == .0
        Log to console    ${total_tax}
        ${total_tax}    String.Replace String    ${total_tax}    .0    .00
    END
    Log to console    ${total_tax}
