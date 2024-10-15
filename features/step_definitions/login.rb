# open url
Given('I am on the login page') do
  @page.login_page.load
end
# inser username and password
When('I enter the username {string} and password {string}') do |username, password|
  username_value = get_data_test_single_env(username)
  password_value = get_data_test_single_env(password)
  @page.login_page.input_username(username_value)
  @page.login_page.input_password(password_value)
end
# btn login
When('I click button login in login page') do
  @page.login_page.click_btn_login
end
# validation_title_home
Then('I am on homepage landing page and see the title {string}') do|expected_title|
  title_homepage_value = get_data_test_single_env(expected_title)
  expect(@page.login_page.get_title_login).to have_text(title_homepage_value)
end
# validation_locked_user
Then('I am on homepage landing page and see error validation {string}') do |error_locked|
  val_locked_user = get_data_test_single_env(error_locked)
  expect(@page.login_page.get_error_locked).to have_text(val_locked_user)
end
# menggunakan data test tanpa page object
# Then('I am on homepage page and see error validation {string}') do |error_locked|
#   locked_user_value = get_data_test_single_env(error_locked)
#  step 'I am on homepage landing page and see error validation "'+locked_user_value+'"'
# end


# @tc02_login_invalid_with_username_null
When('I enter the username null {string} and password {string}') do|username, password|
  find(:xpath, "//input[@id='user-name']").set(username)
  find(:xpath, "//input[@id='password']").set(password)
end
Then('I am see the error validation {string}') do|username_error|
  loc_val_error_username = "//h3[@data-test='error']"
  val_error_username= find(:xpath,loc_val_error_username).text
  expect(val_error_username).to have_text(username_error)
end
Then('I am see the error validation {string} in login page') do|password_error|
  loc_val_error_username = "//h3[@data-test='error']"
  val_error_username= find(:xpath,loc_val_error_username).text
  expect(val_error_username).to have_text(password_error)
end



# @tc05_ketiga
When('I enter from data test for the username {string} and password {string}') do |username, password|
  username_value = get_data_test_valid_login(username)
  password_value = get_data_test_valid_login(password)
step'I enter the username "'+username_value+'" and password "'+password_value+'"'
end

