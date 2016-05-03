class ViewPicture < ActiveRecord::Base
	belongs_to :department_model
	has_attached_file :image,
	    :path => ":rails_root/public/images/:id/:filename",
	    :url  => "/images/:id/:filename"

	do_not_validate_attachment_file_type :image
end
