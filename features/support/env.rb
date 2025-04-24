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
