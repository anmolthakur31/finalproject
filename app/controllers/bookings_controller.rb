class BookingsController < ApplicationController
	def index
		@booking = Booking.new
		@bookings=Booking.all
		authorize @booking
	end

	def new
		@booking = Booking.new
		@brands=Brand.all
		@vehicles= Brand.order(:id)
		@uservehicle = Uservehicle.new
		authorize @booking
		@user=Uservehicle.where(user_id: current_user.id)
		
	end


	def show
		@booking = Booking.find(params[:id])
		authorize @booking
	end
	def edit
		@booking = Booking.find(params[:id])
		authorize @booking
		@user=Uservehicle.where(user_id: current_user.id)
	end

	def create
		@booking = Booking.new(booking_params)
		@booking.save
		redirect_to admin_path(admin)
		if (current_user.userrole_id==1 || current_user.userrole_id==2)
     		redirect_to admin_path(resource) 
      	else     
     		redirect_to member_path(resource)
      	end
	    flash.notice = 'Booking was successfully created'
	end

	def update
		@booking = Booking.find(params[:id])
		@booking.update(booking_params)
		redirect_to services_path
		flash.notice = 'Booking was successfully created'
	end

	private

	def booking_params
		params.require(:booking).permit(:timeslot, :dateslot, :total_cost, :uservehicle_id)
	end
end