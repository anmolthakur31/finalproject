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
		
		params[:vehicle][:vehicle_id]  = @vehicle.id
		params[:vehicle][:service_id].each do |ab|
		a = VehicleService.new
		a.vehicle_id = @vehicle.id
		a.service_id = ab
		a.save!
		end
		
		@memeber=current_user
	    redirect_to vehicle_path(@vehicle)
	    flash.notice = 'Vehicle was successfully created'
	end

	def update
		@vehicle = Vehicle.find(params[:id])
		@vehicle.update(vehicle_params)
		@memeber=current_user
	    redirect_to admin_path(@member)
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
		params.require(:vehicle).permit(:startyear, :brand_id, :model_id, :variant_id ,vehicle_services_attributes: [:id, :basic_cost])
	end

	def service_params
		params.require(:vehicle).permit(:vehicle_id, :service_id =>[])
	end
end
