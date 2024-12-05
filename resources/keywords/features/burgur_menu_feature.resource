*** Settings ***
Resource    ${CURDIR}/../../import.resource


*** Keywords ***
Verify open and close burgur menu
    burgur_menu_page.Verify burgur button
    burgur_menu_page.Click burgur button
    BuiltIn.Wait Until Keyword Succeeds    ${GLOBAL_TIMES}    ${GLOBAL_TIMEOUT}    Run Keywords
    ...    burgur_menu_page.Verify close burgur button
    ...    burgur_menu_page.Click close burgur button

Go to all items page
    Verify open and close burgur menu
    burgur_menu_page.Verify burgur button
    burgur_menu_page.Click burgur button
    burgur_menu_page.Verify all items button
    burgur_menu_page.Click all items button

Go to the about page
    Verify open and close burgur menu
    burgur_menu_page.Verify burgur button
    burgur_menu_page.Click burgur button
    burgur_menu_page.Verify about button
    burgur_menu_page.Click about button

Logout
    Verify open and close burgur menu
    burgur_menu_page.Verify burgur button
    burgur_menu_page.Click burgur button
    burgur_menu_page.Verify logout button
    burgur_menu_page.Click logout button

Reset the app state
    Verify open and close burgur menu
    burgur_menu_page.Verify burgur button
    burgur_menu_page.Click burgur button
    burgur_menu_page.Verify reset app state button
    burgur_menu_page.Click reset app state button
