require 'unirest'

f = File.open("emotion.txt", "r")

emotion = ""

f.each_line do |line|
	emotion = line
end


#puts emotion

response = Unirest.post "http://version1.api.memegenerator.net/Generators_Search", 
		   #auth:{:user =>"d6f5a360-d178-4f96-bf55-02fe108323bc", :password =>"RRvHxpFusV1D"},
                       # headers:{ "Accept" => "application/json" }, 
                        parameters:{ :q => emotion, :pageIndex => "0", :pageSize => "1" }



puts response.body

arr = response.body
url = arr['result'][0]['imageUrl']

#puts url

f2 = File.open( "url.txt","w" )

	f2.write("#{url}")