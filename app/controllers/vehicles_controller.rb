class VehiclesController < ApplicationController
	def new
		@vehicle = Vehicle.new
		@vehicle.vehicle_services.build
		@brand= Brand.new
		@brands= Brand.all
		@service= Service.all
		@model=Model.new
		@models=Brand.order(:id)
		@variant=Variant.new
		@variants=Variant.all
		authorize @vehicle

	end
	def show
		@vehicle = Vehicle.find(params[:id])
	end
	def edit
		@vehicle = Vehicle.find(params[:id])
		@brand= Brand.new
		@brands= Brand.all
		@model=Model.new
		@models=Brand.order(:id)
		@variant=Variant.new
		@variants=Variant.all
		authorize @vehicle
	end

	def create
		@vehicle = Vehicle.new(vehicle_params)
		@vehicle.save
		@memeber=current_user
	    redirect_to vehicle_path(@vehicle)
	    flash.notice = 'Vehicle was successfully created'
	end

	def update
		@vehicle = Vehicle.find(params[:id])
		@vehicle.update(vehicle_params)
		@memeber=current_user
	    redirect_to vehicle_path(@vehicle)
		flash.notice = 'Vehicle was successfully created'
	end
	def destroy
		@vehicle = Vehicle.find(params[:id])
		@vehicle.destroy
		respond_to do |format|
			format.html { redirect_to root_url, notice: 'Vehicle was successfully deleted.' }
		end
	end
	private

	def vehicle_params
		params.require(:vehicle).permit(:startyear, :brand_id, :model_id, :variant_id ,:vehicle_services_attributes => [:id,:service_id,:vehicle_id,:basic_cost,:_destroy])
	end

end

		
