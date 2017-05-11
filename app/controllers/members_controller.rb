class MembersController < ApplicationController
	def show
		@user=User.find(params[:id])

		authorize @user
	end

	def admin

		@user=User.new
		@users=User.all
		# authorize @user
	end
		
end
