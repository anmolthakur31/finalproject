class MembersController < ApplicationController
	def show
		@user=User.find(params[:id])
		authorize @user
	end

	def admin
		@vehicles=Vehicle.all
		@user=User.new
		@services=Service.all
		@bookings=Booking.all
		@users=User.all
		authorize @user
		@brands=Brand.all
		@models=Model.all
		
	end

	def adminusershow
	@uservehicle=Uservehicle.all
	end

	def adminshow

	end

end
