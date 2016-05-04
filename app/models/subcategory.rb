class Subcategory < ActiveRecord::Base
	belongs_to :category
	has_many :articles

	validates :subcategory_name, presence: true, uniqueness: true, length: { in: 3..50 }
	validates :category_id,      presence: true
end