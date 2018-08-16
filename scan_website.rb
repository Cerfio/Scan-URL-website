# coding: utf-8
require 'net/http'
require 'colorize'

puts "Please enter the URL of the site to analyze.".yellow
print "URL-website: ".yellow

boolean = false
url = gets.chomp
if (url[-1,1] != "/")
  url += "/"
end

list = Net::HTTP.get(URI("https://raw.githubusercontent.com/digination/dirbuster-ng/master/wordlists/small.txt")).split("\n")

list.each do |item|
  new_url = URI(url+"#{item}")
  information_page = Net::HTTP.get_response(new_url)
  if (information_page.code != "404")
    puts new_url
    boolean = true
  end
end

if (boolean == true)
  puts "URL was found :)".green
else
  puts "not found URL :(".red
end
