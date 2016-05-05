require 'file_size_validator' 
class Banner < ActiveRecord::Base
	mount_uploader :image, ImageBannerUploader
	mount_uploader :background_image, BackgroundImageUploader
	mount_uploader :video, VideoUploader

	# validates :image, presence: true
	validates :image,
		:presence => true, 
	    :file_size => { 
	      :maximum => 0.5.megabytes.to_i 
	    }

    def set_success(format, opts)
    	self.success = true
    end

    def active_or_not
    	active ? '<i class="fa fa-power-off"></i>' : '<i class="fa fa-power-on"></i>'
    end
end
