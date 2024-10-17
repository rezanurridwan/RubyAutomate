require_relative 'page/base_page'

class LoginPage < SitePrism::Page
  include BasePage
  set_url get_data_test_single_env("BASE_URL")
  # locator Element Form Login
  element :loc_username, :xpath, "//input[@id='user-name']"
  element :loc_password, :xpath, "//input[@id='password']"
  element :btn_login, :xpath, "//input[@id='login-button']"

  # Locator Element For Logout
  element :btn_burger_menu_inventory, :xpath, "//*[@id='react-burger-menu-btn']"
  element :btn_logout, :xpath, "//*[@id='logout_sidebar_link']"

  # locator assertion Login Page
  element :loc_title, :xpath, "//*[@data-test='title']"
  element :loc_error_message, :xpath, "//*[@data-test='error']"

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
  def get_error_locked
    loc_error_message
  end
  def btn_burger_menu_inventory_page
    btn_burger_menu_inventory.click
  end
  def click_btn_logout
    btn_logout.click
  end

end

