require 'net/http'
#require 'open-url'
require 'json'

<<<<<<< HEAD

class GetRequester
  attr_reader :url 
  def initialize(url)
    @url = url
  #url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
end 
=======
class GetRequester
  
  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
>>>>>>> 9502157b8dd604c7b102edc8cc7c07458d865027
  
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end 
  
  def parse_json
    requester = JSON.parse(self.get_response_body)
    requester.collect do |requester|
<<<<<<< HEAD
    requester
      
=======
      requester["people"]
>>>>>>> 9502157b8dd604c7b102edc8cc7c07458d865027
  end 
end 
end 

<<<<<<< HEAD

=======
#Requester = GetRequester.new.get_requester
#puts requester 
>>>>>>> 9502157b8dd604c7b102edc8cc7c07458d865027

