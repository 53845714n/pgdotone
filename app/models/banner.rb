class Banner < ActiveRecord::Base
	mount_uploader :image, ImageBannerUploader
	mount_uploader :background_image, BackgroundImageUploader
	mount_uploader :video, VideoUploader

    def set_success(format, opts)
    	self.success = true
    end

    def active_or_not
    	active ? '<i class="fa fa-power-off"></i>' : '<i class="fa fa-power-on"></i>'
    end
end
