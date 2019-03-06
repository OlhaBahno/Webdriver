class NavBar
  attr_accessor :driver

  def initialize(driver)
    @driver = driver
  end

  def get_film(name)
    @driver.find_element(:id, 'navbar-query').send_keys name
    sleep 2
    @driver.find_element(:xpath, '//*[@id="navbar-suggestionsearch"]/div[1]/a/div[2]/span[2]')
  end

  def get_home
    @driver.find_element(:id, 'home_img')
  end

  def get_help
    @driver.find_element(:link, 'Help')
  end
end