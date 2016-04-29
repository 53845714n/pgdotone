module ApplicationHelper

	def full_title(page_title = '')
		base_title = 'Administrador - IINTEGRAL'
		if page_title.empty?
			base_title
		else
			"#{page_title} | #{base_title}"
		end
	end

	def current_image
		current_user.image.thumb
	end

	def category_name_through_id(category_id)
		@category_name = Category
							.where('id = ?', category_id)
							.pluck(:category_name)[0]
	end
end
