class Offer < ActiveRecord::Base
	# Mount the CarrierWave uploader
	mount_uploader :image, UserImageUploader

	def active_or_not
		active ? '<i class="fa fa-power-off"></i>' : '<i class="fa fa-power-on"></i>'
	end
end
