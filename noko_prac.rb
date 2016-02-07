require 'open-uri'
require 'nokogiri'

puts "Enter a site"
url = gets.chomp
page = Nokogiri::HTML(open(url))
content = page.css('p').collect{ |node| node.text }.join(" ")
puts content