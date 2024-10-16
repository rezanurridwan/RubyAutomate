require 'capybara/cucumber'
require 'capybara/rspec'
require 'cucumber'
require 'dotenv'
require 'site_prism'
require 'selenium-webdriver'
require 'yaml'

Dotenv.load
# Menentukan path lokal untuk Chrome
Capybara.register_driver :manual do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  # Tambahkan opsi yang diinginkan di sini, misalnya:
  # options.add_argument('--headless') jika ingin menjalankan di background

  # Menggunakan ChromeDriver secara manual
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options,
    service: Selenium::WebDriver::Service.chrome(path: 'C:/Users/User/Downloads/program/chromedriver-win64/chromedriver.exe'),
    timeout: 30
  )
end

Capybara.configure do |config|
  config.default_driver = :manual # Ganti driver default menjadi manual
  config.default_max_wait_time = 30
end

# single data test
def get_data_test_single_env(key)
  file = YAML.load_file("features/support/data/data-test.yml")
  return file[key]
end
# single data test
def get_data_test_valid_login(key)
  file = YAML.load_file("features/support/data/data-test-dev.yml")
  return file[key]
end
# multi envy
def get_data_test(key)
  file = YAML.load_file("features/support/data/data-test-#{ ENV['TARGET'].downcase }.yml")
  return file[key]
end