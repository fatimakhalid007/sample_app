require 'capybara'
Capybara.configure do |config|
  config.run_server = false
  # config.default_driver = :selenium
  config.app_host = 'http://localhost:3000' # change url
end
