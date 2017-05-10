class UserrolesController < ApplicationController
	def index
		@userroles=Userrole.all
		@userrole = Userrole.new
		authorize @userrole
	end
	def new
		@userrole = Userrole.new
		authorize @userrole
	end

	def edit
		@userrole = Userrole.find(params[:id])
		authorize @userrole
	end

	def create
		@userrole = Userrole.new(userrole_params)
		@userrole.save
	    redirect_to userroles_path
	    flash.notice = 'User Role was successfully created'
	end

	def update
		@userrole = Userrole.find(params[:id])
		@userrole.update(userrole_params)
		redirect_to userroles_path
		flash.notice = 'User Role was successfully created'
	end

	private

	def userrole_params
		params.require(:userrole).permit(:rolename)
	end
end
