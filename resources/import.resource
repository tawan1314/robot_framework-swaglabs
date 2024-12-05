*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections

# Pages
Resource    ${CURDIR}/keywords/pages/login_page.resource
Resource    ${CURDIR}/keywords/pages/products_page.resource
Resource    ${CURDIR}/keywords/pages/inventory_item_page.resource
Resource    ${CURDIR}/keywords/pages/burgur_menu_page.resource
Resource    ${CURDIR}/keywords/pages/cart_page.resource
Resource    ${CURDIR}/keywords/pages/your_cart_page.resource
Resource    ${CURDIR}/keywords/pages/checkout_your_information_page.resource
Resource    ${CURDIR}/keywords/pages/checkout_overview_page.resource
Resource    ${CURDIR}/keywords/pages/finish_page.resource

# Features
Resource    ${CURDIR}/keywords/features/login_feature.resource
Resource    ${CURDIR}/keywords/features/products_feature.resource
Resource    ${CURDIR}/keywords/features/inventory_item_feature.resource
Resource    ${CURDIR}/keywords/features/burgur_menu_feature.resource
Resource    ${CURDIR}/keywords/features/cart_feature.resource
Resource    ${CURDIR}/keywords/features/your_cart_feature.resource
Resource    ${CURDIR}/keywords/features/checkout_your_information_feature.resource
Resource    ${CURDIR}/keywords/features/checkout_overview_feature.resource
Resource    ${CURDIR}/keywords/features/finish_feature.resource

# Common keywords
Resource    ${CURDIR}/keywords/common/common.resource

# Translation
Variables    ${CURDIR}/keywords/translation/en/en.yaml

# Test data
Variables    ${CURDIR}/../test_data/test_data.yaml

# Configs
Variables    ${CURDIR}/configs/configs.yaml
