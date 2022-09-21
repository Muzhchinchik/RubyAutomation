require 'selenium-webdriver'

service = Selenium::WebDriver::Service.chrome(path: '/Users/dkovryha/Desktop/chromedriver')
driver = Selenium::WebDriver.for :chrome, service: service
driver.get "http://google.com"