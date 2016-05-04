class Article < ActiveRecord::Base
	# belongs_to :category
	belongs_to :subcategory

	validates :article_name, presence: true, uniqueness: true, length: { in: 3..50 }
	validates :description, presence: true, length: { in: 3..10000 }
	validates :subcategory_id, presence: true
end