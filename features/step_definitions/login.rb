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

# @tc01
When('I enter the {string} and {string}') do|username, password|
  username = "standard_user"
  password = "secret_sauce"
  find(:xpath, "//input[@id='user-name']").set(username)
  find(:xpath, "//input[@id='password']").set(password)
end
# @tc02
When('I enter the null {string} and valid {string}') do|username, password|
  username = ""
  password = "secret_sauce"
  find(:xpath, "//input[@id='user-name']").set(username)
  find(:xpath, "//input[@id='password']").set(password)
end
Then('I am see the error validation {string}') do|username_error|
  loc_val_error_username = "//h3[@data-test='error']"
  val_error_username= find(:xpath,loc_val_error_username).text
  expect(val_error_username).to have_text(username_error)
end

