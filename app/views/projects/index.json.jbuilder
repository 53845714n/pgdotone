json.array!(@projects) do |project|
  json.extract! project, :id, :project_name, :description, :location, :highlighted, :active
  json.url project_url(project, format: :json)
end
