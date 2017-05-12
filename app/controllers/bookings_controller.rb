class BookingsController < ApplicationController
	def index
		@booking = Booking.new
		@bookings=Booking.all
		authorize @booking
	end

	def new
		@booking = Booking.new
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
	    # redirect_to member_path(member)
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