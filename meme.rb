require 'unirest'



response = Unirest.post "http://version1.api.memegenerator.net/Generators_Search", 
		   #auth:{:user =>"d6f5a360-d178-4f96-bf55-02fe108323bc", :password =>"RRvHxpFusV1D"},
                       # headers:{ "Accept" => "application/json" }, 
                        parameters:{ :q => "joy", :pageIndex => "0", :pageSize => "1" }




puts response.body