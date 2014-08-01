require 'open-uri'
require 'nokogiri'

class Scraper

  def scrape_joke
    joke = open('http://jokes.cc.com/')
    nokogiri_joke = Nokogiri::HTML(joke)
    joke_of_day = nokogiri_joke.css(".middle #fulltext").children.text.strip
    "The joke of the day is #{joke_of_day}"
  end


  def get_weather
    weather = 'http://www.weather.com/weather/today/New+York+NY+USNY0996:1:US'
    nokogiri_weather = Nokogiri::HTML(open(weather))
    temps = nokogiri_weather.css("div.wx-temperature")
    now_temp = temps[0].text.strip
    today_temp = temps[1].text.strip
    tonight_temp = temps[2].text.strip
    "Right now it is #{now_temp}" + "\nToday it will be #{today_temp}" + "\nTonight it will be #{tonight_temp}"
  end

  def word_of_day
    word = open('http://dictionary.reference.com/')
    nokogiri_word = Nokogiri::HTML(word)
    word_of_day = nokogiri_word.css("a.wotd").text.strip
    wotd_defin = nokogiri_word.css("a.wotd_txt").text.strip
    "The word of the day is #{word_of_day}. The definition of the word is #{wotd_defin}"
  end
end

scraped_data = Scraper.new
@joke = scraped_data.scrape_joke


# text = Texting.new
# text.send(weather)
# text.send(scrape_joke)