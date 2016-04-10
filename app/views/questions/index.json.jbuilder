json.array!(@questions) do |question|
  json.extract! question, :id, :name, :answer, :active, :order
  json.url question_url(question, format: :json)
end
