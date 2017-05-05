class TimeslotsController < ApplicationController

	def new
		@timeslot = Timeslot.new
	end
	
	def edit
		@timeslot = Timeslot.find(params[:id])
	end

	def create
		@timeslot = Timeslot.new(timeslot_params)
		@timeslot.save
	    redirect_to services_path
	    flash.notice = 'Timeslot was successfully created'
	end

	def update
		@timeslot = Timeslot.find(params[:id])
		@timeslot.update(timeslot_params)
		redirect_to services_path
		flash.notice = 'Timeslot was successfully created'
	end

	private

	def timeslot_params
		params.require(:timeslot).permit(:time)
	end
end
