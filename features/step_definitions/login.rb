Given('I am on the login page') do
  visit 'https://www.saucedemo.com/'
  sleep 3
end

When('I enter the {string} and {string}') do|username, password|
  username = "standard_user"
  password = "secret_sauce"
  find(:xpath, "//input[@id='user-name']").set(username)
  find(:xpath, "//input[@id='password']").set(password)
end

When('I click button login') do
  find(:xpath, "//input[@id='login-button']").click
end

Then('I am on homepage landing page and see the title {string}') do|expected_title|
  loc_title = "//span[@class='title']"
  title_product_element = find(:xpath,loc_title).text
  expect(title_product_element).to have_text(expected_title)
end
