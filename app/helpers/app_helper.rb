helpers do
  def send_message(phone_number, message)
    # put your own credentials here
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new(account_sid, auth_token)

    @client.account.messages.create(
      {
        :from => ENV['TWILIO_PHONE_NUMBER'],
        :to => phone_number,
        :body => message,
      }
    )
    200
  end
end
