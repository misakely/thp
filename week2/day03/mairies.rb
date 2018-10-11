require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_the_email_of_a_townhal_from_its_webpage(townhall_url)
    # take an url (string), and return an email as a string
    page = Nokogiri::HTML(open(townhall_url))
    page.css("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text
end

def get_all_the_urls_of_val_doise_townhalls
  source = "http://annuaire-des-mairies.com/val-d-oise.html"
  urls = []
  page = Nokogiri::HTML(open(source))
  page.xpath('//a[@class = "lientxt"]').each do |node|
     urls << "http://annuaire-des-mairies.com#{node.values[1][1..-1]}"
  end
  urls
end

def perform
  emails = []
  names = []
  get_all_the_urls_of_val_doise_townhalls.each do |url|
    emails << get_the_email_of_a_townhal_from_its_webpage(url)
    names << name = url.split('/')[4][0..-6]
    puts "Datas for #{name} : OK"
  end
  big_data = Hash[names.zip(emails)]
  puts "Hash is ready, press ENTER"
  gets
  puts big_data
end

perform
