require 'unirest'

name = gets

response = Unirest.post "https://gateway.watsonplatform.net/tone-analyzer/api/v3/tone?version=2016-05-19", 
		   auth:{:user =>"982eb111-ac1b-460e-bd01-06e326badedd", :password =>"XiHyf6ecArzu"},
                        headers:{ "Content-Type" => "text/plain" }, 
                        parameters:{ :text => "birthday party", 
                        	:tones => "emotion", :sentences => "true"}.to_json

puts response.body

