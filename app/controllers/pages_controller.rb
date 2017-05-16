class PagesController < ApplicationController
  def home
  end

  def sms
    require 'twilio-ruby'

    account_sid = "ACc3eeaf8b2f9eb0b3f42c74d5177360c3" # Your Account SID from www.twilio.com/console
    auth_token = "e2ff0e69df687df72a3bce54b4b4e55f"   # Your Auth Token from www.twilio.com/console
    
    body = params['body']
    to = params['to']
    @client = Twilio::REST::Client.new account_sid, auth_token
    
    @client.account.sms.messages.create(
    :from => "+19045744654",
    :to => to,
    :body => body
  )
  end
end
