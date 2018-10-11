require 'rubygems'
require 'nokogiri'
require 'open-uri'

# A bot to scan coinmarketcap
class TraderBot
  def initialize
    @page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
    @prices = prices
  end

  def prices
    names = []
    values = []
    @page.css('//a[@class = "currency-name-container link-secondary"]').each do |node|
      names << node.text
    end
    @page.css('//a[@class = "price"]').each do |node|
      values << node.text
    end
    prices = Hash[names.zip(values)]
    prices
  end
end

my_trader = TraderBot.new
puts my_trader.prices
