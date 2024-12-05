*** Settings ***
Resource    ${CURDIR}/../../import.resource


*** Keywords ***
Open SwagLabs website
    Open Browser    ${SWAGLABS_WEBSITE}    ${BROWSER}

Close SwagLabs website
    SeleniumLibrary.Capture Page Screenshot
    Close Browser
