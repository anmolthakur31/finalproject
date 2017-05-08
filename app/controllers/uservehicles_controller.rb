class UservehiclesController < ApplicationController
	def new
		@uservehicle = Uservehicle.new
		@vehiclec= Vehicle.where('id IN (SELECT brand_id FROM vehicles)')
	end

	def edit
		@uservehicle = Uservehicle.find(params[:id])
	end

	def create
		@uservehicle = Uservehicle.new(uservehicle_params)
		@uservehicle.user_id=current_user.id
		@uservehicle.save
	    redirect_to services_path
	    flash.notice = 'Vehicle was successfully created'
	end

	def update
		@uservehicle = Uservehicle.find(params[:id])
		@uservehicle.update(uservehicle_params)
		redirect_to services_path
		flash.notice = 'Vehicle was successfully created'
	end

	private

	def uservehicle_params
		params.require(:uservehicle).permit(:manf_year,:reg_no ,:user_id, :vehicle_id)
	end
end
