require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require "rake"

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :firefox,
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.firefox(marionette: true)
  )
end
Capybara.page.driver.browser.manage.window.maximize
