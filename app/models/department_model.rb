class DepartmentModel < ActiveRecord::Base
	has_many :plane_pictures,       :dependent => :destroy
	has_many :orientation_pictures, :dependent => :destroy
	has_many :view_pictures,        :dependent => :destroy

	validates :department_name, presence: true, length: { in: 3..50 }, uniqueness: true
end	