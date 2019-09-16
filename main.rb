require 'rest-client'
search = gets.chomp

Url = RestClient.get('https://www.bing.com/search',params:{q:'#{search}'})
puts Url.code
puts Url.body