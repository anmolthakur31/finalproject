class ServicesController < ApplicationController
	def index
    @services = Service.all
    end
    
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
	    redirect_to service_path(@service)
	    flash.notice = 'Service was successfully created'
	end

	def update
		@service = Service.find(params[:id])
		@service.update(service_params)
		redirect_to service_path(@service)
		flash.notice = 'Service was successfully created'
	end
	def destroy
		@service = Service.find(params[:id])
		@service.destroy
		respond_to do |format|
			format.html { redirect_to root_url, notice: 'Service was successfully deleted.' }
		end
	end
	private

	def service_params
		params.require(:service).permit(:name,:description ,:photo)
	end
end


