class MembersController < ApplicationController
	def show
		@user=User.find(params[:id])
	end

	def admin

		@user=User.all

	end
end
