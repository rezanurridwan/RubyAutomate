require_relative 'page/base_page'

class LoginPage < SitePrism::Page
  include BasePage
  set_url get_data_test_single_env("BASE_URL")
  # locator Element Form Login
  element :loc_username, :xpath, "//input[@id='user-name']"
  element :loc_password, :xpath, "//input[@id='password']"
  element :btn_login, :xpath, "//input[@id='login-button']"

  # locator assertion Login Page
  element :loc_title, :xpath, "//*[@data-test='title']"

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



end

