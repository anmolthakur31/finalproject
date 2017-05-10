class PrelandingsController < ApplicationController
	def new
		@prelanding = Prelanding.new
		authorize @prelanding
	end
	def create
		@prelanding = Prelanding.new(prelanding_params)
		@prelanding.save
	    redirect_to services_path
	    flash.notice = 'Thank you for your email. We will get in touch with you shortly'
	end

	private

	def prelanding_params
		params.require(:prelanding).permit(:email)
	end
end
