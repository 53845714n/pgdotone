class ServiceController < ApplicationController
	def index
		@categories    = Category.all
		@subcategories = Subcategory.where("category_id = ?", Category.first.id)

		@articles      = Article.where("subcategory_id = ?", Subcategory.first.id)
	end

	def show
		@subcategory = Subcategory.find_by("id = ?", params[:trip][:subcategory_id])
		@article     = Article.find_by("id = ?", params[:trip][:article_id])
	end

	def update_subcategories
		@subcategories = Subcategory.where("category_id = ?", params[:category_id])
		respond_to do |format|
			format.js
		end
	end

	def update_articles
		@articles      = Article.where("subcategory_id = ?", params[:subcategory_id])
		respond_to do |format|
			format.js
		end
	end
end
