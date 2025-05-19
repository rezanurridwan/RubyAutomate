# open url
Given('I am on the login page hcms') do
    @page.login_page_hcms.load
end
# insert username and password
When('I enter username {string} and password {string}') do |username, password|
  username_value = get_data_test_single_env(username)
  password_value = get_data_test_single_env(password)
  @page.login_page_hcms.input_username(username_value)
  @page.login_page_hcms.input_password(password_value)
  end
# click button login
When('I click button login') do
  @page.login_page_hcms.click_btn_login
  sleep 5
end
Then('I should be redirected to the dashboard') do
  expect(URI.parse(current_url)).to have_content(get_data_test_single_env("hcms_url_dashboard"))
end
Then('I click button close popup') do
    @page.login_page_hcms.click_btn_close_popup
  end
Then('I click button close popup2') do
  @page.login_page_hcms.click_btn_close_popup2
    sleep 5
  expect(page).to have_no_css('.z-modal-mask', wait: 5)
  end
 
 