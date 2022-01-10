require 'elevatormedia'
require 'spec_helper'

describe Elevatormedia::Streamer do 

    context 'is the chuck norris joke converted to a string before return?' do
        it 'yes' do
            expect(Elevatormedia::Streamer.getContent).to be_a(String)
        end
    end

    context 'does the api response' do

        it 'contain a categories array?' do
            if ((expect($joke.include?("categories")).to be_truthy) == true);
                expect($joke["categories"]).to be_a(Array)
            end
        end

        it 'contain the right icon_url?' do
            if ((expect($joke.include?("icon_url")).to be_truthy) == true);
                expect($joke["icon_url"]).to eq("https://assets.chucknorris.host/img/avatar/chuck-norris.png")
            end
        end

        it 'contain the url to this specific joke?' do
            expect($joke.include?("url")).to be_truthy
        end

        it 'contain a value? (the joke)' do
            expect($joke.include?("value")).to be_truthy
        end
    end

end

#snippet for testing values: eq(65) #




