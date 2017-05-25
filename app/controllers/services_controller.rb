class ServicesController < ApplicationController

	def index
		@services= Service.all
	end

	def new
		@service = Service.new
		authorize @service
	end
	def show
		@service = Service.find(params[:id])
		@b=VehicleService.where(service_id: @service.id)
		authorize @service
	end
	def edit
		@service = Service.find(params[:id])
		authorize @service
	end

	def create
		@service = Service.new(service_params)
		@service.save
	    redirect_to service_path(@service)
	    flash.notice = 'Service was successfully created'
	end

	def update
		@service = Service.find(params[:id])
		@service.update(service_params)
		redirect_to service_path(@service)
		flash.notice = 'Service was successfully created'
	end

	def servicecost
		@ab = VehicleService.where(:service_id=>params[:service_id],:vehicle_id=>params[:vehicle_id]).first.basic_cost
		respond_to do |format|
			format.js
	    end
	end

	private

	def service_params
		params.require(:service).permit(:name,:description ,:photo ,:required ,:covered)
	end
end


