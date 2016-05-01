class AdminController < ApplicationController
	# Use devise before_filter
	before_filter :authenticate_user!

	def index
		@users         = User.all.order('id DESC')
		@questions     = Question.all.where(master: false).order(order: :desc)
		@banners       = Banner.all.where(master: false).order(order: :desc)
		@categories    = Category.all
		@subcategories = Subcategory.all
		@articles      = Article.all
	end

end