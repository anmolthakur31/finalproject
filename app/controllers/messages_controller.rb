class MessagesController < ApplicationController
	def new
	@message = Message.new	
	end

	def create
		@message = Message.new(message_params)
		@message.save
	    redirect_to services_path
	    flash.notice = 'Message was successfully submitted.'

	end

	private

	def message_params
		params.require(:message).permit(:name, :email, :phone, :subject, :message)
	end
end
