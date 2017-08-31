require 'nokogiri'
require 'open-uri'

books = Nokogiri::HTML(open('http://www.books.com.tw/activity/gold66_day/?loc=activity_BK_001'))

puts "### Search for nodes by css with Bookstore"

books.css('div h1 a').each do |a|
  puts a.content
end