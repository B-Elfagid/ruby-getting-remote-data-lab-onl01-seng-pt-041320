require 'net/http'
#require 'open-url'
require 'json'


class GetRequester
  attr_reader :url 
  def initialize(url)
    @url = url
  #url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
end 
  
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end 
  
  def parse_json
    requester = JSON.parse(self.get_response_body)
    requester.collect do |requester|
    requester
      
  end 
end 
end 



