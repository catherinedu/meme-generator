require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

f = File.open("url.txt", "r")

url = ""

f.each_line do |line|
	url = line
end

f2 = ""
File.open('event.txt') do
	|f3| f2 = f3.readline
end

# puts f2
timeStamps = f2.scan(/\(\d+-\d+-\d+\w+:\d+:\d+-\d+:\d+\)/)
textArray = f2.split(/\(\d+-\d+-\d+\w+:\d+:\d+-\d+:\d+\)/)

textArray.each do |event|
	event.slice!(0..1)
end

#puts textArray
#puts timeStamps

#eventSummary = ""

#f2.each_line do |line2|
#	eventSummary= line2
#end


# put your own credentials here
account_sid = 'AC5c04ac934f3bd1bb0b293d27e07178f3'
auth_token = 'bd48fa953324ad696f801ab82fc96256'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

@client.account.messages.create({
  :from => '+14103057333',
  :to => '+19299204931', 
  :body => 'Here is a meme for your: ' + textArray[0] + timeStamps[0],
  :media_url => url
})

#13475589553