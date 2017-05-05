class ServicesController < ApplicationController
	def index
		@services=Service.all
	end
	def new
		@service = Service.new
	end
	def show
		@service = Service.find(params[:id])
	end
	def edit
		@service = Service.find(params[:id])
	end

	def create
		@service = Service.new(service_params)
		@service.save
	    redirect_to services_path
	    flash.notice = 'Service was successfully created'
	end

	def update
		@service = Uservehicle.find(params[:id])
		@service.update(service_params)
		redirect_to services_path
		flash.notice = 'Service was successfully created'
	end

	private

	def service_params
		params.require(:service).permit(:name,:description ,:photo)
	end
end


