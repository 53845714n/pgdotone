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
end
