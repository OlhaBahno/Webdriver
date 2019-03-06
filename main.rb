require_relative './driver.rb'
require_relative './home_page.rb'
require_relative './film_page.rb'
require_relative './email.rb'

begin
  Selenium::WebDriver::Chrome.driver_path = 'C:/WebDrivers/chromedriver.exe'
  chrome = Selenium::WebDriver.for :chrome

  driver = Driver.new(chrome)
  driver.open_browser('https://www.imdb.com/')

  home_page = HomePage.new(chrome)

  users = home_page.find_film('Scarface').get_users.text
  send_info = Email.new
  send_info.send_email(users, ARGV)
end


# pgol@softserveinc.com