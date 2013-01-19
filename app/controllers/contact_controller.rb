class ContactController < ApplicationController
	def new
		@message = Message.new
	end

	def home
	end

	def help
	end

	def create
		@message = Message.new(params[:message])

		if @message.valid?
			NotificationsMailer.new_message(@message).deliver
			redirect_to(home_path, notice: "Message was successfully sent.")
		else
			flash.now.alert = "Please fill all fields."
			render :new
		end

	end
end
