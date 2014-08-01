require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require './lib/texting.rb'
require './lib/joke_scraping.rb'


get '/' do
  scraper = Scraper.new
  @joke = scraper.scrape_joke
  @weather = scraper.get_weather
  @word = scraper.word_of_day
  erb :index # This tells your program to use the html associated with the index.erb file in your browser.
end

get'/weather' do
  scraper = Scraper.new
  @weather = scraper.get_weather
  erb :weather
end



