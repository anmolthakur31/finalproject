class ServicesController < ApplicationController
	def new
		@service = Service.new
		authorize @service
	end
	def show
		@service = Service.find(params[:id])
		authorize @service
	end
	def edit
		@service = Service.find(params[:id])
		authorize @service
	end

	def create
		@service = Service.new(service_params)
		@service.save
	    redirect_to service_path
	    flash.notice = 'Service was successfully created'
	end

	def update
		@service = Service.find(params[:id])
		@service.update(service_params)
		redirect_to service_path
		flash.notice = 'Service was successfully created'
	end

	private

	def service_params
		params.require(:service).permit(:name,:description ,:photo)
	end
end


