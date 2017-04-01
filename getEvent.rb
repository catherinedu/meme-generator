require 'unirest'

response = Unirest.post("https://www.googleapis.com/calendar/v3/calendars/calendarId/events/eventId",
	auth:{:user => "d6f5a360-d178-4f96-bf55-02fe108323bc", :password => "RRvHxpFusV1D"},
	parameters:{ :calendarId => 'primary', :eventID => 'interview' })

puts response.body









 
