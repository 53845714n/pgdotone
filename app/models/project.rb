class Project < ActiveRecord::Base
	has_many :project_pictures, :dependent => :destroy
	mount_uploader :first_video,  VideoUploader
	mount_uploader :second_video, VideoUploader
	mount_uploader :third_video,  VideoUploader

	validates :project_name, presence: true, length: { in: 3..50 }, uniqueness: true

    def set_success(format, opts)
    	self.success = true
    end
end
