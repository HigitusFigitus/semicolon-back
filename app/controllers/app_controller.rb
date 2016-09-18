require 'sinatra'

# get '/' do
# 	p 'Hello world'
# 	people = {
# 	}
# 
# 	name = people[params[:From]] || 'Default'
# 	Twilio::TwiML::Response.new do |r|
# 		r.Say "Hello #{name}"
# 	end
# end

post '/message' do
	message = "I have a friend on the phone who's thinking of killing themselves. Please call me at #{params[:From]} and I'll merge the call."
	p 'message status'
	if send_message('cats', message) == 0
		send_message(params[:From], "Your message has been received. The National Suicide Prevention Lifeline has been notified and will call you momentarily. Breath, remain calm, and continue talking with your friend. Merge the call when it comes. Thank you for doing what you're doing.")
	end
end


