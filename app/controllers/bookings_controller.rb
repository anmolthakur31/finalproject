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
		 @bookingvehicle=Vehicle.order(:id)
		
	end


	def show
		@booking = Booking.find(params[:id])
		authorize @booking
	end
	def edit
		@brands=Brand.all
		@vehicles= Brand.order(:id)
		@uservehicle = Uservehicle.new
		@booking = Booking.find(params[:id])
		authorize @booking
		@user=Uservehicle.where(user_id: current_user.id)
	end

	def create
		@member=current_user
		@booking = Booking.new(booking_params)
		@booking.user_id=current_user.id
		a =VehicleService.find(params[:vehicle][:id]).basic_cost
		b =Uservehicle.find(params[:uservehicle_id]).manf_year
		c =b-2000
		@booking.total_cost =a-c*0.02
		@booking.save  
     		redirect_to member_path(@member)
    
	    flash.notice = 'Booking was successfully created'
	end

	def update
		@member=current_user
		@booking = Booking.find(params[:id])
		@booking.user_id=current_user.id
		@booking.update(booking_params)
		redirect_to member_path(@member)
		flash.notice = 'Booking was successfully created'
	end
	def destroy
		@booking = Booking.find(params[:id])
		@booking.destroy
		respond_to do |format|
			format.html { redirect_to root_url, notice: 'Booking was successfully deleted.' }
	end
	end

	private

	def booking_params
		params.require(:booking).permit(:timeslot, :dateslot, :total_cost, :uservehicle_id,:service_id,:user_id)
	end
end