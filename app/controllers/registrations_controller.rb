class RegistrationsController < Devise::RegistrationsController
  
	def new
		redirect_to root_path
	end
	def create
    build_resource(sign_up_params)

    if resource.save
        yield resource if block_given?
        if resource.active_for_authentication?
            set_flash_message :notice, :signed_up if is_flashing_format?
            sign_up(resource_name, resource)
            respond_with resource, location: after_sign_up_path_for(resource)
        else
            set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
            expire_data_after_sign_in!
            respond_with resource, location: root_path
        end
    else
        clean_up_passwords resource
        resource.errors.full_messages.each {|x| flash[x] = x} # Rails 4 simple way
        redirect_to root_path 
    end
end
  private

 def update_resource(resource, params)
  
    if params[:password].blank? && params[:password_confirmation].blank?
      resource.update_without_password(params)
    else
     super
    end
  end

  def sign_up_params
    params.require(:user).permit(:name, :email,:phone, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email,:phone,:image, :password, :password_confirmation, :current_password)
  end

  def user_params
    params(:user).permit(:name, :email,:phone,:image)
  end

  # def params
  #   params(:user).permit( :password, :password_confirmation, :current_password)
  # end
end
 