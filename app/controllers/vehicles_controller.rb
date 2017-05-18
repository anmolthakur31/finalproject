class VehiclesController < ApplicationController
	def new
		@vehicle = Vehicle.new
		@brand= Brand.new
		@brands= Brand.all
		@model=Model.new
		@models=Brand.order(:id)
		@variant=Variant.new
		@variants=Variant.all
				    @brandf = Brand.order("created_at desc").limit(1)

		authorize @vehicle

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
	    redirect_to admin_path(@member)
	    flash.notice = 'Vehicle was successfully created'
	end

	def update
		@vehicle = Vehicle.find(params[:id])
		@vehicle.update(vehicle_params)
		@memeber=current_user
	    redirect_to admin_path(@member)
		flash.notice = 'Vehicle was successfully created'
	end

	private

	def vehicle_params
		params.require(:vehicle).permit(:startyear, :brand_id, :model_id, :variant_id)
	end
end
