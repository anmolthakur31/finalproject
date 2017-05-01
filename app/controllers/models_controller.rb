class ModelsController < ApplicationController
	def new
		@model = Model.new
	end

	def edit
		@model = Model.find(params[:id])
	end

	def create
		@model = Model.new(model_params)
		@model.save
	    redirect_to services_path
	    flash.notice = 'Model was successfully created'
	end

	def update
		@model = Model.find(params[:id])
		@model.update(model_params)
		redirect_to services_path
		flash.notice = 'Model was successfully created'
	end

	private

	def model_params
		params.require(:model).permit(:name, :brand_id)
	end

end
