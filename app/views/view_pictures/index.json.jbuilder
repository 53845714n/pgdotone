json.array!(@view_pictures) do |view_picture|
  json.extract! view_picture, :id, :department_model_id, :image_file_name, :image_content_type, :image_file_size
  json.url view_picture_url(view_picture, format: :json)
end
