class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	    :recoverable, :rememberable, :trackable, :validatable

	# Mount the CarrierWave uploader
	mount_uploader :image, UserImageUploader

	def active_or_not
		active ? '<i class="fa fa-power-off"></i>' : '<i class="fa fa-power-on"></i>'
	end
end
