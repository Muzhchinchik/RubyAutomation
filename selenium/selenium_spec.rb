require 'selenium-webdriver'
#Selenium::WebDriver::Chrome.driver_path = '/Users/dkovryha/Desktop/chromedriver'

#driver = Selenium::WebDriver.for :chrome
service = Selenium::WebDriver::Service.chrome(path: '/Users/dkovryha/Desktop/chromedriver')
driver = Selenium::WebDriver.for :chrome, service: service
driver.get "http://google.com"
#/Users/dkovryha/Desktop/chromedriver