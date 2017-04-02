require 'unirest'

#file = File.readlines('file.txt').each do |line|

f = File.open("file.txt", "r")

fileText = ""

f.each_line do |line|
	fileText += line
end

textArray = fileText.split(/\((\d+)-(\d+)-(\d+\w+):(\d+):(\d+)\+(\d+):(\d+)\)/);

puts textArray

textArray.each do |event|

	response = Unirest.post "https://gateway.watsonplatform.net/tone-analyzer/api/v3/tone?version=2016-05-19", 
		   auth:{:user =>"982eb111-ac1b-460e-bd01-06e326badedd", :password =>"XiHyf6ecArzu"},
                        headers:{ "Content-Type" => "text/plain" }, 
                      parameters:{ :text => event, 
                    	:tones => "emotion", :sentences => "true"}.to_json


	#puts response.body
	
	arr = response.body

	emotionArr = arr['document_tone']['tone_categories'][0]['tones']

	scoreMax = 0
	indexMax = 0

   #find maxScore and the index associated
 	for i in 0..4
			score = emotionArr[i]['score']
			if score > scoreMax 
 				scoreMax = score
				indexMax = i 
			end
 	end

# 	#access emotion 
	emotion = emotionArr[indexMax]['tone_name']

 	puts "#{emotion}"

	#puts  "#{emotionArr}"

end
