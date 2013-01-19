class NotificationsMailer < ActionMailer::Base
  default from: "charlyabety@gmail.com"

  def new_message(message)
  	@message = message
  	mail( to:@message.email, subject: "[localhost:3000] #{message.subject}")
  end
  
end
