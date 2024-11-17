*** Variables ***
${products.lbl_header}               xpath=//div[text()="${products_page.lbl_header}"]
${products.img_product}              xpath=//img[@src="***img_src***"]
${products.lbl_item_name}            xpath=//div[text()="***item_name***"]
${products.lbl_item_information}     xpath=//div[text()="***item_name***"]//following::div[text()="***description***"]//following::div[text()="${items_list.currency}" and text()="***price***"]
${products.btn_add_to_cart}          xpath=//div[text()="***item_name***"]//following::div[text()="***description***"]//following::div[text()="${items_list.currency}" and text()="***price***"]//following-sibling::button[text()="${products_page.btn_add_to_cart}"]
${products.btn_remove}               xpath=//div[text()="***item_name***"]//following::div[text()="***description***"]//following::div[text()="${items_list.currency}" and text()="***price***"]//following-sibling::button[text()="${products_page.btn_remove}"]
${products.btn_sort}                 xpath=//select[@class="${products_page.btn_sort}"]
${products.option_sort}              xpath=//select//option[text()="***sort_options***"]
