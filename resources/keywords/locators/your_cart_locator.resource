*** Variables ***
${your_cart.lbl_header}               xpath=//div[text()="${your_cart_page.lbl_header}"]
${your_cart.lbl_item_name}            xpath=//div[text()="***item_name***"]
${your_cart.lbl_item_info}            xpath=//div[text()="${your_cart_page.lbl_quantity}"]//following::div[text()="${your_cart_page.lbl_description}"]//following::div[text()="***quantity***"]//following::div[text()="***item_name***"]//following::div[text()="***description***"]//following::div[text()="***price***"]
${your_cart.btn_remove}               xpath=//button[text()="${your_cart_page.btn_remove}"]
${your_cart.btn_continue_shopping}    xpath=//a[text()="${your_cart_page.btn_continue_shopping}"]
${your_cart.btn_checkout}             xpath=//a[text()="${your_cart_page.btn_checkout}"]
