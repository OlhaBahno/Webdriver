require 'selenium-webdriver'

class Driver
  attr_accessor :driver
=begin
  def initialize(browser = 'Chrome')
    case browser
    when 'Chrome'
      Selenium::WebDriver::Chrome.driver_path = 'C:/WebDrivers/chromedriver.exe'
      @driver = Selenium::WebDriver.for :chrome
    when 'Firefox'
      Selenium::WebDriver::Firefox.driver_path = 'C:/WebDrivers/geckodriver.exe'
      @driver = Selenium::WebDriver.for :firefox
    else
      puts 'Error!'
    end
    @driver

  end
=end

  def initialize(driver)
    @driver = driver
    @driver.manage.window.maximize
  end

  def open_browser(site)
    @driver.get site
  end

  def close_browser
    @driver.quit
  end
end