require 'rubygems'
require 'nokogiri'
require 'open-uri'

PAGE_URL = 'http://en.wikipedia.org/'

page = Nokogiri::HTML(open(PAGE_URL))

title = page.css('title').text
links = page.css("a")
puts links.length
puts links[0].text
