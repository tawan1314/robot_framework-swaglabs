*** Settings ***
Resource          ${CURDIR}/../resources/import.resource


*** Test Cases ***
test keyword
    [Tags]    test
    ${num_of_list}    Evaluate    len(${TC_022.remove_items})
    FOR    ${i}    IN RANGE    ${num_of_list}
        Log    ${TC_022.item_list}
        Collections.Remove From Dictionary    ${TC_022.item_list}    ${TC_022.remove_items}[${i}]
        Log    ${TC_022.item_list}
    END
