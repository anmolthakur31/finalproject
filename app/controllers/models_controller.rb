class ModelsController < ApplicationController
	def new
		@model = Model.new
		authorize @model
	end

	def edit
		@model = Model.find(params[:id])
		authorize @model
	end

	def create
		@model = Model.new(model_params)
		@vehicle=Vehicle.new
		@brand=Brand.new
		@variant=Variant.new
		respond_to do |format|
      if @model.save
        format.html { redirect_to root_url, notice: 'Model was successfully created.' }
        format.json { render action: 'show', status: :created, location: @model }
        format.js
      else
        format.html { render action: 'new' }
        format.json { render json: @model.errors, status: :unprocessable_entity }
        format.js
      end
    end
		# @model.save
	 #    redirect_to services_path
	 #    flash.notice = 'Model was successfully created'
	end

	def update
		@model = Model.find(params[:id])
		@model.update(model_params)
		redirect_to services_path
		flash.notice = 'Model was successfully created'
	end
	def destroy
		@model = Model.find(params[:id])
		@model.destroy
		respond_to do |format|
			format.html { redirect_to root_url, notice: 'Model was successfully deleted.' }
		end
	end
	private

	def model_params
		params.require(:model).permit(:name, :brand_id)
	end

end
