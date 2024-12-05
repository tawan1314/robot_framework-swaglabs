*** Variables ***
${login.lbl_header}                  xpath=//div[@class="${login_page.lbl_logo}"]//preceding::input[@placeholder="${login_page.lbl_username}"]
${login.input_username}              xpath=//input[@placeholder="${login_page.lbl_username}"]
${login.input_password}              xpath=//input[@placeholder="${login_page.lbl_password}"]
${login.btn_login}                   xpath=//input[@value="${login_page.btn_login}"]
${login.lbl_login_unsuccessfully}    xpath=//h3[contains(., "***string***")]
${login.lbl_login_lock_out_user}     xpath=//h3[contains(., "${login_page.err_locked_out_user}")]
${login.btn_close_err}               xpath=//button[@class="${login_page.btn_close_err}"]
