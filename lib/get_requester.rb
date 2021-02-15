require 'net/http'
require 'open-uri'
require 'json'


class GetRequester

    def initialize(url)
        #is a class that can be initiated by passing in a URL
        @url = url  
    end

    def get_response_body
        # sends a GET request to the URL provided on initialization, returning the body of the request
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        # converts JSON returned from 'get_response_body' into Ruby data structures
        results = JSON.parse(self.get_response_body)
        results 
    end 

end