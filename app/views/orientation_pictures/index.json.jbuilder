json.array!(@orientation_pictures) do |orientation_picture|
  json.extract! orientation_picture, :id, :department_model_id, :image_file_name, :image_content_type, :image_file_size
  json.url orientation_picture_url(orientation_picture, format: :json)
end
