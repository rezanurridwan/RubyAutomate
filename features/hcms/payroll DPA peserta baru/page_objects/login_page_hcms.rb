require_relative 'page/base_page'

class LoginPage < SitePrism::Page
  include BasePage
  set_url get_data_test_single_env("HCMS_URL")
  # locator Element Form Login
  element :loc_username, :xpath, "//*[@name='j_username']"
  element :loc_password, :xpath, "//*[@name='j_password']"
  element :btn_login, :xpath, "//*[@id='FnSubmit']']"



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
  def get_hcms_url_dashboard(hcms_url_dashboard)
    loc_hcms_url_dashboard.text
  end
  def click_btn_logout
    btn_logout.click
  end

end

