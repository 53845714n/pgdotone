json.array!(@project_pictures) do |project_picture|
  json.extract! project_picture, :id, :project_id, :image_file_name, :image_content_type, :image_file_size
  json.url project_picture_url(project_picture, format: :json)
end
