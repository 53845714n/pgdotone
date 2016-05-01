json.array!(@offers) do |offer|
  json.extract! offer, :id, :image, :text, :active, :order, :master
  json.url offer_url(offer, format: :json)
end
