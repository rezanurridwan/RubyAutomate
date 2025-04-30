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
  
  Then('I should be redirected to the dashboard') do
    expect(URI.parse(current_url)).to have_content(get_data_test_single_env("hcms_url_dashboard"))
  end
  