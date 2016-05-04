class Category < ActiveRecord::Base
	has_many :subcategories
	validates :category_name, presence: true, uniqueness: true, length: { in: 3..50 }
	#has_many :articles
end
