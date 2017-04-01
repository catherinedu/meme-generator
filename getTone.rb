require 'unirest'


response = Unirest.post("https://gateway.watsonplatform.net/tone-analyzer/api/v3/tone",
	auth:{:user => "d6f5a360-d178-4f96-bf55-02fe108323bc", :password => "RRvHxpFusV1D"},
	headers:{ "Accept" => "application/json" },
	parameters:{ "body" => file.txt, "version" => "2016-05-19", "tones" => "emotion" })

puts response.body

