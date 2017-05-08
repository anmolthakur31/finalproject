class BookingsController < ApplicationController
		def index
		@bookings=Booking.all
	end
	def new
		@booking = Booking.new
		@user=Uservehicle.all.where('id IN (SELECT user_id FROM uservehicles)')
	end
	def show
		@booking = Booking.find(params[:id])
	end
	def edit
		@booking = Booking.find(params[:id])
	end

	def create
		@booking = Booking.new(booking_params)
		@booking.save
	    redirect_to services_path
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
		params.require(:booking).permit(:timeslot_id, :dateslot, :total_cost, :uservehicle_id)
	end
end
