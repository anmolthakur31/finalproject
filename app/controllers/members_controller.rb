class MembersController < ApplicationController
	def show
		@user=User.find(params[:id])
	end

	def admin
		@users=User.all
	end
end
