require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara'
require 'pry'
require 'rspec'
require 'capybara-screenshot/cucumber'
def options
    Selenium::WebDriver::Chrome::Options.new(args: %w[widow-size=1800,1000])
end

Capybara.register_driver :site_prism do |app|
    browser = ENV.fetch('browser', 'chrome').to_sym
    Capybara::Selenium::Driver.new(app, browser: browser, options: options)
end
Capybara.save_path = "./features/failure_screenshots"
# Then tell Capybara to use the Driver you've just defined as its default driver
Capybara.configure do |config|
    config.default_driver = :site_prism
end

After do |scenario|
    if scenario.failed?
        screenshot_name = "screenshot_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}"
        Capybara::Screenshot::Saver.save_with_name(screenshot_name, options={:full => true})
    end
end


