class AdminController < ApplicationController
	# use devise before_filter
	before_filter :authenticate_user!

	def index

	end

end