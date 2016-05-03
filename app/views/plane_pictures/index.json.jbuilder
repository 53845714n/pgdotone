json.array!(@plane_pictures) do |plane_picture|
  json.extract! plane_picture, :id, :department_model_id, :image_file_name, :image_content_type, :image_file_size
  json.url plane_picture_url(plane_picture, format: :json)
end
