# require 'nokogiri'
# require 'open-uri'

# html = open("https://ezprice.com.tw/").read
# doc = Nokogiri::HTML(html)
# ans = []

# doc.css('p[@class=Midget_pic] a img').each do |img|
#   ans << img.attr('src')
# end

# temp_ans = ans.map do |url|
#   url if url.match(/^http/)
# end

# temp_ans.each do |full_url|
#   `wget #{full_url}`
# end

require 'nokogiri'
require 'open-uri'

html = open("https://ezprice.com.tw/").read
doc = Nokogiri::HTML(html)
ans = []

doc.css('div[@class=container] section div div a img').each do |img|
  puts ans << img['src']
end

temp_ans = ans.map do |url|
  url if url.match(/^http/)
end

temp_ans.each do |full_url|
  `wget #{full_url}`
end