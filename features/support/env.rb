require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara'
require 'pry'
require 'rspec'
def options
    Selenium::WebDriver::Chrome::Options.new(args: %w[widow-size=1800,1000])
end

Capybara.register_driver :site_prism do |app|
    browser = ENV.fetch('browser', 'chrome').to_sym
    Capybara::Selenium::Driver.new(app, browser: browser, options: options)
end

# Then tell Capybara to use the Driver you've just defined as its default driver
Capybara.configure do |config|
    config.default_driver = :site_prism
end