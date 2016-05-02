json.array!(@department_models) do |department_model|
  json.extract! department_model, :id, :department_name, :description, :surface, :roof, :total_surface, :suite_bath, :active
  json.url department_model_url(department_model, format: :json)
end
