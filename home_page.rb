require_relative './navbar.rb'
require_relative './film_page.rb'
class HomePage
  attr_accessor :driver, :navbar

  def initialize(driver)
    @driver = driver
    @navbar = NavBar.new(driver)
  end

  def find_film(name)
    @navbar.get_film(name).click
    sleep 2
    film_page = FilmPage.new(@driver)
    film_page
  end

  def help
    @navbar.get_help.click
    sleep 2
  end

  def home
    @navbar.get_home.click
    sleep 2
  end
end
