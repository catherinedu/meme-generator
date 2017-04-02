require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

# put your own credentials here
account_sid = 'AC21740e2712d1deee0685aeba7f1d5f4c'
auth_token = '9dc74d0ef84bfd57360f6eb6f6093e4d'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

@client.account.messages.create({
  :from => '+15017250604',
  :to => '+19299204931', 
  :body => 'This is the ship that made the Kessel Run in fourteen parsecs?',
  :media_url => 'https://c1.staticflickr.com/3/2899/14341091933_1e92e62d12_b.jpg',
})