def get_left_menu_xpath(leftMenu):
    return  f'//span[contains(.,"${leftMenu}")]'

def get_to_approved_screen(leftMenu):
    return f'//li[@class="mb-2"]//div[contains(.,"${leftMenu}")]/following-sibling::ul//div[contains(.,"Approved")]'

def get_to_pending_approval_screen(leftMenu):
    return f'//li[@class="mb-2"]//div[contains(.,"${leftMenu}")]/following-sibling::ul//div[contains(.,"Pending Approval")]'