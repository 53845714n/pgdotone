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
		Category.where('id = ?', category_id)
				.pluck(:category_name)[0]
	end

	def subcategory_name_through_id(subcategory_id)
		Subcategory.where('id = ?', subcategory_id)
					.pluck(:subcategory_name)[0]
	end

	def first_project_picture(project_id)
		ProjectPicture.where('project_id = ?', project_id).first
	end
end
