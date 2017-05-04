class VariantsController < ApplicationController
		def new
		@variant = Variant.new
	end

	def edit
		@variant = Variant.find(params[:id])
	end

	def create
		@variant = Variant.new(variant_params)
		@vehicle=Vehicle.new
		@brand=Brand.new
		@model=Model.new
		respond_to do |format|
      if @variant.save
        format.html { redirect_to root_url, notice: 'Variant was successfully created.' }
        format.json { render action: 'show', status: :created, location: @variant }
        format.js
      else
        format.html { render action: 'new' }
        format.json { render json: @variant.errors, status: :unprocessable_entity }
        format.js
      end
    end
		# @variant.save
	 #    redirect_to services_path
	 #    flash.notice = 'Variant was successfully created'
	end

	def update
		@variant = Variant.find(params[:id])
		@variant.update(variant_params)
		redirect_to services_path
		flash.notice = 'Variant was successfully created'
	end

	private

	def variant_params
		params.require(:variant).permit(:name)
	end
end
