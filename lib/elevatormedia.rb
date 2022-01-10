module Elevatormedia
    require 'spec_helper'
    require 'httparty'
    require 'json'

    class Streamer
        def self.getContent
            $joke = HTTParty.get('https://api.chucknorris.io/jokes/random')
            if (($joke['categories'][0]) != nil);
                @response = "<div>" + $joke['icon_url'] + $joke['value'] + $joke['categories'][0] + $joke['url'] + "</div>"
            else 
                @response = "<div>" + $joke['icon_url'] + $joke['value'] + $joke['url'] + "</div>"
            end
            return @response
        end
    end
end

# command to run to check output of httparty.get:   httparty "https://api.chucknorris.io/jokes/random"