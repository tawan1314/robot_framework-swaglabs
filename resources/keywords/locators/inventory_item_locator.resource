*** Variables ***
${inventory_item.lbl_header}         xpath=//div[text()="${inventory_page.lbl_header}"]
${inventory_item.item_info}          xpath=//div[text()="***item_name***"]//following::div[text()="***description***"]//following::div[text()="${items_list.currency}" and text()="***price***"]
${inventory_item.btn_add_to_cart}    xpath=//button[text()="${inventory_page.btn_add_to_cart}"]
${inventory_item.btn_back}           xpath=//button[text()="${inventory_page.btn_back}"]
${inventory_item.btn_cart}           xpath=//div[@id="${products_page.btn_cart}"]
${inventory_item.btn_remove}         xpath=//button[text()="${inventory_page.btn_remove}"]
