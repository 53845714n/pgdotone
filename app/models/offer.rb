require 'file_size_validator' 
class Offer < ActiveRecord::Base
	# Mount the CarrierWave uploader
	mount_uploader :image, UserImageUploader

	validates :image,
		:presence => true, 
	    :file_size => { 
	      :maximum => 0.5.megabytes.to_i 
	    }
	validates :text, presence: true, length: { in: 3..5000 }, uniqueness: true

	def active_or_not
		active ? '<i class="fa fa-power-off"></i>' : '<i class="fa fa-power-on"></i>'
	end
end
