class Question < ActiveRecord::Base

	validates :name, uniqueness: true, presence: true, length: { in: 3..50 }
	validates :answer, presence: true, length: { in: 3..5000 }

	def active_or_not
		active ? '<i class="fa fa-power-off"></i>' : '<i class="fa fa-power-on"></i>'
	end
	
end