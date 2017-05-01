class BrandsController < ApplicationController
	def new
		@brand = Brand.new
	end

	def edit
		@brand = Brand.find(params[:id])
	end

	def create
		@brand = Brand.new(brand_params)
		@brand.save
	    redirect_to services_path
	    flash.notice = 'Brand was successfully created'
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
