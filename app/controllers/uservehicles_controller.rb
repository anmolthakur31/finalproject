class UservehiclesController < ApplicationController
	def new
		@uservehicle = Uservehicle.new
		@brands=Brand.all
		@vehicles= Brand.order(:id)
		authorize @uservehicle 

	end

	def edit
		@uservehicle = Uservehicle.find(params[:id])
		@brands=Brand.all
		@vehicles= Brand.order(:id)
		authorize @uservehicle
	end

	def create
		@uservehicle = Uservehicle.new(uservehicle_params)
		@uservehicle.user_id=current_user.id
		respond_to do |format|
	      if @uservehicle.save
	        format.html { redirect_to root_url, notice: 'Uservehicle was successfully created.' }
	        format.json { render action: 'show', status: :created, location: @uservehicle }
	        format.js
	      else
	        format.html { render action: 'new' }
	        format.json { render json: @uservehicle.errors, status: :unprocessable_entity }
	        format.js
	      end
	  end
		# @uservehicle.save
	 #    redirect_to services_path
	 #    flash.notice = 'Vehicle was successfully created'
	end

	def update
		@uservehicle = Uservehicle.find(params[:id])
		@uservehicle.update(uservehicle_params)
		redirect_to services_path
		flash.notice = 'Vehicle was successfully created'
	end

	private

	def uservehicle_params
		params.require(:uservehicle).permit(:manf_year,:reg_no ,:user_id, :vehicle_id, :brand_id)
	end
end
