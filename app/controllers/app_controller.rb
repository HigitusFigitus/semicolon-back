require 'sinatra'

get '/' do
	'Root'
end

post '/message' do
	message = "I have a friend on the phone who's thinking of killing themselves. Please call me at #{params[:From]} and I'll merge the call."

	# if send_message is successful it returns 0
	if send_message(ENV['FAKE_SERVICE_NUMBER'], message) == 200
		send_message(params[:From], "Your message has been received. The National Suicide Prevention Lifeline has been notified and will call you momentarily. Breathe, remain calm, and continue talking with your friend. Merge the call when it comes. Thank you for doing what you're doing.")
	else
		send_message(params[:From], "Invalid message, please try sending your message again.")
	end
end
