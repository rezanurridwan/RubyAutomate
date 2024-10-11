Given('I am on the login page') do
  visit 'https://www.saucedemo.com/'
  sleep 3
end
When('I click button login') do
  find(:xpath, "//input[@id='login-button']").click
end
Then('I am on homepage landing page and see the title {string}') do|expected_title|
  loc_title = "//span[@class='title']"
  title_product_element = find(:xpath,loc_title).text
  expect(title_product_element).to have_text(expected_title)
end

# @tc01_login_valid
When('I enter the username  {string} and password {string}') do |username, password|
  find(:xpath, "//input[@id='user-name']").set(username)
  find(:xpath, "//input[@id='password']").set(password)
end
# @tc02_login_invalid_with_username_null
When('I enter the username {string} and password {string}') do|username, password|
  find(:xpath, "//input[@id='user-name']").set(username)
  find(:xpath, "//input[@id='password']").set(password)
end
Then('I am see the error validation {string}') do|username_error|
  loc_val_error_username = "//h3[@data-test='error']"
  val_error_username= find(:xpath,loc_val_error_username).text
  expect(val_error_username).to have_text(username_error)
end
# @tc03_login_invalid_with_password_null
When('I enter the username {string} and password {string}') do|username, password|
  find(:xpath, "//input[@id='user-name']").set(username)
  find(:xpath, "//input[@id='password']").set(password)
end
Then('I am see the error validation {string} in login page') do|password_error|
  loc_val_error_username = "//h3[@data-test='error']"
  val_error_username= find(:xpath,loc_val_error_username).text
  expect(val_error_username).to have_text(password_error)
end
# @tc02_locked_user
When('I enter the username locked {string} and password {string}') do |username, password|
  find(:xpath, "//input[@id='user-name']").set(username)
  find(:xpath, "//input[@id='password']").set(password)
end

Then('I am on homepage landing page and see error validation  {string}') do |error_locked|
  loc_val_error_username = "//h3[@data-test='error']"
  val_error_username= find(:xpath,loc_val_error_username).text
  expect(val_error_username).to have_text(error_locked)
end


