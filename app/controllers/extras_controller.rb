class ExtrasController < ApplicationController
	before_action :check, only: :home

	def faq
	end
	def tnc
	end
	def privacy_policy
	end
	def about_us
	end
	def our_team
	end
	def home
	end

	private
		def check
	      if user_signed_in?
	      	if current_user.userrole_id==2
	      		redirect_to admin_path
	        else
	        	redirect_to member_path(current_user)
	      	end
	      end
	    end
end
