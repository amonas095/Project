require_relative "texting.rb"

task :joke do
  scraped_info = Scraper.new

  text = Texting.new
  text.send('+15164276599', scraped_info.scrape_joke)
end

task :weather do
  scraped_info = Scraper.new

  text = Texting.new
  text.send('+15164276599', scraped_info.get_weather)
end

task :wotd do
  scraped_info = Scraper.new

  text = Texting.new
  text.send('+15164276599', scraped_info.word_of_day)
end