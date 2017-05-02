class VehiclesController < ApplicationController
	def new
		@vehicle = Vehicle.new
		@brand= Brand.new
		@model=Model.new
		@variant=Variant.new
	end

	def edit
		@vehicle = Vehicle.find(params[:id])
	end

	def create
		@vehicle = Vehicle.new(vehicle_params)
		@vehicle.save
	    redirect_to services_path
	    flash.notice = 'Vehicle was successfully created'
	end

	def update
		@vehicle = Vehicle.find(params[:id])
		@vehicle.update(vehicle_params)
		redirect_to services_path
		flash.notice = 'Vehicle was successfully created'
	end

	private

	def vehicle_params
		params.require(:vehicle).permit(:startyear, :brand_id, :model_id, :variant_id)
	end
end
