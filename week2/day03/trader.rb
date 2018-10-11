require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

PAGE_URL = "https://coinmarketcap.com/all/views/all/"

class TraderBot

  def initialize
    @page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    @names = prices
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
    pp prices
  end
end

my_trader = TraderBot.new
