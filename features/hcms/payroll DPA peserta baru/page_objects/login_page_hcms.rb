require_relative 'page/base_page'

class LoginPage < SitePrism::Page
  include BasePage
  set_url get_data_test_single_env("HCMS_URL")
  # locator Element Form Login
  element :loc_username, :xpath, "//*[@name='j_username']"
  element :loc_password, :xpath, "//*[@name='j_password']"
  element :btn_login, :xpath, "//*[@id='FnSubmit']"
  element :title_dashboard_payroll_self_service, :xpath, "//td[text()='HC Payroll Self Service Menus']"




# function form login
  def input_username(username)
    loc_username.set(username)
  end
  def input_password(password)
    loc_password.set(password)
  end
  def click_btn_login
    btn_login.click
  end
  def get_title_login
    loc_title.text
  end
  def click_btn_logout
    btn_logout.click
  end
  def click_btn_close_popup
    el = find(:xpath, "(//tr//td[@class='z-button-cm'])[6]", visible: :all).click
  end
  def click_btn_close_popup2 (wait = 10)
    el = find(:xpath, "(//td[@class='z-button-cm'])[5]", visible: :all).click
  end
  def btn_menu_HC_payroll
  el = find(:xpath, "//div[text()='HC Payroll Self Service']", visible: :all)
  end
  def get_title_dashboard_payroll_self_service
    title_dashboard_payroll_self_service.text
  end

end

