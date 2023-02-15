require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require 'rspec'
def options
    Selenium::WebDriver::Chrome::Options.new(args: %w[widow-size=1800,1000])
end

Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app|
    browser = (ENV['BROWSER'] || 'chrome').to_sym
    Capybara::Selenium::Driver.new(app, browser: browser)
end