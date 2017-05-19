class ApplicationController < ActionController::Base
 	 protect_from_forgery with: :exception
    # after_action :check_xhr
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  before_action :store_current_location, :unless => :devise_controller?
    
    def after_sign_in_path_for(resource)
      if (current_user.userrole_id==1 || current_user.userrole_id==2)
     admin_path(resource) 
      else     
     member_path(resource)
      end
    end

    def after_sign_up_path_for(resource)    
     member_path(resource)
    end

    private

    def store_current_location
      store_location_for(:user, request.url)
    end
 
  private
 
    def user_not_authorized
      flash[:warning] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end

# def check_xhr
#     if request.xhr?
#       response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
#       response.headers["Pragma"] = "no-cache"
#       response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
#     end
#  end
end
