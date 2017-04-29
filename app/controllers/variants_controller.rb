class VariantsController < ApplicationController
		def new
		@variant = Variant.new
	end

	def edit
		@variant = Variant.find(params[:id])
	end

	def create
		@variant = Variant.new(variant_params)
		@variant.save
	    redirect_to services_path
	    flash.notice = 'Variant was successfully created'
	end

	def update
		@variant = Variant.find(params[:id])
		@variant.update(variant_params)
		redirect_to services_path
		flash.notice = 'Variant was successfully created'
	end

	private

	def variant_params
		params.require(:variant).permit(:name, :model_id)
	end
end
