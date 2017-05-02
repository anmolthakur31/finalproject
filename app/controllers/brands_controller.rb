class BrandsController < ApplicationController
	def new
		@brand = Brand.new
	end

	def edit
		@brand = Brand.find(params[:id])
	end

	def create
		@vehicle=Vehicle.new
		@model=Model.new
		@variant=Variant.new
		@brand = Brand.new(brand_params)

		respond_to do |format|
      if @brand.save
        format.html { redirect_to root_url, notice: 'Brand was successfully created.' }
        format.json { render action: 'show', status: :created, location: @brand }
        format.js
      else
        format.html { render action: 'new' }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
        format.js
      end
    end

		# @brand.save
	 #    redirect_to services_path
	 #    flash.notice = 'Brand was successfully created'
	end

	def update
		@brand = Brand.find(params[:id])
		@brand.update(brand_params)
		redirect_to services_path
		flash.notice = 'Brand was successfully created'
	end

	private

	def brand_params
		params.require(:brand).permit(:name)
	end
end
