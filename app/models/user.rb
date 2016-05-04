class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

	# Mount the CarrierWave uploader
	mount_uploader :image, UserImageUploader

	validate :avatar_size_validation

	# Validations
	# email is already validated by Devise 
	validates :email,                 
		format: { 
			with: %r{\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z}, 
			message: 'El correo ingresado no tiene el formato indicado' 
		},
		uniqueness: true
	validates :username,              presence: true, length: { in: 3..50 }, uniqueness: true
	validates :fullname,              presence: true, length: { in: 3..50 }
	validates :password,              presence: true
	validates :password_confirmation, presence: true

	def active_or_not
		active ? '<i class="fa fa-power-off"></i>' : '<i class="fa fa-power-on"></i>'
	end

	private

	def avatar_size_validation
		errors[:image] << " debe pesar menos de 5MB" if image.size > 5.megabytes
	end
end
