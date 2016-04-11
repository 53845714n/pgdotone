json.array!(@banners) do |banner|
  json.extract! banner, :id, :active, :order
  json.url banner_url(banner, format: :json)
end
