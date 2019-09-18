require 'rest-client'
def http(url)
  good_url = url.split(' ')
  good_url.join('+')
  search_url = RestClient.get('https://www.bing.com/search',params:{q:'#{good_url}'})
  puts search_url.code
 
end
search = gets.chomp
http(search)