class Banner < ActiveRecord::Base
	mount_uploader :image, ImageBannerUploader
	mount_uploader :background_image, BackgroundImageUploader
	mount_uploader :video, VideoUploader

    def set_success(format, opts)
    	self.success = true
    end
end
