class FilmPage
  attr_accessor :driver, :navbar, :user

  def initialize(driver)
    @driver = driver
    @navbar = NavBar.new(driver)
  end

  def get_users
    @driver.find_element(:xpath, "//a[@href = 'reviews?ref_=tt_ov_rt']")
  end
end