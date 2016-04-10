class AdminController < ApplicationController
	# Use devise before_filter
	#before_filter :authenticate_user!

	def index
		@users = User.all
	end

end