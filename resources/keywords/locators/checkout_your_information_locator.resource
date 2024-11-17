*** Variables ***
${your_info.lbl_header}               xpath=//div[text()="${your_info_page.lbl_header}"]
${your_info.input_firstname}          xpath=//input[@placeholder="${your_info_page.lbl_firstname}"]
${your_info.input_lastname}           xpath=//input[@placeholder="${your_info_page.lbl_lastname}"]
${your_info.input_zip_postal_code}    xpath=//input[@placeholder="${your_info_page.lbl_zip_postal_code}"]
${your_info.btn_continue}             xpath=//input[@value="${your_info_page.btn_continue}"]
${your_info.btn_cancel}               xpath=//a[text()="${your_info_page.btn_cancel}"]
${your_info.err_required}             xpath=//h3[text()="${your_info_page.lbl_err}" and text()="***err_required***"]
${your_info.btn_close_err}            xpath=//button[@class="${your_info_page.btn_close_err}"]
