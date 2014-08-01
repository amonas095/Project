require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'
require_relative 'joke_scraping.rb'

class Texting
  def send(number, message)
    account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
    auth_token = '2008ea097713e401a16c54029058da82'

# set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create(
    :from => '+18152642023',
    :to => number,
    :body => message
    )
  end

end

# scraped_info = Scraper.new

# text = Texting.new
# text.send(scraped_info.scrape_joke)
# text.send(scraped_info.get_weather)

# arie = Texting.new
# arie.send('+15165190814')
# arie.messaging('+')
# arie.messaging('+')
# arie.messaging('+')
# arie.messaging('+')
# arie.messaging('+')
# arie.messaging('+')