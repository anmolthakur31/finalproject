class VehicleServicesController < ApplicationController
		 
  
  def new
  	@servicecost = Vehicle_service.new
  	
  end
  def create
          @servicecost = Vehicle_service.new(servicecost_params)
      @servicecost.user_id=current_user.id
  @servicecost.save
  end
  def destroy 
  
      @servicecost.destroy
        flash.notice = "servicecost '#{@servicecost.title}' Deleted."
    end
  def edit
  @servicecost = Vehicle_service.find(params[:id])
end
def update
  @servicecost = Vehicle_service.find(params[:id])
  @servicecost.update(servicecost_params)
end

private

def servicecost_params
  params.require(:servicecost).permit(:basic_cost)
  
end
end
