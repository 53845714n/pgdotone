class DepartmentModel < ActiveRecord::Base
	has_many :plane_pictures,       :dependent => :destroy
	has_many :orientation_pictures, :dependent => :destroy
	has_many :view_pictures,        :dependent => :destroy
end	