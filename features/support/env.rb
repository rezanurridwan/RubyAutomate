require 'capybara/cucumber'
require 'capybara/rspec'
require 'rspec'
require 'cucumber'
require 'dotenv'
require 'site_prism'
require 'selenium-webdriver'
require 'yaml'
require 'report_builder'

Dotenv.load
# Menentukan path lokal untuk Chrome
# Capybara.register_driver :manual do |app|
#   options = Selenium::WebDriver::Chrome::Options.new
#   # Tambahkan opsi yang diinginkan di sini, misalnya:
#   if ENV['HEADLESS'].downcase == 'yes'
#     options.add_argument('--headless')
#   end
#   if ENV['INCOGNITO'].downcase == 'yes'
#     options.add_argument('--incognito')
#   end

#   # Menggunakan ChromeDriver secara manual
#   Capybara::Selenium::Driver.new(
#     app,
#     browser: :chrome,
#     options: options,
#     service: Selenium::WebDriver::Service.chrome(path: 'C:/Users/User/Downloads/program/chromedriver-win64/chromedriver.exe'),
#     timeout: 30
#   )
# end

# Capybara.configure do |config|
#   config.default_driver = :manual # Ganti driver default menjadi manual
#   config.default_max_wait_time = 30
# end

# Mendaftarkan driver untuk Firefox
Capybara.register_driver :manual do |app|
  options = Selenium::WebDriver::Firefox::Options.new
  # Jika ingin menjalankan di background, bisa diaktifkan:
  options.add_argument('--headless')
  if ENV['HEADLESS'].downcase == 'yes'
    options.add_argument('--headless')
  end
  if ENV['PRIVATE'].downcase == 'yes'
    options.add_argument('--private')
  end
  Capybara::Selenium::Driver.new(
    app,
    browser: :firefox,
    options: options,
    service: Selenium::WebDriver::Service.chrome(path: 'C:\Users\User\Downloads\program\geckodriver.exe'),

    timeout: 30
  )
end

Capybara.configure do |config|
  config.default_driver = :manual # Menetapkan driver default menjadi Firefox
  config.default_max_wait_time = 30 # Waktu tunggu maksimal
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

# # generate reports builder
def generate_report
  ReportBuilder.configure do |config|
    time = Time.now.strftime("%Y-%m-%d %H%M%S%L")
    config.input_path = 'features/support/reports/result-cucumber.json'
    config.report_path = 'features/support/reports/test_result_' + time
    config.report_types = [:html]
    config.report_title = "Test Result"
    config.includes_image = true
  end
  ReportBuilder.build_report
end

def take_screenshot
  # Define the directory where screenshots will be saved
  screenshot_dir = 'features/support/reports/screenshot/e2e_steps'

  # Ensure the directory exists
  FileUtils.mkdir_p(screenshot_dir)

  # Generate a timestamp for the screenshot filename
  time = Time.now.strftime("%Y-%m-%d %H%M%S%L")

  # Construct the full file path for the screenshot
  screenshot_path = "#{screenshot_dir}/#{time}.png"

  # Save the screenshot using Capybara
  Capybara.current_session.driver.save_screenshot(screenshot_path)

  # Read the saved screenshot
  image = open(screenshot_path, 'rb', &:read)

  # Attach the screenshot to the report (for example, if using Cucumber)
  attach(image, 'image/png', time)
end